set avi=%~f1
for /f "tokens=1,2 delims=:" %%a in ('avidump "%avi%" ^| find "Video frame rate"') do set fps=%%b
set fps=%fps:~1%
set vid=%~dpn1.m4v
set aud=%~dpn1.aac
set threegp=%~dpn1.3gp
ECHO #STATUS#Demuxing
mencoder -ovc copy -nosound -of rawvideo -o "%vid%" "%avi%"
mencoder -ovc frameno -oac copy -of rawaudio -o "%aud%" "%avi%"
if not exist "%vid%" goto :END
if not exist "%aud%" goto :END
if exist "%threegp%" del "%threegp%"
ECHO #STATUS#Muxing
mp4creator -force3GPCompliance -c "%vid%" -rate=%fps% "%threegp%"
mp4creator -force3GPCompliance -c "%aud%" "%threegp%"
if not exist "%threegp%" goto :END
del "%avi%"
del "%vid%"
del "%aud%"
:END
exit /b