#include "xparameters.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "AXIreg.h"
#include <stdbool.h>

// >>> DPWM CONFIGURATION >>>
// AXIreg_0 base address definition
#define AXI_REG0_BASEADDR 		XPAR_AXIREG_0_S00_AXI_BASEADDR
// AXIreg offsets redefined for their use
#define AXI_CMP_REG 			AXIREG_S00_AXI_SLV_REG0_OFFSET
#define AXI_MAX_REG 			AXIREG_S00_AXI_SLV_REG1_OFFSET
#define AXI_FREEACQ_REG 		AXIREG_S00_AXI_SLV_REG2_OFFSET
#define AXI_PWMCFG_REG 			AXIREG_S00_AXI_SLV_REG3_OFFSET

// DPWM configuration register
#define PWM_RESETN_BIT		0
#define PWM_SAWTRI_BIT		1
#define PWM_ASYNC_BIT		2
#define UPD_PEAK_BIT		3
#define UPD_VALLEY_BIT		4
#define ACQ_FREE_BIT		5
#define ACQ_MAX_BIT			6
#define ACQ_CMP_BIT 		7
#define ACQ_HALF_BIT		8
#define ACQ_ZERO_BIT		9
#define EN_SNOOP_BIT		10
#define DSP_START_BIT		11
#define DSP_DIRECTN_BIT		12

void setupPWM(void);
// <<< DPWM CONFIGURATION <<<

// >>> DSP CONFIGURATION >>>
// AXIreg_1 base address definition
#define AXI_REG1_BASEADDR 	XPAR_AXIREG_1_S00_AXI_BASEADDR
// AXIreg offsets redefined for their use
#define AXI_KP_REG			AXIREG_S00_AXI_SLV_REG0_OFFSET
#define AXI_KI_REG			AXIREG_S00_AXI_SLV_REG1_OFFSET
#define AXI_CONFIG_REG 		AXIREG_S00_AXI_SLV_REG2_OFFSET

//DSP configuration register
#define SHIFT_OFFSET 	28

void setupDsp(void);
// <<< DSP CONFIGURATION <<<

// >>> ADC CONFIGURATION >>>
// XADC base address definition and register offsets
#define AXI_XADC_BASE_ADDRESS 0x7FFF8000U
// XADC register offset
#define VAUX1_OFFSET 0x244U
#define VAUX5_OFFSET 0x254U
#define VAUX9_OFFSET 0x264U
#define VAUX13_OFFSET 0x274U
#define VAUX_A_OFFSET  VAUX5_OFFSET
#define VAUX_B_OFFSET  VAUX13_OFFSET
#define GIER_OFFSET 0x5CU
#define IPISR_OFFSET 0x60U
#define IPIER_OFFSET 0x68U

// GIER Bits
#define GIER 31

// IPIER Bits
#define EOC 5

// Inline functions to write and read the XADC registers
#define XADC_mRead(BaseAddress, RegOffset) \
	Xil_In32(BaseAddress+RegOffset)
#define XADC_mWrite(BaseAddress, RegOffset, Value) \
	Xil_Out32(BaseAddress+RegOffset, Value)

// XADC interrupt setup function
void setupInterruptXADC(void);
// <<< ADC CONFIGURATION <<<

// >>> GIC CONFIGURATION >>>
// GIC parameters to use with the drivers
#define INTC_DEVICE_INT_ID 	61
// GIC setup function
void setupGIC(void);
// Device Driver Interrupt Handlers
void DeviceDriverHandler(void *CallBackRef);
// <<< GIC CONFIGURATION <<<

static uint16_t adc = 0;
static uint16_t ref = 1000;
static int16_t err = 0;

static uint16_t kp = 15253; 	//x2^14
static uint16_t kiT = 4495; 	//x2^14
static uint8_t shift = 14;
static int32_t xi = 0; 			//integrator input
static int32_t yi = 0; 			//integrator output
static int32_t yold = 0; 		//accumulator output
static int32_t acc_max = 0x0FFF;
static int32_t acc_min = 0;

static int32_t y = 0; // controller output
static int32_t y_max = 0xFFFF;
static int32_t y_min = 0;

static bool open = 1;

int main() {
	bool switchSW = 0;

	setupGIC();
	setupInterruptXADC();

	setupPWM();
	setupDsp();

	//uint16_t test_duty = 0xFF;
	//uint16_t test_adc = 0;
	while (1) {
		if (switchSW == true) {
			ref = 2000;
		}
		else {
			ref = 1000;
		}
	}
}

void DeviceDriverHandler(void *CallBackRef){
	u32 reg = XADC_mRead(AXI_XADC_BASE_ADDRESS, IPISR_OFFSET);
	//XADC_mWrite(AXI_XADC_BASE_ADDRESS, IPISR_OFFSET, reg);

	adc = XADC_mRead(AXI_XADC_BASE_ADDRESS, VAUX_A_OFFSET) >> 4;

	// >>> SOFTWARE CONTROL ALGORITHM >>>
	if(open==1) {
		y = ref;
	}
	else {
		err = (int16_t) (ref - adc);
		xi = kiT*err >> shift;
		yi = yold + xi;
		y = yi + (kp*err >> shift);
	}
	// <<< SOFTWARE CONTROL ALGORITHM <<<

	// >>> LIMITER >>>
	if (y < y_min) {
		y = y_min;
	}
	else if (y > y_max) {
		y = y_max;
	}
	// <<< LIMITER <<<

	AXIREG_mWriteReg(AXI_REG0_BASEADDR, AXI_CMP_REG, y);

	// >>> UPDATE VARIABLES >>>
	// Saturation
	if ((yi <= acc_max) && (yi >= acc_min)) {
		yold = yi;
	}
	else {
	}
	// <<< UPDATE VARIABLES <<<

	// >>> CLEAR THE INTERRUPT BIT >>>
	XADC_mWrite(AXI_XADC_BASE_ADDRESS, IPISR_OFFSET, reg);
	// <<< CLEAR THE INTERRUPT BIT <<<
}

void setupPWM(void){
	u16 max = 0xFFF;

	u32 pwmcfg = (1 << PWM_RESETN_BIT) | (0 << PWM_SAWTRI_BIT) | (0 << PWM_ASYNC_BIT)
					| (1 << UPD_PEAK_BIT) | (1 << UPD_VALLEY_BIT)
					| (0 << ACQ_FREE_BIT) | (0 << ACQ_MAX_BIT)
					| (0 << ACQ_CMP_BIT) | (1 << ACQ_HALF_BIT) | (0 << ACQ_ZERO_BIT)
					| (1 << EN_SNOOP_BIT)
					| (1 << DSP_START_BIT) | (1 << DSP_DIRECTN_BIT) ;

	AXIREG_mWriteReg(AXI_REG0_BASEADDR, AXI_PWMCFG_REG, pwmcfg);
	AXIREG_mWriteReg(AXI_REG0_BASEADDR, AXI_MAX_REG, max);
}


void setupDsp(void){
	u32 reg = 0;
	AXIREG_mWriteReg(AXI_REG1_BASEADDR, AXI_KP_REG, kp);
	AXIREG_mWriteReg(AXI_REG1_BASEADDR, AXI_KI_REG, kiT);

	reg |= (shift << SHIFT_OFFSET);
	AXIREG_mWriteReg(AXI_REG1_BASEADDR, AXI_CONFIG_REG, reg);
}


void setupGIC(void){
	static XScuGic InterruptController; // Instance of the Interrupt Controller
	static XScuGic_Config *GicConfig; // The configuration parameters of the controller

	GicConfig = XScuGic_LookupConfig(XPAR_SCUGIC_0_DEVICE_ID);
	XScuGic_CfgInitialize(&InterruptController, GicConfig, GicConfig->CpuBaseAddress);

	/*
	 * There is one (standard) interrupt pin in the Cortex-A9 CPU
	 * and a master interrupt handler that execute when receiving ANY interrupt request.
	 * the following function register a handler for a specific exception.
	 * Since the interrupt controller is non-vectored
	 * the cpu should interrogate the interrupt controller to see what has triggered the IRQ.
	 * This is what the XScuGic_InterruptHandler does.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_ExceptionHandler)XScuGic_InterruptHandler, &InterruptController);
	Xil_ExceptionEnable();

	//Connect a handler to the device id
	XScuGic_Connect(&InterruptController, INTC_DEVICE_INT_ID,
			(Xil_ExceptionHandler)DeviceDriverHandler, (void *)&InterruptController);
	//Enable the device id interrupt
	XScuGic_Enable(&InterruptController, INTC_DEVICE_INT_ID);
}

void setupInterruptXADC(void){
	u32 reg = 0;
	reg = XADC_mRead(AXI_XADC_BASE_ADDRESS, GIER_OFFSET);
	reg |= (1 << GIER);
	XADC_mWrite(AXI_XADC_BASE_ADDRESS, GIER_OFFSET, reg);

	reg = XADC_mRead(AXI_XADC_BASE_ADDRESS, IPIER_OFFSET);
	reg |= (1 << EOC);
	XADC_mWrite(AXI_XADC_BASE_ADDRESS, IPIER_OFFSET, reg);
}
