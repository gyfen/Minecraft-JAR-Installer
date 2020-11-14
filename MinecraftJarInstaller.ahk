#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Open an explorer window, where the user selects a file with one of these file extentions.
FileSelectFile, FilePath, , , , *.jar

If (FilePath != "") ; If the variable FileName is blank, the user didn't select a file and nothing should happen.
    Run, C:\Program Files (x86)\Minecraft Launcher\runtime\jre-x64\bin\java.exe -jar %FilePath%
