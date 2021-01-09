[General]
SyntaxVersion=2
BeginHotkey=113
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=2053c3ed-0aee-45d1-8838-d8a9851df7ed
Description=pdf reader translater
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
Const delayTime = 60

LockMouse
SaveMousePos

//paste to translate page
Call hotKey("Ctrl", "C")
Call leftClickPos(1685, 146)
Call hotKey("Ctrl", "Tab")
Call leftClickPos(1400, 473)
KeyPress "BackSpace", 1
Call hotKey("Ctrl", "V")
Delay 200
Call leftClickPos(1425, 642)
Call hotKey("Ctrl", "C")
Call hotKey("Ctrl", "Tab")

Call leftClickPos(1160, 346)
Call hotKey("Ctrl", "A")
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
