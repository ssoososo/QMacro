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
UEsDBBQAAgAIAOxdL1LChQ7FbAMAAAgmAAAJABEAVUlQYWNrYWdlVVQNAAfKgAFgyoABYMqAAWDtWUtPU0EU/m4LtOVRKO+3FfAdE3FtTCyRBANqADUxcVGhGiLckj4i7tz5K1yYuDMxcePGhT9BV8YlLnWFG3ZSz9zO2JHwuPMIQxO+5nTKped+M+fMnPnuNIoqvn5Jbb75MPgDu3AdUexUEmiSrnncAnQAEf73TqVSEZcrJ6gr/CFr4DmMUdtIxnIeJ2smS5C1kLWRtZIlq6lHO1mK++2chLFuMY88vUpI4yZ8agt4ARX00owR9/IO+e7m0KuR37++eVH6/DJRvXYPM7gCfcTheYK//RBe0cr/m8IiZg160EwVUPA3avAvUrzXkcNtZLFGrSo6qQrL+Qzr18BbsX6Pm53gaDCdL6wZLD8w/0kDfw9mMPV3ja2tLSv3eURibFvDT7fu1Oqfev3xuM5gYLtOFo+xqtmHJCIe0ycxrj3D+ESk+ncfKyiS6fagg/hbUdO9YXyiEv88sWaxjDsUh1XFvZfXf68JVa0Wlr9B4l8k/g3a9w3y76nmX35emCL1sUpW0OxJt8b8a5TGX+PPUB6W8EydP9AzCYX4N+3K/5Jh/Jk2jyvwx1DV8AwPaeYVaP7l6F1z/SnHPy6Nf5Zirx71/8ef5PcLy5+Q+KeJ3zeLv/L42Vq99m/+Mf05acDveayenQpqwd44SH+6xvbeMQv6OLeQXsj6xfRCrrDyZB//GX+9XMrkN3T5hb9uBupdv1h4/gjq/7DC+mvhNYDBhf5o5TWAwYb+6AfbB8KPvw129ccAtSMK/EnY1R9d1PYp8LfDrf5ge1+Mf7agPwL+UYXxp2BVfwTj6VXg75T4P/98e+v9d5MnODMoHFnsiQi312SXNfxd11/T/c8UNvTnILU9CvOvC271Zzfs6s8hvqbD8vfArf5ktULozxtUfVbwlPrAdmH/SJ6/+qTx36WqV6TX86AGLiuPX+f8s1/in0OZIlCiGMyS+cp7sM74ByDXf6b/rxrkv3b+PLbPd46z/s+US6W8b+qvv3/Vu35/t/2xaLJ7u/j9ge0X4ndlF/qf1Wuh/2zo//PUTiB8/R+GXf1/AWrnjyOwq//HqT2nMP5RuNX/7KxEnD+7OH9Mw+75I7vfWYX4n5b4TWH6+8UnVGvoA3rTqWMRuIVr/W4KG/r/IrVnFObfGNzq/3HY1f+X+JoKyz8Bt/qf5Uro/79QSwECFwsUAAIACADsXS9SwoUOxWwDAAAIJgAACQAJAAAAAAAAAAAAAIAAAAAAVUlQYWNrYWdlVVQFAAfKgAFgUEsFBgAAAAABAAEAQAAAAKQDAAAAAA==


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
