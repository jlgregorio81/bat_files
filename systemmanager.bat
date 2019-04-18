:start
@echo off
cls
echo. --------------------------------------------
echo  Quick System Manager - Welcome!
echo. --------------------------------------------
echo  1 - Delete temporary files
echo. 2 - Clean the Recycle Bin
echo. 3 - Scan files
echo  0 - Exit
echo. --------------------------------------------
::get the option in variable command and go to mark
set /p command= Type an optionp:
if "%command%" equ "1" (goto:op1)
if "%command%" equ "2" (goto:op2)
if "%command%" equ "3" (goto:op3)
if "%command%" equ "0" (goto:exit)
:op1
del /q/f/s %TEMP%\*
pause
goto:start
:op2
rd /q /s c:\$Recycle.Bin
pause
goto:start
:op3
sfc /scannow
pause
goto:start
:exit
exit /b

  
