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
MacroID=a9af4027-51dd-4987-bffa-3b08923df633
Description=·s¼W
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
Const delayTime=60 

LockMouse
SaveMousePos

MoveTo 82, 45
Delay delayTime
LeftClick 1
Delay delayTime

MoveTo 536, 82
Delay delayTime
LeftClick 1
Delay delayTime

MoveTo 548, 166
Delay delayTime
LeftClick 1
Delay delayTime

RestoreMousePos
UnlockMouse
