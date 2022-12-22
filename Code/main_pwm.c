#include "xparameters.h"
#include "xil_printf.h"
#include "xgpio.h"

// Get device IDs from xparameters.h
#define PWM_ID XPAR_AXI_GPIO_PWM_DEVICE_ID
#define PWM_CHANNEL 1
#define OUTPUT_DIR 0

int main() {
	XGpio_Config *cfg_ptr;
	XGpio pwm_device;
	u16 duty = 0x0FFF;
	u16 top = 0xEFFF;
	u32 buffer = 0;

	xil_printf("Entered function main\r\n");

	// Initialize Pwm Device
	cfg_ptr = XGpio_LookupConfig(PWM_ID);
	XGpio_CfgInitialize(&pwm_device, cfg_ptr, cfg_ptr->BaseAddress);

	// Set Pwm Tristate
	XGpio_SetDataDirection(&pwm_device, PWM_CHANNEL, OUTPUT_DIR);

	while (1) {
		buffer = ((u32) top << 16) + duty;
		XGpio_DiscreteWrite(&pwm_device, PWM_CHANNEL, buffer);
	}
}
