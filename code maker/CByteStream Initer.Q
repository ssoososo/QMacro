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
MacroID=6be283d1-3343-4af7-b19c-615a22ea94fa
Description=CByteStream Initer
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

SayString ("stTxnData.")
Call hotKey("Ctrl", "V")

SayString (".Empty();")





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
