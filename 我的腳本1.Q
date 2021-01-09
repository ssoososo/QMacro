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
MacroID=c835f27c-3735-4cd4-8501-6da085bda629
Description=Window.Find
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

Hwnd = Plugin.Window.Find("AJJL", 0)  
MsgBox "查找到的父窗口句柄："& Hwnd

Hwnd = Plugin.Window.Find(0, "AJJL")  
MsgBox "查找到的父窗口句柄："& Hwnd
