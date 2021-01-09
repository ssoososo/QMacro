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
MacroID=fabdeebf-f381-4453-9151-db33615f486a
Description=copyer maker
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
Const delayTime = 10

LockMouse
SaveMousePos

//paste to translate page
Call hotKey("Ctrl", "C")
SayString ("destination.")
Call hotKey("Ctrl", "V")

SayString (", source.")
Call hotKey("Ctrl", "V")

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
