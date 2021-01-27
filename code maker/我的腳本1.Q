[General]
MacroID=65a34e6d-1c44-4ad9-baae-3c121b9909f0
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
Description=§Úªº¸}¥»1
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
Const delayTime = 20



//paste to translate page
Call hotKey("Ctrl", "C")
Call hotKey("Ctrl", "E")
KeyPress "Enter", 1
KeyPress "Up", 1
KeyPress "Tab", 1

SayString ("memcpy(destination.")
Call hotKey("Ctrl", "V")

SayString (", source.")
Call hotKey("Ctrl", "V")
SayString (", );")




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
