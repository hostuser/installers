if NOT EXIST "%APPDATA%\Grid\Grisu Template Client\getdown.txt" (
	MD "%APPDATA%\Grid\Grisu Template Client\"
	COPY ..\resources\getdown.txt "%APPDATA%\Grid\Grisu Template Client\getdown.txt"
)
if NOT EXIST "%APPDATA%\Grid\Grisu Template Client\splash.png" (
	MD "%APPDATA%\Grid\Grisu Template Client\"
	COPY ..\resources\splash.png "%APPDATA%\Grid\Grisu Template Client\splash.png"
)
java -jar "getdown-client.jar" "%APPDATA%\Grid\Grisu Template Client"
