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
MacroID=412ec2b3-3247-4872-9ae3-fac6ffd644e8
Description=find pic
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

FindPic 0,0,1920,1080,"D:\anything\program\QuickMacroPortable\QMScript\_pic\image.bmp",0.9,intX,intY
If intX > 0 And intY > 0 Then 
	MoveTo intX+5, intY+5
	LeftClick 1
End If

MessageBox "over"
