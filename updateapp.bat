@echo off
cd assets\styles
set n=0
setlocal enabledelayedexpansion
echo update
FOR /F "tokens=* delims=" %%x in (app.css) DO (
set /a n+=1
if !n!==1 (
echo @tailwind base; >> ttt.txt
echo @tailwind components; >> ttt.txt
echo @tailwind utilities; >> ttt.txt
echo %%x >> ttt.txt ) else echo %%x >> ttt.txt )
call :update
exit /b 0

:update
del app.css
ren %cd%\ttt.txt app.css
cd ..\..
echo update "app.css" reussi!
exit /b 0


@tailwind base;
@tailwind components;
@tailwind utilities;