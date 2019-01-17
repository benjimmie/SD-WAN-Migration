@echo off
ECHO ===============================================
ECHO  Hydra Connectivity Test
ECHO  Pinging These IPs 10x  
ECHO ===============================================
for /f "delims=" %%a in (pinglist.txt) do (echo pinging %%a) && ping.exe -n 10 %%a >nul && (echo %%a OK) || (echo %%a NOK) 
pause
