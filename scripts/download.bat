:: downloads the file main.hex in build/ 
:: into the MCU flash program memory
@echo off
rem		project path prefix
set prefix=W:\avr_programming


IF NOT EXIST %prefix%\build mkdir %prefix%\build
pushd %prefix%\build

avrdude -p atmega32 -c USBasp -U flash:w:main.hex

popd