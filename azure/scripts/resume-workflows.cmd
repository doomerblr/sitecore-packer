set "USERPROFILE=%USERPROFILE%\..\%USERNAME%"
set "APPDATA=%USERPROFILE%\AppData\Roaming"
set "LOCALAPPDATA=%USERPROFILE%\AppData\Local"
set "SCRIPTPATH=%1%\resume-workflows.ps1"
"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -NonInteractive -WindowStyle Normal -NoLogo -NoProfile -Command "&'%SCRIPTPATH%'"