@echo off
ECHO ===============================================
ECHO  Hydra Connectivity Test
ECHO  Launching web browsers
ECHO ===============================================
for /f "delims=" %%a in (applist.txt) do start "" http://%%a
pause
