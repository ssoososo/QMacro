[General]
SyntaxVersion=2
BeginHotkey=112
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=0
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=09a24006-da25-4b6c-9495-f951c724a57c
Description=¦Û°ÊÂ½Ä¶
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

//copy all
Call hotKey("Ctrl", "A")
Call hotKey("Ctrl", "C")

//paste to translate page
Call hotKey("Alt", "Tab")
Call leftClickPos(387, 319)
Call hotKey("Ctrl", "A")
Call hotKey("Ctrl", "V")

//delay for translate 
Delay 620

//copy
Call leftClickPos(1458, 401)
Call leftClickPos(1458, 445)
Call leftClickPos(1458, 489)

//paste to editor
Call hotKey("Alt", "Tab")
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
