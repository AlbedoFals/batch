@echo off

set PCNAME=%1
set ADMPASS=%2
set FIRSTUSER=%3
set FIRSTUSERPASS=%4

if [%PCNAME%]==[] goto exit
if [%ADMPASS%]==[] goto exit
if [%FIRSTUSER%]==[] goto exit
if [%FIRSTUSERPASS%]==[] goto exit


REM ���C�K�X����
call export.sec.bat
REM set PasswordComplexity = 0
notepad sec.cfg
call import.sec.bat

REM �]�w�q���W��
call computername.bat %PCNAME%

REM ���adm�K�X
call passwd.bat administrator %ADMPASS%

REM adm�K�X���L��
call neverexpired.bat administrator

REM �s�Wfirstuser
call adduser.bat %FIRSTUSER% %FIRSTUSERPASS%

REM firstuser�K�X���L��
call neverexpired.bat %FIRSTUSER%

REM [�ĤG��]����firstuser�޲z�v��
call addadmin.bat %FIRSTUSER%

REM ���}powerscript�\��
call enablepowershellscript.bat

REM �w�˥��n�\��
call installfeature.bat

REM �ϥ�HVRemote script
call server.bat %FIRSTUSER%

REM open port for rsync
call openport.bat

REM �}�һ��ݮୱ�޲z
call rdpon.bat

REM �}�һ��ݺ޲z
call remoteon2.bat

goto :EOF

:exit
echo %0 PCNAME ADMPASS FIRSTUSER FIRSTUSERPASS
