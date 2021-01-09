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
MacroID=2a4f9777-72bd-466b-8775-a8328f1ef5b0
Description=flag inserter
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
UserVar i=1 "­«½Æ¦¸¼Æ"


For i

SayString ("DEBUG_CYAN(" & chr(34) & "flag" & chr(34) & ");")

KeyPress "Down", 1

KeyPress "Home", 1
KeyPress "Home", 1

Next




