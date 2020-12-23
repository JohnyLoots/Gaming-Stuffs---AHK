#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance Force ; Force only one instance of script. 
#MaxThreadsperHotkey 2 ; Utilizes 2 CPU threads. 

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


^r:: Reload
^e::Edit


#Persistent
SetTimer, PressTheKey, 60000
Return

PressTheKey:
Send, {w down}
Sleep 1000
Send,{w up}
Send,{w down}
Sleep 1000
Send,{w up}
Return
