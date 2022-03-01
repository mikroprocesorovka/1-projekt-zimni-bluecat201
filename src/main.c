#include "stm8s.h"
#include "milis.h"
#include "stm8_hd44780.h"

#include "delay.h"
#include <stdio.h>
#define _ISOC99_SOURCE
#define _GNU_SOURCE


void setup(void)
{
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);      // taktovani MCU na 16MHz
    lcd_init(); //inicializace LCD
    init_milis(); //inicializace mmilisu
    GPIO_Init(GPIOE, GPIO_PIN_3,GPIO_MODE_IN_FL_NO_IT); // nastavíme PE3 jako vstup (fototranzistor)
    GPIO_Init(GPIOE, GPIO_PIN_4,GPIO_MODE_IN_FL_NO_IT); // nastavíme PE4 jako vstup (tlačítko)

}


int main(void)
{
    uint32_t time = 0; //inicializace proměnných
    uint8_t tlacitko = 0;
    uint8_t tlacitko1 = 0;
    uint8_t start = 0;
    uint8_t temp = 0;
    char text[32];
    setup();


    while (1) {
        if(GPIO_ReadInputPin(GPIOE,GPIO_PIN_3)==RESET){ // kontrolujeme zda je senzor laseru sepnutý
            if(tlacitko == 0){
                start = 0;
            }
            tlacitko = 1;
        }else{
            tlacitko = 0;

        }

        if(GPIO_ReadInputPin(GPIOE,GPIO_PIN_4)==RESET){ // kontrolujeme zda je tlačítko stisknuté
            if(tlacitko1 == 0){
                time = milis();
                start = 1;
                lcd_clear();
            }
            tlacitko1 = 1;
        }else{
            tlacitko1 = 0;
        }

        if(start == 1){
            temp = (milis() - time)/1000;
            lcd_gotoxy(0, 0);
            sprintf(text,"Cas = %1u s",temp);
            lcd_puts(text);
        }

    }
}

/*-------------------------------  Assert -----------------------------------*/
#include "__assert__.h"
