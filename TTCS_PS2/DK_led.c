#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "PS2_keyboard_ip.h"
#include "PmodOLED.h"
#include "xgpio.h"
#include "xuartlite.h"
#include "xparameters.h"
#include "xil_io.h"
#include"sleep.h"
XGpio_Config *gpio_config;
XGpio gpio;
XUartLite_Config *uart_config;
XUartLite uart;
PmodOLED oled;

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
	XGpio_SetDataDirection(&gpio, 1, 0x0);
	XGpio_SetDataDirection(&gpio, 2, 0x0);
}
void display_che_do(PmodOLED *oled, u32 data) {
    char dataBuffer[16];
    if(data == '1' || data == '2' || data == '3' || data == '4' || data == '5'){
    	 sprintf(dataBuffer, "Che do LED: %c", data);
    	 OLED_SetCursor(oled, 0, 2); // Hiển thị ở dòng 2
    	 OLED_PutString(oled, dataBuffer);
		// Cập nhật màn hình
		OLED_Update(oled);
    } else {
    	sprintf(dataBuffer, "Nhap sai: %c !", data);
    	OLED_SetCursor(oled, 0, 2); // Hiển thị ở dòng 2
	    OLED_PutString(oled, dataBuffer);
	    // Cập nhật màn hình
	    OLED_Update(oled);
	    XGpio_DiscreteWrite(&gpio, 1, 0x00);
	    XGpio_DiscreteWrite(&gpio, 2, 0x800);
	    sleep(1);
	    XGpio_DiscreteWrite(&gpio, 2, 0x00);
	    sleep(1);
    }

}

int main()
{
    init_platform();
    gpio_init();
    uart_init();
    // Khởi tạo OLED
        OLED_Begin(&oled, XPAR_PMODOLED_0_AXI_LITE_GPIO_BASEADDR, XPAR_PMODOLED_0_AXI_LITE_SPI_BASEADDR, 0, 0);

        // Xóa màn hình ban đầu
        OLED_ClearBuffer(&oled);
        OLED_Clear(&oled);

        // Hiển thị thông tin ban đầu
        OLED_SetCursor(&oled, 5, 0);
        OLED_PutString(&oled, "TTCS 2");
        OLED_Update(&oled);
        sleep(3); // Đợi 3 giây
    while(1){
    	u32 data = Xil_In32(XPAR_PS2_KEYBOARD_IP_0_S00_AXI_BASEADDR);
    	display_che_do(&oled, data);
    	if(data == '1'){
    	XGpio_DiscreteWrite(&gpio, 1, 0x0F);
    	XGpio_DiscreteWrite(&gpio, 2, 0x249);//4 đèn RGB sáng Blue
    	} else if (data == '2'){
		XGpio_DiscreteWrite(&gpio, 1, 0x00);
		XGpio_DiscreteWrite(&gpio, 2, 0x000);
    	} else if (data == '3'){
		XGpio_DiscreteWrite(&gpio, 1, 0x0F);
		XGpio_DiscreteWrite(&gpio, 2, 0xFFF);//4 đèn RGB sáng white
		sleep(1);
		XGpio_DiscreteWrite(&gpio, 1, 0x00);
		XGpio_DiscreteWrite(&gpio, 2, 0x000);
		sleep(1);
    	}else if (data == '4'){
    		XGpio_DiscreteWrite(&gpio, 1, 0x08);
    		XGpio_DiscreteWrite(&gpio, 2, 0x00);
    		sleep(1);
    		XGpio_DiscreteWrite(&gpio, 1, 0x04);
    		sleep(1);
    		XGpio_DiscreteWrite(&gpio, 1, 0x02);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 1, 0x01);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 1, 0x00);
			XGpio_DiscreteWrite(&gpio, 2, 0x02);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 2, 0x10);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 2, 0x80);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 2, 0x400);
			sleep(1);
    	} else if (data == '5'){
    		XGpio_DiscreteWrite(&gpio, 1, 0x00);
			XGpio_DiscreteWrite(&gpio, 2, 0x800);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 2, 0x100);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 2, 0x20);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 2, 0x04);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 1, 0x01);
			XGpio_DiscreteWrite(&gpio, 2, 0x00);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 1, 0x02);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 1, 0x04);
			sleep(1);
			XGpio_DiscreteWrite(&gpio, 1, 0x08);
			sleep(1);
    	}

    	usleep(100000);
    }
    cleanup_platform();
    return 0;
}
