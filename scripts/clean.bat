@echo off
rem     Cleans the output directory


pushd %PROJECT_ROOT%\build
echo INFO: deleting output files from build\
del /Q *.o *.hex *.obj *.lst *.map 2>nul
popd