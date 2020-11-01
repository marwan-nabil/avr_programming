@echo off
rem     builds the output image main.hex from source files.


rem		compiler and linker options and parameters.
set CC_FLAGS=-g -Wall -mcall-prologues -mmcu=atmega32 -Os
set LD_FLAGS=-Wl,-gc-sections -Wl,-relax
set C_FILES=%PROJECT_ROOT%\code\*.c


rem     create the build directory if it doesn't exist
IF NOT EXIST %PROJECT_ROOT%\build mkdir %PROJECT_ROOT%\build


rem     enter the build directory
pushd %PROJECT_ROOT%\build

rem     invoke the compiler and the linker.
echo INFO: invoking avr-gcc
avr-gcc %CC_FLAGS% %LD_FLAGS% %C_FILES% -o main.out

rem     convert output format to the flashable intel hex format.
echo INFO: invoking avr-objcopy
avr-objcopy -R .eeprom -O ihex main.out main.hex

rem     return to the original directory
popd