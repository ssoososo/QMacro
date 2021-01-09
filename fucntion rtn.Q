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
MacroID=50a2db46-27eb-4825-a05a-922523dfca2a
Description=fucntion rtn
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


Dim rtn
rtn =Test("ABC")
TracePrint rtn








Function test(A)
	test=4
End Function
