set dir="%APPDATA%\Grid\Grid-Tray"

if NOT EXIST "%dir%" (
	MD "%dir%"
	COPY ..\resources\getdown.txt "%dir%\getdown.txt"
)
if NOT EXIST "%dir%\splash.png" (
	MD "%dir%\"
	COPY ..\resources\splash.png "%dir%\splash.png"
)
java -jar "getdown-client.jar" "%dir%"
