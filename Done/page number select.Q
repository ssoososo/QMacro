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
MacroID=120c443a-e303-445e-9033-47c7bf7b4584
Description=page number select
Enable=1
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

rtn = 1
rtn = colorSafer_rtn(904,76 ,"F5A542")

If rtn = 0 Then 
	MoveTo 848,78 
	LeftDoubleClick 1	
End If




Function colorSafer_rtn(posX, posY, safeColor)
	IfColor posX, posY, safeColor, 1 Then
		colorSafer_rtn = 1
	Else 
		colorSafer_rtn = 0
	End If
End Function
