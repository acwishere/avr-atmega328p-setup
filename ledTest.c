//FIRST AVR PROGRAM (On Arduino) 
//FLASHES LED



#include <avr/io.h>
#include <util/delay.h>



int main(void){
DDRB |= 0B00100000;


while(1){


PORTB |= 0B00100000;

_delay_ms(500);

PORTB &= 0B11011111;

_delay_ms(500);

}








}
