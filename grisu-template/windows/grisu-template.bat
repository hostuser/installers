@ECHO OFF

set dir=%APPDATA%\Grid\GrisuTemplateClient

if NOT EXIST "%dir%\getdown.txt" (
	MD "%dir%"
	COPY ..\resources\getdown.txt "%dir%\getdown.txt"
)
if NOT EXIST "%dir%\splash.png" (
	MD "%dir%"
	COPY ..\resources\splash.png "%dir%\splash.png"
)


FOR /F "skip=2 tokens=2*" %%A IN ('REG QUERY "HKLM\Software\JavaSoft\Java Runtime Environment" /v CurrentVersion') DO set CurVer=%%B

FOR /F "skip=2 tokens=2*" %%A IN ('REG QUERY "HKLM\Software\JavaSoft\Java Runtime Environment\%CurVer%" /v JavaHome') DO set JAVA_HOME=%%B

REM @echo JAVA_HOME = %JAVA_HOME%
set JAVA_EXE=%JAVA_HOME%\bin\java.exe

@echo Using Java: %JAVA_EXE%
if NOT EXIST "%JAVA_EXE%" (

	ECHO WScript.Echo( "Can't find Java executable." ^& vbCrLf ^& vbCrLf ^& "Please contact support:" ^& vbCrLf ^& vbCrLf ^& "m.binsteiner@auckland.ac.nz" ^)  > usermessage.vbs
	WSCRIPT.EXE usermessage.vbs
	DEL usermessage.vbs

)


"%JAVA_EXE%" -jar "getdown-client.jar" "%dir%"

