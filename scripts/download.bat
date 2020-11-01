@echo off
rem     downloads the file main.hex in build/  into the MCU flash program memory


rem     check if the build directory doesn't exist.
rem     flash the main.hex file into the target
if not exist %PROJECT_ROOT%\build (
    echo ERROR: download.bat: build\ not found, please build first
    exit
) else (
    pushd %PROJECT_ROOT%\build
    echo INFO: invoking avrdude
    avrdude -p atmega32 -c USBasp -U flash:w:main.hex
    echo INFO: avrdude finished
    popd
)
