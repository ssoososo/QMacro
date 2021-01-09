[General]
SyntaxVersion=2
BeginHotkey=96
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=e138cd44-95a2-46eb-98f7-4e1cfbdd83b2
Description=switch chrome dark mode
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

KeyDown "Alt", 1
Delay delayTime
KeyDown "Shift", 1
Delay delayTime
KeyPress "M", 1
Delay delayTime
KeyUp "Shift", 1
Delay delayTime
KeyUp "Alt", 1
