[General]
SyntaxVersion=2
BeginHotkey=120
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=347df690-7d08-486f-b804-6626a27b4f0b
Description=auto loader absolute_contactless so
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
UserVar ApOrSoFlag = DropList{"ap":1|"so":2}=1 "設置內容"
UserVar signFilePath=0 "signFilePath"
UserVar downloadFilePath=0 "downloadFilePath"
UserVar ApSoFileName=0 "ap/so檔案名稱"
UserVar downloadFileName="App.mci" "downloadFileName"
UserVar closeMsgBoxFlag = DropList{"是":1|"否":0}=0 "是否關閉提醒"
UserVar downloadDelayTime = 5 "signDelayTime sec"

If signFilePath = 0  or downloadFilePath = 0 Then 
	MessageBox "請設置路徑"
	EndScript
End If

If ApSoFileName = 0 and ApOrSoFlag = 2 Then 
	MessageBox "請設置so名稱"
	EndScript
End If

Const delayTime = 60

LockMouse
//0...get sign window and set sign window pos
Call signSafer()
Call downloaderSafer()
Call leftClickPos(1454 ,248)
bk = Plugin.Window.Foreground()
Call Plugin.Window.Move(bk, 1383, 0)

//1...sign choose ap or so
Call leftClickPos(1893, 77)
Delay 500
If ApOrSoFlag = 1 Then 
 	Call leftClickPos(1829, 96)
Else 
	Call leftClickPos(1826, 122)
End If

//2...sign set path
Call leftClickPos(1817, 362)
Delay 500

SayString signFilePath
KeyPress "Enter", 1
Delay delayTime

SayString ApSoFileName
KeyPress "Enter", 1
Delay delayTime

//3...sign
If closeMsgBoxFlag = 0 Then 
	MessageBox "ok to sign?"
End If

Call leftClickPos(1546, 384)
KeyPress "Enter", 1
Delay 600
SayString "0000"

Call leftClickPos(1546, 384)

//4...check sign ok or not
If closeMsgBoxFlag = 0 Then 
	MessageBox "If sign ok, press enter"
End If


//5...get and set download window
Call leftClickPos(1550 ,898)
bk = Plugin.Window.Foreground()
Call Plugin.Window.Move(bk, 1220, 519)

//6...download set path
Delay downloadDelayTime * 1000 //wait for sign

Call leftClickPos(1876, 746)
Delay 500

SayString downloadFilePath
KeyPress "Enter", 1
Delay delayTime

SayString downloadFileName
KeyPress "Enter", 1
Delay delayTime

//7...download
If closeMsgBoxFlag = 0 Then 
	MessageBox "ok to download?"
End If

Call leftClickPos(1304, 584)

UnlockMouse


Function leftClickPos(x, y)
	MoveTo x, y
	Delay delayTime
	LeftClick 1
	Delay delayTime
End Function


Function signSafer()
	IfColor 1454, 248, "D77800", 1 Then
	MessageBox "signer not set ok, end script"
	EndScript
	End If

End Function

Function downloaderSafer()
	IfColor 1500, 898, "800000", 1 Then
	MessageBox "downloader not set ok, end script"
	EndScript
	End If
End Function
