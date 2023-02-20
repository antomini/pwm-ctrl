#include "xparameters.h"
#include "xil_printf.h"
#include "xil_io.h"
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
#define VAUX1_OFFSET 0x244U

#define XADC_mRead(BaseAddress, RegOffset) \
	Xil_In32(BaseAddress+RegOffset)

int main() {
	u16 duty = 0x00FF;
	u16 top = 0x0FFF;
	u16 mask = 0x0FFF;
	u16 delay = 0x8;
	u16 shift = 0x2;

	u32 topmask = (u32) top + (mask << 16);
	u32 cfg = (u32) delay + (shift << 8);

	AXIREG_mWriteReg(AXI_REG_BASEADDR, AXI_TOPMASK_REG, topmask);
	AXIREG_mWriteReg(AXI_REG_BASEADDR, AXI_CFG_REG, cfg);

	u32 adc = 0;

	xil_printf("Main\r\n");

	while (1) {
		adc = XADC_mRead(AXI_XADC_BASE_ADDRESS, VAUX1_OFFSET);
		AXIREG_mWriteReg(AXI_REG_BASEADDR, AXI_DUTY_REG, duty);
	}
}
