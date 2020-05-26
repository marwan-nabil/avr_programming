@echo off
rem		project path prefix
set prefix=W:\avr_programming

rem		compiler and linker options and parameters
set c_flags=-g -Wall -mcall-prologues -mmcu=atmega32 -Os
set ld_flags=-Wl,-gc-sections -Wl,-relax
set c_files=%prefix%\code\*.c

IF NOT EXIST %prefix%\build mkdir %prefix%\build
pushd %prefix%\build

avr-gcc %c_flags% %ld_flags% %c_files% -o main.out
avr-objcopy -R .eeprom -O ihex main.out main.hex
popd