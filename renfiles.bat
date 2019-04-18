@echo off	
cls
echo. --------------------------------------------
echo  Rename files in batch!
echo. --------------------------------------------
::set the delayed expansion 
setlocal EnableDelayedExpansion
::capture the user variables
set /p ext=What extension do you want to rename!?
set /p name=What is the name prefix?
::define a variable to count
set count=1
::for each file %%f in *.%ext% do: rename file with prefix
for %%f in (*.%ext%) do (	
	ren %%f %name%!count!.%ext%
	::increment the count
	set /a count+=1
	)
::end of delayed expansion
endlocal 
pause
exit /b