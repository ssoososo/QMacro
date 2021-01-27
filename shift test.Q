[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=4572419f-4317-43af-a64a-a92c905963bb
Description=shift test
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]





For 1
	KeyDown "Shift", 1
	Delay 1000
	
	KeyDown "Right", 1
	Delay 1000
	KeyUp "Right", 1
	Delay 1000
	
	KeyUp "Shift", 1
	Delay 1000
	
Next




Function hotKey(key1, key2)
	KeyDown key1, 1
	Delay delayTime
	KeyPress key2, 1
	Delay delayTime
	KeyUp key1, 1
	Delay delayTime
End Function
