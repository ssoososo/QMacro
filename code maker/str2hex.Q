[General]
SyntaxVersion=2
BeginHotkey=112
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=f87a05e8-b662-4a3f-82d0-05310c697f77
Description=str2hex
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
UserVar loopTime = 2 "loopTime"


For looptime
	KeyPress "\", 1
	KeyPress "X", 1
	KeyPress "Right", 1
	KeyPress "Right", 1
Next

