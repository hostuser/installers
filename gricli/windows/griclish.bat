@ECHO OFF

set dir="%APPDATA%\Grid\Gricli"
if NOT EXIST "%dir%" (
	MD "%dir%"
	COPY ..\resources\getdown.txt "%dir%\getdown.txt"
)

ECHO Checking for updates. This might take a while...
java -Dsilent -jar "getdown-client.jar" "%dir%"

set X509_USER_PROXY=%USERPROFILE%\.grid\grid.proxy

java -jar "%dir%\gricli-binary.jar" "%*"


