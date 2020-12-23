#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force  
#MaxThreadsperHotkey 2 

Menu, Tray, Icon,C:\Program Files (x86)\Steam\steamapps\common\Satisfactory\FactoryGame.exe

toggle_craft := 0 
toggle_mining := 0 

!c::
	toggle_craft := !toggle_craft

	if (toggle_craft = 1)
		{
		SoundPlay,C:\Windows\Media\Speech On.wav
		Click, {LClick Down}
		}
	else 
		{
		SoundPlay,C:\Windows\Media\Speech Off.wav
		Click, {LClick Up}
		}
return


!m::
	toggle_mining := !toggle_mining

	if (toggle_mining = 1)
		{
		SoundPlay,C:\Windows\Media\Speech On.wav
		Send, {E Down}
		}
	else 
		{
		SoundPlay,C:\Windows\Media\Speech Off.wav
		Send, {E Up}
		}
return
;---------------------------------------------------------------------------

!q::ExitApp
