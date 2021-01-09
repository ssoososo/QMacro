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
MacroID=89baae1c-6474-4093-82eb-2da50fd39ecc
Description=按鍵偵測
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



Do
    //等待按鍵
    key=WaitKey()
    KeyPress "Enter", 1
    TracePrint "用戶按下的鍵是：" & key
    
    If key=78 Then
        Call GuanBiChuangKou()
        //按下n不保存，直接關閉
        Delay 1000
        KeyPress "N", 1
        Delay 1000
    ElseIf key=90 Then
        Exit do
    Else 
        SayString "請按Y或者N，不要按其他鍵(等待按鍵...)"
        KeyPress "Enter", 1
    End If
     
loop
