@echo off
rem     this script starts up the environment for the project shell.
rem     environment here means the PATH variable, and c compiler header include PATHs. 
rem		use this in the cmd.exe shortcut "target" property:
rem         %windir%\system32\cmd.exe /k [PATH-to-here]\shell_startup.bat
rem     you should also change the variable PROJECT_ROOT manually when using the 
rem     script for the first time, to reflect the real location of the project folder.
rem     -- Marwan Nabil


rem     set project root directory
set PROJECT_ROOT=C:\Users\Marwan\Desktop\avr_programming


rem     modify the PATH variable
set PATH=%PATH%;%PROJECT_ROOT%\tools\avr-gcc-10.1.0-x64-windows\bin
set PATH=%PATH%;%PROJECT_ROOT%\tools\avr-gcc-10.1.0-x64-windows\avr\bin
set PATH=%PATH%;%PROJECT_ROOT%\scripts


rem 	cd into project directory
cd %PROJECT_ROOT%