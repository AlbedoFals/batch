@echo off
if [%PCNAME%]==[] goto exit
if [%ADMPASS%]==[] goto exit
if [%FIRSTUSER%]==[] goto exit
if [%FIRSTUSERPASS%]==[] goto exit

REM set PCNAME=hv3
REM set ADMPASS=1
REM set FIRSTUSER=sita
REM set FIRSTUSERPASS=1

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

REM ����firstuser�޲z�v��
call addadmin.bat %FIRSTUSER%

REM �w�˥��n�\��
call installfeature.bat

REM open port
call openport.bat

REM �}�һ��ݮୱ�޲z
call rdpon.bat

REM �}�һ��ݺ޲z
call remoteon2.bat

:exit
