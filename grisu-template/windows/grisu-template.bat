set dir="%APPDATA%\Grid\Grisu Template Client"


if NOT EXIST "%dir%\getdown.txt" (
	MD "%dir%"
	COPY ..\resources\getdown.txt "%dir%\getdown.txt"
)
if NOT EXIST "%dir%\splash.png" (
	MD "%dir%"
	COPY ..\resources\splash.png "%dir%\splash.png"
)
java -jar "getdown-client.jar" "%dir%"
