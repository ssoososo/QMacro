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
MacroID=688628cc-0e16-4704-ad15-5881cee479e7
Description=hotkey
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
const delayTime=60

Call hotKey("Ctrl", "A")
Call hotKey3("Ctrl", "Shift", "Tab")






Function hotKey(key1, key2)
	KeyDown key1, 1
	Delay delayTime
	KeyPress key2, 1
	Delay delayTime
	KeyUp key1, 1
	Delay delayTime
End Function

Function hotKey3(key1, key2, key3)
	KeyDown key1, 1
	Delay delayTime
	KeyDown key2, 1
	Delay delayTime
	
	KeyPress key3, 1
	Delay delayTime
	
	KeyUp key2, 1
	Delay delayTime
	KeyUp key1, 1
	Delay delayTime
End Function
