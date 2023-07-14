@echo off
set n=0
setlocal enabledelayedexpansion
set "tab=    " 
echo update
FOR /F "tokens=* delims=" %%x in (webpack.config.js) DO (
set /a n+=1
if !n!==48 (echo %tab%.enablePostCssLoader^(^) >> ttt.txt ) else echo %%x >> ttt.txt )
call :update
exit /b 0

:update
del webpack.config.js
ren %cd%\ttt.txt webpack.config.js
echo update "webpack.config.js" reussi!
exit /b 0

endlocal