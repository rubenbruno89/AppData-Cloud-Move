@ECHO OFF

:START
cls
%homedrive%
cd %USERPROFILE%
cd..
set profiles=%cd%
mkdir c:\APPDATAMOVE

for /f "tokens=* delims= " %%u in ('dir /b/ad') do (

cls
title Movendo %%u AppData. . .
if exist "%profiles%\%%u\AppData" echo Movendo...
if exist "%profiles%\%%u\AppData" attrib "%profiles%\%%u\AppData" -h
if exist "%profiles%\%%u\AppData" mkdir c:\APPDATAMOVE\%%u
if exist "%profiles%\%%u\AppData" move /y "%profiles%\%%u\AppData" c:\APPDATAMOVE\%%u

cls
title Movendo %%u Dropbox. . .
if exist "%profiles%\%%u\Dropbox" echo Movendo...
if exist "%profiles%\%%u\Dropbox" attrib "%profiles%\%%u\Dropbox" -h
if exist "%profiles%\%%u\Dropbox" move /y "%profiles%\%%u\Dropbox" c:\APPDATAMOVE\%%u

cls
title Movendo %%u Google Drive. . .
if exist "%profiles%\%%u\Google Drive" echo Movendo...
if exist "%profiles%\%%u\Google Drive" attrib "%profiles%\%%u\Google Drive" -h
if exist "%profiles%\%%u\Google Drive" move /y "%profiles%\%%u\Google Drive" c:\APPDATAMOVE\%%u

cls
title Movendo %%u Google Drive. . .
if exist "%profiles%\%%u\OneDrive" echo Movendo...
if exist "%profiles%\%%u\OneDrive" attrib "%profiles%\%%u\OneDrive" -h
if exist "%profiles%\%%u\OneDrive" move /y "%profiles%\%%u\OneDrive" c:\APPDATAMOVE\%%u

)

cls
goto END


:END
exit
