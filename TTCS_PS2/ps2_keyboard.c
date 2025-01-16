#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "PS2_keyboard_ip.h"
#include "xgpio.h"
#include "xuartlite.h"
#include "xparameters.h"
#include "xil_io.h"
#include"sleep.h"
XGpio_Config *gpio_config;
XGpio gpio;
XUartLite_Config *uart_config;
XUartLite uart;

void uart_init(){
    uart_config = XUartLite_LookupConfig(XPAR_UARTLITE_0_DEVICE_ID);
    int status = XUartLite_CfgInitialize(&uart, uart_config, uart_config->RegBaseAddr);
    if(status == XST_SUCCESS)
        xil_printf("UART INIT SUCCESSFUL\n");
    else
        xil_printf("UART INIT FAILED\n");

    while(XUartLite_IsSending(&uart));
    XUartLite_ResetFifos(&uart);

    status = XUartLite_SelfTest(&uart);
    if(status == XST_SUCCESS)
        xil_printf("UART SELF TEST SUCCESSFUL\n");
    else
        xil_printf("UART SELF TEST FAILED\n");

    while(XUartLite_IsSending(&uart));
    XUartLite_ResetFifos(&uart);
}
void gpio_init() {
	gpio_config = XGpio_LookupConfig(XPAR_AXI_GPIO_0_DEVICE_ID);
	int status = XGpio_CfgInitialize(&gpio, gpio_config,
			gpio_config->BaseAddress);
	if (status == XST_SUCCESS)
		xil_printf("GPIO INIT SUCCESSFUL\n");
	else
		xil_printf("GPIO INIT FAILED\n");
}

int main()
{
    init_platform();
    gpio_init();
    uart_init();
    while(1){
    	u32 data = Xil_In32(XPAR_PS2_KEYBOARD_IP_0_S00_AXI_BASEADDR);
    	xil_printf("Ky tu nhap: %c\n", data);
    	sleep(3);
    }
    cleanup_platform();
    return 0;
}
