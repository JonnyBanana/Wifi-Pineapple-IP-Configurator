@ECHO off
color E9 & mode con:cols=91 lines=65
REM this two strings permit to run the batch on admin (with UAC prompt)
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )                 
:menu
echo. 
echo                             WI-FI PINEAPPLE IP CONFIGURATOR
:::
:::     MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMMMMMMMMMMMMMMMMmdyso+/:::--:::/+osydmMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMMMMMMMMMMMNhs/------:/+oooooo+/:------/shNMMMMMMMMMMMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMMMMMMMMds/---:+shmNMMMMMMMMMMMMMMNmhs+:---/sdMMMMMMMMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMMMMMms:---+ymMMMMMMMMMMMMMMMMMMMMMMMMMMmy+---:smMMMMMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMMMd+---+hNMMMMMMMMMMMMMMMmmMMMMMMMMMMMMMMMNh+---+dMMMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMd+--:sNMMMMMMMMMMMMMMMMMN::mMMMMMMMMMMMMMMMMMNs:--+dMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMNo---yNMMMMMMMMMNy++oydNMMs--+MMMdyo++ymMMMMMMMMMNy---oNMMMMMMMMMMMM
:::     MMMMMMMMMMMd:--oNMMMMMMMMMMMMMNh/---+h:---ho---/yNMMMMMMMMMMMMMNo--:dMMMMMMMMMMM
:::     MMMMMMMMMMy---hMMMMMMMMMMMMMMNmddy:-----------sddmNMMMMMMMMmMMMMMh---yMMMMMMMMMM
:::     MMMMMMMMMs--:mMMMMhsNMMMMMNh+:---------------------+yNMMMMy-:dMMMMm:--sMMMMMMMMM
:::     MMMMMMMMy--:NMMMMo--hMMMMMMMMMmy/--------------/ymMMMMMMMMMy--sMMMMm:--yMMMMMMMM
:::     MMMMMMMd---mMMMM+-:mMMhmMMMMMds+:--------------:+sdNMMMy:hMMd:-oMMMMm---dMMMMMMM
:::     MMMMMMM/--yMMMMo-:mMMo-:NMNhoo+:----------------:+oohNMh--sMMm:-sMMMMy--/MMMMMMM
:::     MMMMMMh--:MMMMy--mMMo-:mMMmMMMMMNysso/:--:/ossyNMMMMhhMMd--sMMd--hMMMM:--hMMMMMM
:::     MMMMMM+--yMMMN:-sMMh--dMMy-/NMMm/---+hNddNh+---+mMMd--hMMh--dMMo-/MMMMy--+MMMMMM
:::     MMMMMN:--mMMMh--mMM/-+MMm--yMMN+/oyyo/----/oyyo:+NMMs-:NMM/-+MMd--dMMMd--:MMMMMM
:::     MMMMMN---NMMMo-:MMm--hMMs-:MMNymysyyys+::+syyysymyNMN--hMMy--NMM--sMMMN---NMMMMM
:::     MMMMMN---NMMM+-+MMm--mMMo-/MMd+-----/sdhhds/-----+dMM:-sMMd--NMM/-oMMMN---NMMMMM
:::     MMMMMN:--mMMMo-/MMm--dMMs-+MMhyso+yyo:----:oyy+osyhMM/-yMMh--NMM:-sMMMm--:NMMMMM
:::     MMMMMM+--yMMMy--NMN/:yMMMMMMN::yhoosyyo//oyysoohy::NMMMMMMs:/MMm--hMMMy--+MMMMMM
:::     MMMMMMy--/MMMN:/dMMNMMMMMMMMMhy:----:odhhdo:----:yhMMMMMMMMMMMMh/:NMMM/--yMMMMMM
:::     MMMMMMN:--hMMMMMMMMMMMMMMMMMMyyyysshs/----/shssyyyyMMMMMMMMMMMMMMMMMMh--:MMMMMMM
:::     MMMMMMMh--:NMMMMMMMMMMMMMMMMM/-/yy+oyys//syyo+yy/-/MMMMMMMMMMMMMMMMMN:--hMMMMMMM
:::     MMMMMMMMo--/NMMMMMMMMMMMMMMMMhds-----ohhhh+----:sdhMMMMMMMMMMMMMMMMN/--oMMMMMMMM
:::     MMMMMMMMMo--/NMMMMMMMMMMMMMMMMysyyshh+----+hysyysyMMMMMMMMMMMMMMMMN/--oMMMMMMMMM
:::     MMMMMMMMMMo--/mMMMMMMMMMMMMMMMm/+hsoyys//syyosh+/mMMMMMMMMMMMMMMMm:--oMMMMMMMMMM
:::     MMMMMMMMMMMy---yMMMMMMMMMMMMMMMMd----/hddh/----dMMMMMMMMMMMMMMMMy---yMMMMMMMMMMM
:::     MMMMMMMMMMMMm/--/dMMMMMMMMMMMMMMMNyody/::/ydoyNMMMMMMMMMMMMMMMd/--/mMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMy:--/hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh/--:yMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMMMy:--:smMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMms:--:yMMMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMMMMMh+---/sdMMMMMMMMMMMMMMMMMMMMMMMMMMMMds/---+hMMMMMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMMMMMMMNy+----+shmMMMMMMMMMMMMMMMMMMmhs+----+yNMMMMMMMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMMMMMMMMMMMds+-----:/+osyyyyyyso+/:-----+sdMMMMMMMMMMMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMMMMMMMMMMMMMMMmhyo+/:----------:/+oyhmMMMMMMMMMMMMMMMMMMMMMMMMMMMM
:::     MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNNNNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
REM THIS STRING IT'S FOR ASCII ART                                                            
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A     
echo                                                                 coded by JonnyBanana
echo.
echo  Choose an option: 
echo.
echo  1. DISABLE DHCP (SET AS IP 172.16.42.42)            
echo.
echo  2. RE ENABLE DHCP                          
echo.
echo  3. RENAME THE NETWORK                          
echo.
echo  4. OPEN THE WIFI PINEAPPLE DASHBOARD                    
echo.
set /p a=
IF %a%==1 (
goto DISABLE-DHCP
)
IF %a%==2 (
goto ENABLE-DHCP
)
IF %a%==3 (
goto NETWORK-RENOMINATOR
)
IF %a%==4 (
start http://172.16.42.1:1471/#!/modules/Dashboard
cls
goto menu
)
:DISABLE-DHCP
echo.
echo THIS FUNCTION SET THE IPV4 OF THE TARGET NETWORK TO 172.16.42.4
echo.
echo ALSO SET THE SUBNET MASK ADRESS TO 255.255.0.0
echo. 
echo THE NETWORK MUST BE NAMED "WIFI_PINEAPPLE"
echo. 
echo U CAN USE FUNCTION "3" TO AUTOMATICALLY CHANGE THE NETWORK NAME.
echo.
pause
REM THIS COMMAND SET AN IP AN A SUBNET MASK ON TARGET NETWORK
REM NETWORK MUST BE NAMED "WIFI_PINEAPPLE"
netsh interface ipv4 set address name = "WIFI_PINEAPPLE" static 172.16.42.42 255.255.0.0
echo.
echo  IF YOU SEE NO ERRORS, THE OPERATION WAS SUCCESSFUL...
echo.
echo  CHECK IN THE NEXT SHELL THAT "DHCP" FOR THE 
echo  "WIFI_PINEAPPLE" NETWORK IS CORRECTLY DISABLED!
echo.
netsh interface ip show address "WIFI_PINEAPPLE" | findstr "IP Address" 
REM WITHOUT THIS DELAY THE NEXT SHELL DON'T DISPLAY IP AND SUBNET MASK, BUT ONLY DISPLAY DHCP ENABLED/DISABLED
ping 127.0.0.1 -n 4 > nul
REM FORCE YOU NEED TO OPEN ANOTHER PROMPT, OTHERWISE IT DOESN'T VIEW THE OUTPUT OF THE "nestsh" COMMAND
start cmd /k netsh interface ip show address "WIFI_PINEAPPLE" | findstr "IP Address"  
cls
goto menu  
:ENABLE-DHCP
echo.
echo THIS FUNCTION SET THE IPV4 OF THE TARGET NETWORK TO DHCP
echo.
echo THE NETWORK MUST BE NAMED "WIFI_PINEAPPLE"
echo. 
echo U CAN USE FUNCTION "3" TO AUTOMATICALLY CHANGE THE NETWORK NAME.
echo.
pause
netsh interface ipv4 set address name="WIFI_PINEAPPLE" source=dhcp
echo.
echo  IF YOU SEE NO ERRORS, THE OPERATION WAS SUCCESSFUL...
echo.
echo  CHECK IN THE NEXT SHELL THAT "DHCP" FOR THE 
echo  "WIFI_PINEAPPLE" NETWORK IS CORRECTLY ENABLED!
echo.
netsh interface ip show address "WIFI_PINEAPPLE" | findstr "IP Address" 
REM WITHOUT THIS DELAY THE NEXT SHELL DON'T DISPLAY IP AND SUBNET MASK, BUT ONLY DISPLAY DHCP ENABLED/DISABLED
ping 127.0.0.1 -n 4 > nul
start cmd /k netsh interface ip show address "WIFI_PINEAPPLE" | findstr "IP Address"  
cls
goto menu
:NETWORK-RENOMINATOR
echo.
echo  THIS FUNCTION RENAMES THE NETWORK TO "WIFI_PINEAPPLE"
echo.
netsh interface show interface
echo.
echo  WRITE THE NAME OF THE NETWORK YOU WANT TO RENAME...
echo.
SET /P b= 
netsh interface set interface name="%b%" newname="WIFI_PINEAPPLE" 
echo.
pause
echo.
echo  IF YOU SEE NO ERRORS, THE OPERATION WAS SUCCESSFUL...
echo.
echo  CHECK IN THE LIST IF THE NETWORK NAME HAS BEEN CHANGED
echo.
netsh interface show interface
echo.
pause
cls
goto menu 