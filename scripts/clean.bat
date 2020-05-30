@echo off
rem		directory path prefix
set prefix=W:\avr_programming

rem 	cd into the build directory, then clean all built stuff
pushd %prefix%\build
del /Q *.o *.hex *.obj *.lst *.map 2>nul
popd