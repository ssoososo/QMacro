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
MacroID=05ecd318-c046-46c5-9c16-376579f0d13c
Description=½s¿è
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

MoveTo 82, 45
Delay delayTime
LeftClick 1
Delay delayTime

MoveTo 496, 81
Delay delayTime
LeftClick 1
Delay delayTime

RestoreMousePos
UnlockMouse
