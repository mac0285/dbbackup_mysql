# dbbackup_mysql


how to backup your db to spesifict NAS folder using 7z compress file

1. copy all file to c:\mysqldum\,  Edit TPB.bat | ABSENSI.bat to spesifict like your connection db
2. make Map Drive in your Explorer exp. M:\zip\ ( NAS or else drive mapping )
3. make an task schedule in your PC to spesifict Time exp. ( 23.00 everyday )
4. and make sure the task can running 2 Bat script file ( TPB.bat | ABSENSI.bat )
5. extrct file zip.rar (7za.exe 7z.exe) to destination folder NAS

if any please email to : moh.h.rifai@gmail.com


--------------------------------------------------------------------------------------------------------------

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
-------------------------------------------------------------------------------------------------------------------
