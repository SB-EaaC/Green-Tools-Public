set avi=%~f1
for /f "tokens=1,2 delims=:" %%a in ('avidump "%avi%" ^| find "Video frame rate"') do set fps=%%b
set fps=%fps:~1%
set vid=%~dpn1.264
set aud=%~dpn1.aac
set mp4=%~dpn1.mp4
set psp=%~dpn1.psp.mp4
ECHO #STATUS#Demuxing
mencoder -ovc copy -nosound -of rawvideo -o "%vid%" "%avi%"
mencoder -ovc frameno -oac copy -of rawaudio -o "%aud%" "%avi%"
if not exist "%vid%" goto :END
if not exist "%aud%" goto :END
REM mp4box -fps %fps% -add "%vid%"#video -add "%aud%"#audio -new "%mp4%"
if exist "%mp4%" del "%mp4%"
ECHO #STATUS#Muxing
mp4creator -c "%vid%" -rate=%fps% "%mp4%"
mp4creator -c "%aud%" "%mp4%"
if not exist "%mp4%" goto :END
ECHO #STATUS#Atoming
atomchanger "%mp4%" "%psp%" atomavcpsp.ini
if not exist "%psp%" goto :END
del "%mp4%"
del "%avi%"
del "%vid%"
del "%aud%"
:END
exit /b