@echo off

color 06
chcp 65001 >nul 2>&1 
set currentdir=%cd% 


set local=1.2
set localtwo=%local%
set firstlaunch=1


IF EXIST "%temp%\Updater.bat" DEL /S /Q /F "%temp%\Updater.bat" >nul 2>&1
powershell Invoke-WebRequest "https://pastebin.com/raw/AQMvQsnH" -OutFile "%temp%\Updater.bat"
timeout 2 >nul 2>&1
CALL "%temp%\Updater.bat" 
IF "%local%"=="%localtwo%" goto :Continue 
IF NOT "%local%"=="%localtwo%" goto :Update

:Update
cls
echo  --------------------------------------------------------------
echo ^|                        Update found!                         ^|
echo ^|--------------------------------------------------------------^|
echo ^|                 Your current version: %localtwo%                    ^|
echo ^|                                                              ^|
echo ^|                       New version: %local%                       ^|
echo ^|                                                              ^|
echo ^|                                                              ^|
echo ^|                                                              ^|
echo ^|                                                              ^|
echo ^|    [Y] Yes, Update                                           ^|
echo ^|    [N] No                                                    ^|
echo ^|                                                              ^|
echo ^|                                                              ^|
echo  --------------------------------------------------------------
set /p choice="Would you like to update? > "
if /i "%choice%"=="Y" goto :UpdateD

) ELSE (
SET PlaceMisspelt=:Update
goto MissSpell
)

:UpdateD
TITLE Downloading update...
powershell Invoke-WebRequest "https://github.com/vlakiryie/lunarconfig/releases/download/lunarconfig/Lunarconfig.bat" -OutFile "C:\Users\%username%\Documents\Lunarconfig.bat"
timeout 2 >nul 2>&1
start C:\Users\%username%\Documents
timeout 1 >nul 2>&1
start C:\Users\%username%\Documents\Lunarconfig.bat
goto end
exit

:Continue
cls
TITLE Preparing...

:main
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
:Main
color B
title lunar config editor
:menu
cls
color 7
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM[40;30m[40;34mNNNNyyhhhhyyNNNN[40;37mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM[40;30m[40;34mmyyyyyyyyyyyyyyyhd[40;37mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM[40;30m[40;34mNNdyhyyyyyysyhhysyyyyyshhdNN[40;37mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMM[40;30m[40;34mNdsyyyyyyysssydMMdysssyyyyyyysdN[40;37mMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMM[40;30m[40;34mNyyysyyyyysydNNNNMMMMNNNNdysyyyyyyyyyN[40;37mMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMM[40;30m[40;34mNddddyyyyyyyysshmMMMMmddMMMMMMMmhssyyyyyyyyddddN[40;37mMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMM[40;30m[40;34mNNdyssyyyyysyymNNNMMMMMhyssyydMMMMMMNNNmyssyyyyyysydNN[40;37mMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMM[40;30m[40;34mmddyyyyyyyysohddMMMMMMMMMMdyssdNMMMMMMMMMMMMddddsyyyyyyssddm[40;37mMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMM[40;30m[40;34mNhysyyyyyssyyymNMMMNNNNyydMMMNNNMMMMMMMMMMMMMMMMMMyyyysyyyyysyhN[40;37mMMMMMMMMMMMMM
echo MMMMMMMMMMM[40;30m[40;34mNhssyyyysyydhmMMMMMMMyssysohMMMMMMMMMMMMMMMMMMMMMMMNMMMMdyssyyyysshm[40;37mMMMMMMMMMMM
echo MMMMMMMMMMM[40;30m[40;34mmsyyyyshhdNMMMMMMMmhhyyyysdNMMNmNMMMMMMMMMMMMMMMhyysMMMMMNdyhsyyyysd[40;37mMMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mdhsyysymNNNMMMMMMhdhyyyyyyomMNhssshMMMMMMMMMMMMMdysssMMMMMMMMMdysyysyd[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mhsyyyydMsssyMMMMMssyyyyyyyNMmysssssMMMMMMMMMMMMMNsssyMMMMMMMMMMdyyyysh[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymNdsssshNMNhyyyyyyyyyMMNdmysymMMMMMMMMMMMMMMddmMMMMMMMMMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymMNssssNMhssyyyyyyyysmNMMMhhdMMMNmsshNMMMMMMMMMMMMMMMMMMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymMMmddmMhysyyyyyyyyyysmMMMMMMMMMdssssyMMMMMMMMMMMMMMMMMMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymMMMMMMMysyyyyyyyyyyysdNMMMMMMMMmhssydMMMMMMMMMMMMmssNMMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymMMMMMMMyyyyyyyyyyyyyysdMMMMMMMMMMddNMMMMMMMMMMMMMmsshmMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymMMMMMMMyssyyyyyyyyyyyysyMMMMMMMMMMmyssohNMMMMMMssyyyssssMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymMMMMMMMysyyyyyyyyyyyyysshNMMMMMMMMyssyssyhMMMMMmssssshNMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymMMMMMMMysyyyyyyyyyyyyyyysshmMMMMMMMhsshNMMMMMMMMMmhhNMMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymMMMMMMMysyyyyyyyyyyyyyyyyssyhNMMMMMNmmMMMMMMMMMMMMMMMMMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymMMMMMMMdysyyyyyyyyyyyyyyyyyyysdmmMMMMMMMMMMMMMMMMMMMMMMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymMNhyyhNMdssyyyyyyyyyyyyyyyyyyyysyhydNNNNNNNNNNNNNdyyNMMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymmssssssNMNdsyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys+NMMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymNyssssyNMMMyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyymMMMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMMMMM[40;30m[40;34mysyyymMMooydMMMMMMysyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyysshMMMMMMMMmyyysy[40;37mMMMMMMMMMM
echo MMMMMMNmmM[40;30m[40;34mhyhhhmMMmmNMMMMMMMNdyssyyyyyyyyyyyyyyyyyyyyyyyyyyyyysNNNMMMMMMMMmhhhyh[40;37mMMMMMMMMMM
echo MMMMMM[40;30m[40;34mhooddddddddddddddddddddddosyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyddddddddddddddddddddN[40;37mMMMMMM
echo MMMMMM[40;30m[40;34mdssyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyysd[40;37mMMMMMM
echo MMMMMM[40;30m[40;34mdssssssyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyssssssd[40;37mMMMMMM
echo MMMMMM[40;30m[40;34mdyyssssssssyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyssssssssyyd[40;37mMMMMMM
echo MMMMMMMMM[40;30m[40;34mssssssssyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyssssssss[40;37mMMMMMMMMM
echo MMMMMMMMM[40;30m[40;34myyyyyyssssssssssssssyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyssssssssssssssyyyyyy[40;37mMMMMMMMMM
echo MMMMMMMMMMMMMM[40;30m[40;34mMdyssssssssssssyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyssssssssssssssd[40;37mMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMM[40;30m[40;34mMmhyyyyyyyyyyyyyyysossyyyyyyyyyyyyyyyyyyssssyyyyyyyyyyyyyyyyd[40;37mMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM[40;30m[40;34msssyyyyyyyyyyyyyyyyyyyysss[40;37mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM[40;30m[40;34mhyhhhhhhhhhhhhhhhhhhhhhhhh[40;37mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM

echo.
echo.
echo [11] Credits
echo [12] Changelog
echo [13] How it works
echo.
echo.
echo.
set /p ans="Select a corresponding number to what you'd like 1 - 10 > "

if %ans%==1 (
goto a
)
if %ans%==2 (
goto b
)
if %ans%==3 (
goto c
)
if %ans%==4 (
goto d
)
if %ans%==5 (
goto e
)
if %ans%==6 (
goto f
)
if %ans%==7 (
goto g
)
if %ans%==8 (
goto h
)
if %ans%==9 (
goto i
)
if %ans%==10 (
goto j
)
if %ans%==11 (
goto k
)
if %ans%==12 (
goto l
)
if %ans%==13 (
goto m
)

:a
cls
md C:\lunarconfig\resources\default\image
md C:\lunarconfig\resources\default
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/896509630434398218/938951456701157406/mods.json" -OutFile "C:\lunarconfig\resources\default\mods.json"
move C:\lunarconfig\resources\default\mods.json C:\Users\%USERNAME%\.lunarclient\settings\game\default
echo  If you would like to see what it looks like https://imgur.com/a/L1azJVj 
pause
cls
goto menu

:b
cls

md C:\lunarconfig\resources\default2
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/896509630434398218/938951687597600768/mods.json" -OutFile "C:\lunarconfig\resources\default2\mods.json"
move C:\lunarconfig\resources\default2\mods.json C:\Users\%USERNAME%\.lunarclient\settings\game\default
echo If you would like to see what it looks like https://imgur.com/a/wjq2K7M
echo fucking kill your self
pause
cls
goto menu

:c
cls
echo edit this for option
pause
cls
goto menu

:d
cls
echo edit this for option
pause
cls
goto menu

:e
cls
echo edit this for option
pause
cls
goto menu

:f
cls
echo edit this for option
pause
cls
goto menu

:g
cls
echo edit this for option
pause
cls
goto menu

:h
cls
echo edit this for option
pause
cls
goto menu

:i
cls
echo edit this for option
pause
cls
goto menu

:j
cls
echo edit this for option
pause
cls
goto menu

:k
cls
echo Made by valkiryie
echo @valkiryie on telegram
pause
cls
goto menu

:l
cls
echo Version 1.0
echo Currently only 2 GUI's
pause
cls
goto menu

:m
cls
echo       HOW IT WORKS
echo    The way it works is it uses the lunar profiles mod.jsons in the telegram chat then,
echo    automatically puts them in "Default" lunar profile.
pause
cls
goto menu


cls
goto menu

:MissSpell
cls
echo That is not a valid selection!
pause
goto %PlaceMisspelt%

:End
del %0
