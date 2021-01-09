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
MacroID=a200d028-a22a-4bd9-9074-91c8f0b99a75
Description=QUI介面測試
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=1
QUI=Form1
[Relative]
SetupOCXFile=
[Comment]

[UIPackage]
UEsDBBQAAgAIAFB0KVJ2FKTjcwMAAAgmAAAJABEAVUlQYWNrYWdlVVQNAAcAv/lfAL/5XwC/+V/tWUtPU0EU/m4LtOVRKO+3FfAdE3FtTIRIggE1gJqYuKhQDRFuSVsiLkz8Iy5M2JmYuHHjwhh/gK6MS126Y8UO6pl7Z+xISrzzCEMTvuZ0yuWe+905Z+bMd+fGEeLb18zPN+8Hf+EAriOO/UoKTdIxj1uADiDG/96vVCricOUEdYU9sgaewwS1jWQs50myZrIUWQtZG1krWTpMPdrJMtxv/ySMdYsFFOhTRhY34VNbxAuooJdGjLiW959zX20P7X3+8t2Ls9+p8Ng9zOIK9JGE5wn+9kPO2XgZ8gp++X/TWMKcwR00UwUU/I0a/EsU7w3kcRs5rFOrik6qwnI+o/o18FbM3+NmJzgazBSK6wbTD8x/0sDfgxlM/V1jZ2fHynUekRjb1fDTrTvV+qdefzyuMxjYqpPDY6xp3kMaMY/pkwTXnlF8YlL9u49VlMh076CD+FtR1b1RfOIS/wKx5rCCOxSHNcW1l9d/rwmhVovK3yDxLxH/Fq37Bvn3VPMvPy9Mk/pYIytq3km3xvhrlPpf5Z+iPCzjmTp/oGdSCvFvOpD/ZcP4M22eVOBPINTwDA9p5BVp/OXpW3P+Kcc/KfV/jmKvHvV/+5/m14vKn5L4Z4jfN4u/cv/ZXL32d/wx/TlpwO95rJ6dCmpBbQjdWUt/usZu7ZgF9zi/mF3M+aXsYr64+uQQ/1l/Y7M8VdjS5Rf+uhmod/1i4fkjqP/DCvOvhdcABhf6o5XXAAYb+qMfbB2I3v822NUfA9SOKPCnYVd/dFHbp8DfDrf6g619Cf7bgv4I+EcV+p+BVf0R9KdXgb9T4v/0e/vWux8mT3BmUNiyqIkYt9dklzX8Xddf0/XPFDb05yC1PQrjrwtu9Wc37OrPIT6no/L3wK3+ZLVC6M8bVH1W8ZTuga3C/pE8f/VJ/b9LVa9En+dBDVxR7r/O/me/xD+PTYpAmWIwR+Yrr8E6/R+AXP+Z/r9qkP/q/vPYIeccZ/0/tVkuF3xTf/31q971+9vdDyWT1dvF+we2Xoj3yi70P6vXQv/Z0P/nqZ1A9Po/DLv6/wLU9h9HYFf/j1N7TqH/o3Cr/9leidh/drH/mIXd/Ud2vbMK8T8t8ZvC9P3FR4Q19AF96dSxGNzCtX43hQ39f5HaMwrjbwxu9f847Or/S3xOReWfgFv9z3Il9P8fUEsBAhcLFAACAAgAUHQpUnYUpONzAwAACCYAAAkACQAAAAAAAAAAAACAAAAAAFVJUGFja2FnZVVUBQAHAL/5X1BLBQYAAAAAAQABAEAAAACrAwAAAAA=


[Script]

Event Form1.Load
MessageBox	"LOAD"
    //當窗體被加載時觸發的事件
End Event

Call Form1.Load
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
    ElseIf key=89 Then
        Exit do
    Else 
        SayString "請按Y或者N，不要按其他鍵(等待按鍵...)"
        KeyPress "Enter", 1
    End If 
loop





Event Form1.Button1.Click
	MessageBox	"B1"
End Event
