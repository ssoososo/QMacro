[General]
SyntaxVersion=2
BeginHotkey=112
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=04740c1d-cfb7-4aa9-99c0-8663004e4369
Description=seacher
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
Clipboard = Plugin.Sys.GetCLB()
Call hotKey("Alt", "Tab")

Call hotKey("Ctrl", "F")
Call hotKey("Ctrl", "V")
KeyPress "Enter", 1


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
