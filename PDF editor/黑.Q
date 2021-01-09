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
MacroID=4f99acc7-3537-4e61-9175-c0bbac5b9dfe
Description=¶Â
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
const delayTime=60

LockMouse
SaveMousePos 

MoveTo 739, 42
Delay delayTime
LeftClick 1
Delay delayTime

MoveTo 74, 75
Delay delayTime
LeftClick 1
Delay delayTime

//MoveTo 96, 181  //green
MoveTo 20, 154
Delay delayTime
LeftClick 1
Delay delayTime

RestoreMousePos
UnlockMouse
