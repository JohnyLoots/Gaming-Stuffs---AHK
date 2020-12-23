!s::
SoundPlay,C:\Windows\Media\Windows Message Nudge.wav
Pause
Sleep,1000
SoundPlay,C:\Windows\Media\Speech On.wav
return


global toggleclicker := 0 
global self_count := 0 
!c:: 	
	toggleclicker := !toggleclicker
	SoundPlay, C:\Windows\Media\notify.wav
Loop{	
	if (toggleclicker = 1)
	{
		Click,{LClick}                  ;--------ATTACKS UNTIL COUNTER REACHES 300   THEN SWITCHES TO FIRST HOTBAR AND USES IT. (USED FOR EATING FOOD WHILE FARMING SO CHAR DOESNT STARVE)  
		Sleep,1000
		self_count += 1                 
		if (self_count = 300){          ;-------------------------COUNTER REACHES 300             
			self_count := 0 
			Send,{1}                      ; FOOD IN FIRST HOTBAR (preferable a stack steak if your going to afk while sleeping xD)
			Sleep,100
			Click,Down, Right
			Sleep, 3000
			Click,Up, Right
			Sleep,100
			Send,{2}                      ; WEAPON IN SECOND
		}
	}
	else
	{
	SoundPlay, C:\Windows\Media\tada.wav
	Break
	}		
}
return
;---------------------------------------------



;      SAME SCRIPT BUT WITHOUT EATING 
;---------------------------------------------
^!c:: 	
	toggleclicker := !toggleclicker
	SoundPlay, C:\Windows\Media\notify.wav
Loop{	
	if (toggleclicker = 1)
	{
		Click,{LClick}
		Sleep,1000
	}
	else
	{
	SoundPlay, C:\Windows\Media\tada.wav
	Break
	}		
}
return
