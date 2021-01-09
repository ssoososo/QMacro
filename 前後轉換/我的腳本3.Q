[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=89faf4d0-a395-4de8-bb5e-e3c71c8a1e5d
Description=前台轉後台
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
/*
Hwnd = Plugin.Window.MousePoint()
Call Plugin.Bkgnd.KeyDown(Hwnd, asc("A"))
MessageBox "choose 2 plz"

Hwnd2 = Plugin.Window.MousePoint()
Call Plugin.Bkgnd.KeyPress(Hwnd2, 66)

Call Plugin.Bkgnd.KeyDown(Hwnd, 65)
Call Plugin.Bkgnd.KeyPress(Hwnd2, 66)
*/

//Plugin hwnd=Window.GetKeyFocusWnd()
//Hwnd = Plugin.Window.Find("這裡寫你要找的窗口標題",0)


//=======================
//    set window title
//=======================
Hwnd = Plugin.Window.MousePoint()
MsgBox "Hwnd=" & Hwnd
sText = Plugin.Window.GetText(Hwnd)  
MsgBox "得到窗口句柄的標題：" & sText

/*
Call Plugin.Window.SetText(Hwnd, "AJJL")

sText = Plugin.Window.GetText(Hwnd)  
MsgBox "得到窗口句柄的標題：" & sText
*/
