hex:
	avr-gcc -Os -DF_CPU=16000000 -mmcu=atmega328p -c ledTest.c
	avr-gcc -DF_CPU=16000000 -mmcu=atmega328p -o ledTest.elf ledTest.o
	avr-objcopy -O ihex ledTest.elf ledTest.hex
	rm ledTest.o
	rm ledTest.elf



flash:
	avrdude -c arduino -p  m328p -P /dev/ttyACM0 -U flash:w:ledTest.hex
