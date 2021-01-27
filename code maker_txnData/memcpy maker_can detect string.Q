[General]
SyntaxVersion=2
BeginHotkey=115
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=67a43592-c66d-4d25-a469-e5cb48da33d1
Description=memcpy maker_can detect string
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

Dim number
Dim startPos
Dim endPos

Clipboard = Plugin.Sys.GetCLB()


//get member name
Call hotKey("Ctrl", "C")
member = Plugin.Sys.GetCLB()

//getnumber
Call hotKey("Alt", "L")
Call hotKey("Ctrl", "C")
Clipboard = Plugin.Sys.GetCLB()
startPos = InStr(Clipboard,"[")
endPos = InStr(Clipboard,"]")
number = Mid(Clipboard, startPos+1, endPos-startPos-1)

//rebuild line
KeyPress "Enter", 1
KeyPress "Up", 1
KeyPress "Tab", 1

SayString ("memcpy(destination.stTermPRM.")
SayString(member)

SayString (", source.stTermPRM.")
SayString(member)
SayString (", " & number & ");")




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
