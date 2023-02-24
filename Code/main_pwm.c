#include "xparameters.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "AXIreg.h"

// AXIreg base address definition
#define AXI_REG_BASEADDR XPAR_AXIREG_0_S00_AXI_BASEADDR
// AXIreg offsets redefined for their use
#define AXI_DUTY_REG AXIREG_S00_AXI_SLV_REG0_OFFSET
#define AXI_TOPMASK_REG AXIREG_S00_AXI_SLV_REG1_OFFSET
#define AXI_CFG_REG AXIREG_S00_AXI_SLV_REG2_OFFSET
//#define AXI_REG3 AXIREG_S00_AXI_SLV_REG3_OFFSET

// XADC base address definition and register offsets
#define AXI_XADC_BASE_ADDRESS 0x7FFF8000U
// XADC register offset
#define VAUX1_OFFSET 0x244U
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

// Setup of the PWM controller
void setupPWM(void);

// GIC parameters to use with the drivers
#define INTC_DEVICE_INT_ID 61
// Device Driver Interrupt Handlers
void DeviceDriverHandler(void *CallBackRef);

XScuGic InterruptController; // Instance of the Interrupt Controller
static XScuGic_Config *GicConfig; // The configuration parameters of the controller

static u32 adc = 0;

int main() {
	setupPWM();

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

	setupInterruptXADC();

	u16 duty = 0x00FF;

	while (1) {
		//adc = XADC_mRead(AXI_XADC_BASE_ADDRESS, VAUX1_OFFSET);
		AXIREG_mWriteReg(AXI_REG_BASEADDR, AXI_DUTY_REG, duty);
	}
}

void DeviceDriverHandler(void *CallBackRef){
	u32 reg = XADC_mRead(AXI_XADC_BASE_ADDRESS, IPISR_OFFSET);
	XADC_mWrite(AXI_XADC_BASE_ADDRESS, IPISR_OFFSET, reg);
	adc = XADC_mRead(AXI_XADC_BASE_ADDRESS, VAUX1_OFFSET);
}

void setupPWM(void){
	u16 top = 0x0FFF;
	u16 mask = 0x0FFF;
	u16 delay = 0x0;
	u16 shift = 0x2;

	u32 topmask = (u32) top + (mask << 16);
	u32 cfg = (u32) delay + (shift << 8);

	AXIREG_mWriteReg(AXI_REG_BASEADDR, AXI_TOPMASK_REG, topmask);
	AXIREG_mWriteReg(AXI_REG_BASEADDR, AXI_CFG_REG, cfg);
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
