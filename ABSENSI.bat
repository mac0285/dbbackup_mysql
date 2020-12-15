@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b) 
color 7
SET backupdir=M:\zip\
SET mysqlusername=dbbackup
SET mysqlpassword=akg@it
SET database=fin_pro
C:\xampp\mysql\bin\mysqldump.exe -uroot %database% >  %backupdir%\%database%_%mydate%.sql 
M:\zip\7za a %backupdir%\%database%_%mydate%.7z %backupdir%\%database%_%mydate%.sql
del %backupdir%\%database%_%mydate%.sql