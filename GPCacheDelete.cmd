@echo off
REM GPCacheDelete by Erik Lentz, https://github.com/ErikLentz/GPCacheDelete
DEL /S /F /Q "%ALLUSERSPROFILE%"\Application Data\Microsoft\Group Policy\History\*.*"
REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies /f
REG DELETE HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies /f
DEL /F /Q C:\WINDOWS\security\Database\secedit.sdb
Klist purge
echo y | gpupdate /force /wait:0
shutdown -r -f -t 10 -c "Restarting now. Restart again to complete policy refresh"
exit
