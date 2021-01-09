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
MacroID=36766a48-8808-493d-9824-13d627d8d0e9
Description=color safer
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


Call colorSafer(1500, 898, "800000","noway")
Call colorSafer(1500, 898, "80FF00","noway2")




Function signSafer()
	IfColor 1454, 248, "D77800", 1 Then
	MessageBox "signer not set ok, end script"
	EndScript
	End If

End Function

Function downloaderSafer()
	IfColor 1500, 898, "800000", 1 Then
	MessageBox "downloader not set ok, end script"
	EndScript
	End If
End Function

Function colorSafer_end(posX, posY, safeColor, errMsg)
	IfColor posX, posY, safeColor, 1 Then
	MessageBox errMsg
	EndScript
	End If
End Function

Function colorSafer_rtn(posX, posY, safeColor, errMsg)
	IfColor posX, posY, safeColor, 1 Then
		colorSafer_rtn = 1
	Else 
		colorSafer_rtn = 0
	End If
End Function