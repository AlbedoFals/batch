;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat %CMDER_ROOT%\config\.history
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars --color $*
pwd=cd
clear=cls
bat=cd/d d:\Users\sita\Documents\tasks\batch\ssh  
kodi=cd/d C:\Users\sita\AppData\Roaming\Kodi  
va=cd/d D:\Users\sita\vagrant  
csave=copy /y C:\tools\cmder\config\* D:\Users\sita\Documents\tasks\cmder\config\
cload=copy /y D:\Users\sita\Documents\tasks\cmder\config\* C:\tools\cmder\config\
cfg="C:\Program Files (x86)\Notepad++\notepad++.exe" C:\tools\cmder\config\user-aliases.cmd
re=alias /reload
al=alias
gs=git status
