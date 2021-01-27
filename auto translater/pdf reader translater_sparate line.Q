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
MacroID=a1dc751d-41d4-4a70-abef-38f7144d0cfa
Description=pdf reader translater_sparate line
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

rtn = colorSafer_rtn(1685, 146, "FFFFFF")
If rtn = 1 Then 
	MsgBox "pls set window first"
	EndScript
End If
Call leftClickPos(1685, 146)

Call leftClickPos(1160, 346)
Call hotKey("Ctrl", "A")
KeyPress "Right", 1

KeyPress "Enter", 1
KeyPress "Enter", 1
SayString "*********************************************"
KeyPress "Enter", 1
SayString "*********************************************"

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


Function colorSafer_rtn(posX, posY, safeColor)
    IfColor posX, posY, safeColor, 1 Then
        colorSafer_rtn = 1
    Else 
        colorSafer_rtn = 0
    End If
End Function
