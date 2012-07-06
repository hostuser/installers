Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c WINDOWS_START_SCRIPT"
oShell.Run strArgs, 0, false