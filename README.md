# avr-atmega328p-arduinoProgrammer-setup

All files (Makefile, first program) needed to setup linux console (I use Ubuntu) and avrdude to program an atmega328p chip attached to an Arduino.

Bypasses Arduino IDE abstraction and now you can code using an avr library. 

STEPS TO SETUP

1. Install AVR-GCC Toolchain if you haven't already. This can be done in console with the command
   " sudo apt-get install binutils gcc-avr avr-libc uisp avrdude flex byacc bison "
   
2. Have a directory contain the ledTest.c file and the Makefile. The Makefile compiles the .c file to .elf, and then converts it to an avrdude 
   readable hex file. In the Makefile you can notice the device configuration/specification. This is IMPORTANT. Make sure the device name
   is the correct chip that you have with you. In my case, I was using an Arduino to program the Atmega328p chip that was mounted onto it, 
   so avr-gcc needed me to write -mmcu=atmega328p, as seen in the makefile.
   
3. Simply typing "make" in the directory creates the hex file. Any errors means you have an issue with the .c program written (a human error), or a avr-gcc 
    compilation setting is wrong in the makefile.
    
4. Typing "make flash" will start up avrdude with the correct interface/target selected, and -P must be the correct usb port you have the
    device plugged into. In my case, it was /dev/ttyACM0. You can figure this out by typing dmesg when plugging in or out the Arduino. 
    
    I sometimes needed to have permission to use the port, so I had to type in 
    
    "sudo chmod a+rw /dev/ttyACM0"
    
    

   
