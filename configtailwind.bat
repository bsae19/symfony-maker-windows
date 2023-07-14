@echo off
set n=0
setlocal enabledelayedexpansion
set "tab=  "
set "space= " 
set "ret=\n"
echo update
FOR /F "tokens=* delims=" %%x in (tailwind.config.js) DO (
set /a n+=1
if !n!==3 (
echo %tab%content:%space%[ >> ttt.txt
echo %tab%%tab%"./assets/**/*.js", >> ttt.txt
echo %tab%%tab%"./templates/**/*.html.twig", >> ttt.txt
echo %tab%], >> ttt.txt ) else echo %%x >> ttt.txt )
call :update
exit /b 0

:update
del tailwind.config.js
ren %cd%\ttt.txt tailwind.config.js
echo update "tailwind.config.js" reussi!
exit /b 0

endlocal

  content: [
    "./assets/**/*.js",
    "./templates/**/*.html.twig",
  ],