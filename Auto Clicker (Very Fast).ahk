!s::
SoundPlay,C:\Windows\Media\Windows Message Nudge.wav
Pause
Sleep,1000
SoundPlay,C:\Windows\Media\Speech On.wav
return

global toggleclicker := 0 

!c:: 	
	toggleclicker := !toggleclicker
	SoundPlay, C:\Windows\Media\notify.wav
Loop{	
	if (toggleclicker = 1)
	{
	Click,{LClick}
	}
	else
	{
	SoundPlay, C:\Windows\Media\tada.wav
	Break
	}		
}
return
