ECHO OFF
setlocal ENABLEDELAYEDEXPANSION
CLS
:MENU
ECHO ===============================================
ECHO  Hydra Circuit Download Bandwidth Test
ECHO   Note: Batch doesn't handle Floating Point 
ECHo    (decimal entry won't work in selection 1)
ECHO ===============================================
ECHO 1 - Input Link Bandwidth
ECHO 2 - Test Input Bandwidth Download
ECHO 3 - Re-Test -500Kb
ECHO 4 - Re-Test +500Kb
ECHO 5 - Exit


SET /P M=Make selection then press ENTER:
IF %M%==1 GOTO BANDWIDTH
IF %M%==2 GOTO TEST
IF %M%==3 GOTO RE-TEST-500Kb
IF %M%==4 GOTO RE-TEST+500Kb
IF %M%==5 GOTO EXIT

:BANDWIDTH
set /p bwM="Enter the Link's Bandwidth:"
echo bandwidth entered is %bwM%
GOTO MENU

:TEST
IF "%bwM%"=="1" (
set /a bwP=bwM
) ELSE ( 
set /a bwP=bwM*85/100
)
set /a bwK=bwP*1000
echo Testing for %bwK%Kb
.\iperf\iperf3.exe -c 10.42.128.30 -u -R 300 -b %bwK%K -T %bwK% | .\gnuwin\grep.exe "datagrams" -B 3 | .\gnuwin\tee.exe -a DLSDWANTest.log
GOTO MENU

:RE-TEST-500Kb
set /a bwK=%bwK%-500
echo Testing for %bwK%Kb
.\iperf\iperf3.exe -c 10.42.128.30 -u -R 300 -b %bwK%K -T %bwK% | .\gnuwin\grep.exe "datagrams" -B 3 | .\gnuwin\tee.exe -a DLSDWANTest.log
GOTO MENU

:RE-TEST+500Kb
set /a bwK=%bwK%+500
echo Testing for %bwK%Kb
.\iperf\iperf3.exe -c 10.42.128.30 -u -R 300 -b %bwK%K -T %bwK% | .\gnuwin\grep.exe "datagrams" -B 3 | .\gnuwin\tee.exe -a DLSDWANTest.log
GOTO MENU

:EXIT
exit