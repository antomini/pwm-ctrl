#include "xparameters.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "AXIreg.h"

// AXIreg_0 base address definition
#define AXI_REG0_BASEADDR 	XPAR_AXIREG_0_S00_AXI_BASEADDR
// AXIreg offsets redefined for their use
#define AXI_DUTY_REG 		AXIREG_S00_AXI_SLV_REG0_OFFSET
#define AXI_TOPMASK_REG 	AXIREG_S00_AXI_SLV_REG1_OFFSET
#define AXI_SYNCFG_REG 		AXIREG_S00_AXI_SLV_REG2_OFFSET
#define AXI_PWMCFG_REG 		AXIREG_S00_AXI_SLV_REG3_OFFSET

// Setup of the PWM controller
#define TOP_OFFSET		0
#define MASK_OFFSET		16
#define SHIFTER_OFFSET	8
#define RESET_BIT		0
#define SAWTRI_BIT		1
void setupPWM(void);

// AXIreg_1 base address definition
#define AXI_REG1_BASEADDR 	XPAR_AXIREG_1_S00_AXI_BASEADDR
// AXIreg offsets redefined for their use
#define AXI_KP_REG			AXIREG_S00_AXI_SLV_REG0_OFFSET
#define AXI_KI_REG			AXIREG_S00_AXI_SLV_REG1_OFFSET
#define AXI_CTRL_REG 		AXIREG_S00_AXI_SLV_REG2_OFFSET
#define AXI_REF_REG			AXIREG_S00_AXI_SLV_REG3_OFFSET

// DSP Control Register bits
#define RS_OFFSET 31
#define	POSTSHIFT_OFFSET 0
// Setup of the DSP
void setupDsp(void);

// XADC base address definition and register offsets
#define AXI_XADC_BASE_ADDRESS 0x7FFF8000U
// XADC register offset
#define VAUX1_OFFSET 0x244U
#define VAUX9_OFFSET 0x264U
#define VAUX_OFFSET  VAUX9_OFFSET
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

// GIC parameters to use with the drivers
#define INTC_DEVICE_INT_ID 61
// GIC setup function
void setupGIC(void);
// Device Driver Interrupt Handlers
void DeviceDriverHandler(void *CallBackRef);

static uint16_t adc = 0;
static uint16_t ref = 0x777;
static int16_t err = 0;

static uint16_t kp = 56590; //1.727x2^15
static uint16_t kiT = 16685; //0.5092x2^15
static int32_t x = 0; //integrator input
static int32_t acc = 0; //integrator output
//static int32_t acc_max = 0xFFFF;
//static int32_t acc_min = 0;
//static int8_t sat = 0; // saturation flag

static int32_t y = 0; // controller output
static int32_t y_max = 0xFFFF;
static int32_t y_min = 0;

static uint32_t duty = 0;

int main() {

	setupGIC();
	setupInterruptXADC();

	setupPWM();
	setupDsp();

	//uint16_t test_duty = 0xFF;
	//uint16_t test_adc = 0;
	while (1) {
		//test_adc = XADC_mRead(AXI_XADC_BASE_ADDRESS, VAUX_OFFSET);
		//AXIREG_mWriteReg(AXI_REG0_BASEADDR, AXI_DUTY_REG, test_duty);
	}
}

void DeviceDriverHandler(void *CallBackRef){
	u32 reg = XADC_mRead(AXI_XADC_BASE_ADDRESS, IPISR_OFFSET);
	XADC_mWrite(AXI_XADC_BASE_ADDRESS, IPISR_OFFSET, reg);

	adc = XADC_mRead(AXI_XADC_BASE_ADDRESS, VAUX_OFFSET) >> 4;

	err = (int16_t) (ref - adc);
	x = (kiT*err)>>15;
	acc = acc + x;

	/* Anti-Windup Integrator
	if ((sat < 0 && err < 0)||(sat > 0 && err > 0)) {
		// do nothing
	}
	else {
		acc = acc + x;
		if (acc < acc_min){
			acc = acc_min;
			sat = -1;
		}
		else if (acc > acc_max) {
			acc = acc_max;
			sat = 1;
		}
	}
	*/

	y = acc + ((kp*err) >> 15);
	if (y < y_min) {
		y = y_min;
	}
	else if (y > y_max) {
		y = y_max;
	}

	duty = (uint32_t) y;
	AXIREG_mWriteReg(AXI_REG0_BASEADDR, AXI_DUTY_REG, duty);
}

void setupPWM(void){
	u16 top = 0xFFF;
	u16 mask = 0xFFF;
	u16 delay = 0x0;
	u16 shift = 0x0;

	u32 topmask = (u32) top | (mask << MASK_OFFSET);
	u32 syncfg = (u32) delay + (shift << 8);
	u32 pwmcfg = (1 << RESET_BIT) | (0 << SAWTRI_BIT);


	AXIREG_mWriteReg(AXI_REG0_BASEADDR, AXI_SYNCFG_REG, syncfg);
	AXIREG_mWriteReg(AXI_REG0_BASEADDR, AXI_PWMCFG_REG, pwmcfg);
	AXIREG_mWriteReg(AXI_REG0_BASEADDR, AXI_TOPMASK_REG, topmask);
}

void setupDsp(void){
	u32 reg = 0;
	AXIREG_mWriteReg(AXI_REG1_BASEADDR, AXI_REF_REG, ref);
	AXIREG_mWriteReg(AXI_REG1_BASEADDR, AXI_KP_REG, kp);
	AXIREG_mWriteReg(AXI_REG1_BASEADDR, AXI_KI_REG, kiT);

	reg |= (1 << RS_OFFSET) | (15 << POSTSHIFT_OFFSET);
	AXIREG_mWriteReg(AXI_REG1_BASEADDR, AXI_CTRL_REG, reg);
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
