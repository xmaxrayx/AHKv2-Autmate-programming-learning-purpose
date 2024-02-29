#Requires AutoHotkey v2.0
#SingleInstance Force

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 10:42:42  on 29/2/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

#HotIf WinActive("ahk_exe Code.exe") && WinActive(".cs")


::cw::{
    A_Clipboard :=  'Console.WriteLine("");'
    SendInput('^v')
    Sleep(50)
    SendInput("{Left 3}")

    BackSpace_status := KeyWait("Backspace", "D T3")
    
    If BackSpace_status == 1 
    {
        ; MsgBox("pressed in time")
        Sleep(10)
        SendInput "{Delete}" 
    }

}

