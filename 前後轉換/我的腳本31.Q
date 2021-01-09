[General]
SyntaxVersion=2
BeginHotkey=112
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=27
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=95746030-55d0-483d-84f7-516fca3b1d63
Description=get window id to copyBoard
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
Hwnd = Plugin.Window.MousePoint()
Call Plugin.Sys.SetCLB(Hwnd)
