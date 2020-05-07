hex:
	avr-gcc -Os -DF_CPU=8000000 -mmcu=atmega328p -c led_flash.c
	avr-gcc -DF_CPU=8000000 -mmcu=atmega328p -o led_flash.elf led_flash.o
	avr-objcopy -O ihex led_flash.elf led_flash.hex
	rm led_flash.o
	rm led_flash.elf



flash:
	avrdude -c arduino -p  m328p -P /dev/ttyACM0 -U flash:w:led_flash.hex
