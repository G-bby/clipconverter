@echo off
title Clip Converter by G_bby
color 0a

set ffmpeglocation="<path>\ffmpeg.exe"

:loop
set /p file=Drag the clip you would like to convert to mp3 here:
set firstChar=%file:~0,1%
set lastChar=%file:~-1%
set firstChar=%firstChar:"=+%
set lastChar=%lastChar:"=+%
if "%firstChar%"=="+" if "%lastChar%"=="+" (
    %ffmpeglocation% -y -i "%file:~1,-1%" "%file:~1,-4%mp3" 2> nul
    goto loop
)
%ffmpeglocation% -y -i %file% %file:~0,-3%mp3 2> nul


echo ...Done!
goto loop

:end