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
MacroID=0db2e1c8-807e-4f92-a1d6-019afff4f88e
Description=getBuffer safer
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

//copy CByteSteam
Call hotKey("Ctrl", "C")
streamName = Plugin.Sys.GetCLB()

//copy line
Call hotKey("Alt", "L")
Call hotKey("Ctrl", "C")
originalLine = Plugin.Sys.GetCLB()

//delete and rebuild
Call lineRebuilder()

SayString ("if(" & streamName & ".IsEmpty())")
KeyPress "Enter", 1
KeyPress "BackSpace", 4
SayString("{")
KeyPress "Enter", 1
SayString ("DEBUG_WARN(" & chr(34) & streamName & " is empty, don't perform getBuffer!" & chr(34) & ");")

KeyPress "Down", 1
KeyPress "Enter", 1
SayString ("else")
KeyPress "Enter", 1
KeyPress "BackSpace", 4
SayString("{")
KeyPress "Enter", 1
SayString (originalLine)


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

//use this after select all line 
Function lineRebuilder()
	KeyPress "BackSpace", 1
	KeyPress "Enter", 1
	KeyPress "Up", 1
	KeyPress "Tab", 1
End Function
