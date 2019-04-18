echo off
:start
cls
echo Welcome to Task Killer! What do dou want to do?
echo 1 - List all active tasks
echo 2 - List tasks by name
echo 3 - Kill task by PID
echo 4 - Kill task by name
echo 5 - Exit
::set a variable to store the user option
set /p option= Type an option: 
::go to correct mark
:: Attention: lss = less than; gtr = greater than; equ = equals to
if %option% lss 1 (goto :invalidOption) 
if %option% gtr 5 (goto :invalidOption) 
if %option% equ 1 (goto :listAllTasks)
if %option% equ 2 (goto :listTaskByName)
if %option% equ 3 (goto :killTaskByPid)
if %option% equ 4 (goto :killTaskByName)
if %option% equ 5 (goto :exit)

:invalidOption
	echo Invalid option...!
	pause
	goto :start

:listAllTasks
	tasklist | more
	pause
	goto :start

:listTaskByName
	set /p name= Type a name (use char * after name to get best!): 
	tasklist /fi "imagename eq %name%"
	pause
	goto :start

:killTaskByPid
	set /p id= Type the program's PID to kill: 
	taskkill /f /pid %id%
	pause
	goto :start

:killTaskByName
	set /p name= Type the program's name to kill:
	taskkill /f /im %name%
	pause
	goto :start
:exit
	exit /b
 