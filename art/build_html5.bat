@echo off
color 0a
cd ..
echo BUILDING GAME
lime build html5 -release
echo.
echo done.
pause
pwd
explorer.exe export\release\html5\bin