@echo off
Title EmuZONE XBOX CONTENT LOADER
Color 0a
echo.

:Downloadmenu
cls
echo.
echo Download Menu
echo ============================
echo.
echo [1] BurnOut Crash
echo [2] Arcade Collection Vol.1
echo [3] Anna Extended Edition
echo.

set asw=0
set /p asw="Bitte eine Auswahl treffen: "

if %asw%==1 goto App1
if %asw%==2 goto App2
if %asw%==3 goto App3
goto END

:App1
cls
echo.
echo BurnOut Crash wird geladen... (Kann einige Zeit in anspruch nehmen)
if not exist Downloads mkdir Downloads
if exist Downloads\BurnoutCrashTrial.zip del Downloads\BurnoutCrashTrial.zip
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://download.digiex.net/Consoles/Xbox360/Arcade-games/BurnoutCrashTrial/BurnoutCrashTrial.zip', 'Downloads\BurnoutCrashTrial.zip')" 2>nul
powershell -Command "Invoke-WebRequest http://download.digiex.net/Consoles/Xbox360/Arcade-games/BurnoutCrashTrial/BurnoutCrashTrial.zip -OutFile Downloads\BurnoutCrashTrial.zip" 2>nul;
echo.
goto Downloadmenu

:App2
cls
echo.
echo Arcade Collection Vol.1 wird geladen... (Kann einige Zeit in anspruch nehmen)
if exist Downloads\ArcadeCollection.rar del Downloads\ArcadeCollection.rar
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://download.digiex.net/Consoles/Xbox360/Arcade-games/ArcadeCollection/ArcadeCollection.rar', 'Downloads\ArcadeCollection.rar')" 2>nul
powershell -Command "Invoke-WebRequest http://download.digiex.net/Consoles/Xbox360/Arcade-games/ArcadeCollection/ArcadeCollection.rar -OutFile Downloads\ArcadeCollection.rar" 2>nul;
echo.
goto Downloadmenu

:App3
cls
echo.
echo Anna Extended Edition wird geladen... (Kann einige Zeit in anspruch nehmen)
if exist Downloads\AnnaExtendedEditionArcadeTrail.7z del Downloads\AnnaExtendedEditionArcadeTrail.7z
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://download.digiex.net/Consoles/Xbox360/Arcade-games/AnnaExtendedEditionArcadeTrail.7z', 'Downloads\AnnaExtendedEditionArcadeTrail.7z')" 2>nul
powershell -Command "Invoke-WebRequest http://download.digiex.net/Consoles/Xbox360/Arcade-games/AnnaExtendedEditionArcadeTrail.7z -OutFile Downloads\AnnaExtendedEditionArcadeTrail.7z" 2>nul;
echo.
goto Downloadmenu
