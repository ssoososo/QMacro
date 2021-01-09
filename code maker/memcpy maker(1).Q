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
MacroID=afa8d18a-c84c-4565-8bef-d84ca552424d
Description=memcpy maker
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
