#include "xparameters.h"
#include "xil_printf.h"
#include "xgpio.h"


// Get device IDs from xparameters.h
#define PWM_ID XPAR_AXI_GPIO_PWM_DEVICE_ID
#define PWM_CHANNEL 1
#define OUTPUT_DIR 0

#define AXI_XADC_BASE_ADDRESS 0x7FFF8000U
#define VAUX1_OFFSET 0x244U

#define XADC_mRead(BaseAddress, RegOffset) \
	Xil_In32(BaseAddress+RegOffset)

int main() {
	XGpio_Config *cfg_ptr;
	XGpio pwm_device;
	u16 duty = 0x00FF;
	u16 top = 0x0FFF;

	u32 buffer = 0;
	u32 adc = 0;

	xil_printf("Entered function main\r\n");

	// Initialize Pwm Device
	cfg_ptr = XGpio_LookupConfig(PWM_ID);
	XGpio_CfgInitialize(&pwm_device, cfg_ptr, cfg_ptr->BaseAddress);

	// Set Pwm Tristate
	XGpio_SetDataDirection(&pwm_device, PWM_CHANNEL, OUTPUT_DIR);



	while (1) {
		adc = XADC_mRead(AXI_XADC_BASE_ADDRESS, VAUX1_OFFSET);
		buffer = ((u32) top << 16) + duty;
		XGpio_DiscreteWrite(&pwm_device, PWM_CHANNEL, buffer);
	}
}
