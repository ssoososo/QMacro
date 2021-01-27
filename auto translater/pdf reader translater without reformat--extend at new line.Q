[General]
SyntaxVersion=2
BeginHotkey=114
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=4d9b4171-2907-4e04-9864-1d4f5bdfd7f9
Description=pdf reader translater without reformat--extend at new line
Enable=1
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
UserVar delayTime=10 "delayTime"

LockMouse
SaveMousePos

//paste to translate page
Call hotKey("Ctrl", "C")

Call leftClickPos(1685, 146)

Call leftClickPos(1160, 346)
Call hotKey("Ctrl", "A")
KeyPress "Right", 1

KeyPress "Enter", 1
KeyPress "Enter", 1
Call hotKey("Ctrl", "V")

Call hotKey("Alt", "Tab")


RestoreMousePos
UnlockMouse 


Function hotKey(key1, key2)
	KeyDown key1, 1
	Delay delayTime
	KeyPress key2, 1
	Delay delayTime
	KeyUp key1, 1
	Delay delayTime
End Function

Function leftClickPos(x, y)
	MoveTo x, y
	Delay delayTime
	LeftClick 1
	Delay delayTime
End Function
