@ECHO OFF
TITLE Redi's Mod Updator
set localDir=%cd%
cls

:CHECKLIST
cd /d %localDir%
IF NOT EXIST redimods goto INSTALL
IF NOT EXIST redidata goto INSTALL
PUSHD redidata
IF NOT EXIST internetService.bat goto INSTALL
goto MENU

:INSTALL
cd /d %localDir%
md redimods
md redidata
PUSHD redidata
(
 echo bitsadmin.exe /transfer UpdateJob "%%DLLink%%" "%%appdata%%\NXT Studios\library\client\dl\%file%"
 echo set updatePacket=1
) > internetService.bat
goto MENU


:MENU
CD /D %localDir%

:LOAD
cls
echo.
echo ==================================
echo =    REDI'S MOD PACK UPDATOR     =
echo ==================================
echo.
echo.
echo Checking for any new updates ... /
echo.
TIMEOUT 1 /NOBREAK >NUL
cls
echo.
echo ==================================
echo =    REDI'S MOD PACK UPDATOR     =
echo ==================================
echo.
echo.
echo Checking for any new updates ... -
echo.
TIMEOUT 1 /NOBREAK >NUL
cls
echo.
echo ==================================
echo =    REDI'S MOD PACK UPDATOR     =
echo ==================================
echo.
echo.
echo Checking for any new updates ... \
echo.
TIMEOUT 1 /NOBREAK >NUL
cls
echo.
echo ==================================
echo =    REDI'S MOD PACK UPDATOR     =
echo ==================================
echo.
echo.
echo Checking for any new updates ... -
echo.
TIMEOUT 1 /NOBREAK >NUL
IF %updatePacket%=1 goto INTMENU
goto LOAD