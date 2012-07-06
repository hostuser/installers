Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c grisu-template-uninstall.bat"
oShell.Run strArgs, 0, false