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
MacroID=618e0de3-e76a-472c-8e7c-5455815ba95d
Description=BK_pdf reader translater
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

//paste to translate page
Call hotKey("Ctrl", "C")
Call leftClickPos(1685, 146)
bk = Plugin.Window.Foreground()
//Call hotKey("Alt", "Tab")
TracePrint "bk="  &bk
RestoreMousePos
UnlockMouse 

/*keyboard test
Call BK_hotKey("A", "B")
Call Plugin.Bkgnd.KeyPress(bk, 66)
Call Plugin.Bkgnd.KeyDown(bk, 65)
Call Plugin.Bkgnd.KeyPress(bk, 66)
*/

/*click test
Dim i
For i = 1 To 2000
TracePrint "i="  &i
Call Plugin.Bkgnd.LeftClick(bk, i, i)
Next
*/

/*
Call BK_hotKey("Ctrl", "Tab")
Call BK_leftClickPos(1400, 473)
Call BK_hotKey("Ctrl", "V")
Delay 200
Call BK_leftClickPos(1425, 642)
Call BK_hotKey("Ctrl", "C")
Call BK_hotKey("Ctrl", "Tab")

Call BK_leftClickPos(1160, 346)
Call BK_hotKey("Ctrl", "A")
Call BK_hotKey("Ctrl", "V")
*/


Function BK_hotKey(key1, key2)
	Call Plugin.Bkgnd.KeyDown(bk, asc(key1))  
	Delay delayTime
	Call Plugin.Bkgnd.KeyPress(bk, asc(key2))
	Delay delayTime
	Call Plugin.Bkgnd.KeyUp(bk, asc(key1)) 
	Delay delayTime
End Function

Function BK_leftClickPos(x, y)
	Call Plugin.Bkgnd.LeftClick(bk, x, y)  
	Delay delayTime
End Function

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
