@echo off
set "zipExe=C:\Program Files\7-Zip\7z.exe"
set "dir=%~dp0"
cd /d "%dir%"
for %%I in (.) do set "folderName=%%~nxI"
set "outputDir=%folderName% compressed"
if not exist "%outputDir%" mkdir "%outputDir%"
for %%F in (*.*) do (
    if /I not "%%~xF"==".zip" if /I not "%%~xF"==".7z" if /I not "%%~xF"==".rar" if /I not "%%~xF"==".bat" (
        "%zipExe%" a -tzip -mx=1 "%outputDir%\%%~nF.zip" "%%F"
    )
)
echo Done!
pause
