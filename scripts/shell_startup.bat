@echo off

rem		use this in the cmd.exe shortcut "target" property:
rem		%windir%\system32\cmd.exe /k [path-to-here]\shell_startup.bat

rem		add custom scripts, avr-gcc, binutils, make, etc. binaries to path
set path=C:\Program Files\WinAVR\bin;C:\Users\Marwan\Desktop\Work\avr_programming\scripts;C:\Program Files\WinAVR\utils\bin;%path%
rem		setup some environment variables for gcc and binutils
set GCC_ROOT=C:\Program Files\WinAVR\
set BINUTILS_ROOT=C:\Program Files\WinAVR\
set G++_ROOT=C:\Program Files\WinAVR\
rem 	cd into project directory
subst W: C:\Users\Marwan\Desktop\Work
W:
cd avr_programming
cls