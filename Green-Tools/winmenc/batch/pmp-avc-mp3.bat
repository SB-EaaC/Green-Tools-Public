set avi=%~f1
for /f "tokens=1,2 delims=:" %%a in ('avidump "%avi%" ^| find "Video frame rate"') do set fps=%%b
set fps=%fps:~1%
set vid=%~dpn1.264
set aud=%~dpn1.mp3
set pmp=%~dpn1.pmp
ECHO #STATUS#Demuxing
mencoder -ovc frameno -oac copy -of rawaudio -o "%aud%" "%avi%"
if not exist "%aud%" goto :END
ECHO #STATUS#Muxing
pmp_muxer_avc -v "%avi%" -a "%aud%" -o "%pmp%"
if not exist "%pmp%" goto :END
del "%aud%"
del "%avi%"
:END
exit /b