[General]
SyntaxVersion=2
BeginHotkey=116
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=89bc6f17-8f75-4838-843a-8abe3fa2c92a
Description=copyer maker_equal
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


Call hotKey("Ctrl", "C")
//delete and rebuild
Call hotKey("Ctrl", "E")
KeyPress "Enter", 1
KeyPress "Up", 1
KeyPress "Tab", 1

SayString ("destination.")
Call hotKey("Ctrl", "V")

SayString (" = source.")
Call hotKey("Ctrl", "V")
SayString (";")

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
