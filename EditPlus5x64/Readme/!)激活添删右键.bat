@ECHO OFF&(PUSHD "%~DP0")&(REG QUERY "HKU\S-1-5-19">NUL 2>&1)||(
powershell -Command "Start-Process '%~sdpnx0' -Verb RunAs"&&EXIT)

:: ע����Ϣ
reg add "HKCU\SOFTWARE\ES-Computing\EditPlus\Install" /f /v "License" /t REG_BINARY /d "db892918015e0c5e789ce374ccc951082d4e2d2a963573b37474d23575723534d0b5b48c3272d435750e3773d135700e31360500dbb00a32" >NUL 2>NUL
reg add "HKCU\SOFTWARE\ES-Computing\EditPlus\Install" /f /v "License 5" /t REG_BINARY /d "db892918215e1e5e789c630d63c86728634864c8639035607064706730613063d065f0024213060b065720db19483a024967201b246206c4e140b62b5024142813cec0c000006e00095b" >NUL 2>NUL
reg add "HKCU\SOFTWARE\ES-Computing\EditPlus\Install" /f /v "License 4" /t REG_BINARY /d "db892918215e1d5e789c1589bb11803014c3d4304646a078f9c1006405fa2c103ae6479ccf3e9dbcdd3cbc4c1629a81c04999dd304852e37b7ba4dfe4db643ee9acb67001f4cae0831" >NUL 2>NUL

:Menu
Echo.&Echo  �����ע����Ϣ��ɼ��
Echo.&Echo  1������Ҽ�ʹ�� EditPlus ����
Echo.&Echo  2��ɾ���Ҽ�ʹ�� EditPlus ����
Echo.&Echo  3������ EditPlus ע����Ϣ������

IF EXIST "%WinDir%\System32\CHOICE.exe" CHOICE /C 123 /N >NUL 2>NUL
IF EXIST "%WinDir%\System32\CHOICE.exe" IF "%ERRORLEVEL%"=="3" GOTO Clean
IF EXIST "%WinDir%\System32\CHOICE.exe" IF "%ERRORLEVEL%"=="2" GOTO DelMenu
IF EXIST "%WinDir%\System32\CHOICE.exe" IF "%ERRORLEVEL%"=="1" GOTO AddMenu
IF NOT EXIST "%WinDir%\System32\CHOICE.exe" ECHO.&SET /p choice=���������ûس�����
IF NOT EXIST "%WinDir%\System32\CHOICE.exe" IF NOT "%choice%"=="" SET choice=%choice:~0,1%
IF NOT EXIST "%WinDir%\System32\CHOICE.exe" IF /I "%choice%"=="1" GOTO AddMenu
IF NOT EXIST "%WinDir%\System32\CHOICE.exe" IF /I "%choice%"=="2" GOTO DelMenu
IF NOT EXIST "%WinDir%\System32\CHOICE.exe" IF /I "%choice%"=="3" GOTO Clean
IF NOT EXIST "%WinDir%\System32\CHOICE.exe" ECHO.&ECHO ������Ч &PAUSE&CLS&GOTO MENU

:AddMenu
reg add "HKCR\*\shell\EditPlus" /f /ve /d "�� EditPlus ��"  >NUL 2>NUL
reg add "HKCR\*\shell\EditPlus" /f /v "Icon" /t REG_EXPAND_SZ /d "%~dp0editplus.exe" >NUL 2>NUL
reg add "HKCR\*\shell\EditPlus\command" /f /ve /d "%~dp0editplus.exe \"%%1\"" >NUL 2>NUL
IF EXIST "%WinDir%\System32\CHOICE.exe" ( 
ECHO.&ECHO ������
ECHO.&ECHO 423down.com
TIMEOUT /t 3 >NUL&CLS&GOTO MENU
) ELSE ( 
ECHO.&ECHO �����ɣ���������� 
ECHO.&ECHO 423down.com
PAUSE>NUL&CLS&GOTO MENU
) 

:DelMenu
regsvr32 /s /u eppshell64.dll
reg delete "HKCR\*\shell\EditPlus" /f >NUL 2>NUL
reg delete "HKCR\*\shell\EditPlus" /f >NUL 2>NUL
IF EXIST "%WinDir%\System32\CHOICE.exe" ( 
ECHO.&ECHO ɾ�����
ECHO.&ECHO 423down.com
TIMEOUT /t 3 >NUL&CLS&GOTO MENU
) ELSE ( 
ECHO.&ECHO ɾ����ɣ���������� 
ECHO.&ECHO 423down.com
PAUSE>NUL&CLS&GOTO MENU
) 

:Clean
regsvr32 /s /u eppshell64.dll
reg delete "HKCR\*\shell\EditPlus" /f >NUL 2>NUL
reg delete "HKCR\*\shell\EditPlus" /f >NUL 2>NUL
reg delete "HKCU\SOFTWARE\ES-Computing" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\ES-Computing" /f >NUL 2>NUL
IF EXIST "%WinDir%\System32\CHOICE.exe" ( 
ECHO.&ECHO �������
ECHO.&ECHO 423down.com
TIMEOUT /t 3 >NUL&CLS&GOTO MENU
) ELSE ( 
ECHO.&ECHO ������ɣ���������� 
ECHO.&ECHO 423down.com
PAUSE>NUL&CLS&GOTO MENU
) 