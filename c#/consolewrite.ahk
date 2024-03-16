#Requires AutoHotkey v2.0
#SingleInstance Force

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 10:42:42  on 29/2/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
;
inptHck := InputHook(), inptHck.KeyOpt('{All}', 'E')
    
#HotIf WinActive("ahk_exe Code.exe") && WinActive(".cs")
    
    
::cw:: {
    A_Clipboard :=  'Console.WriteLine("");'
    SendInput('^v')
    Sleep(50)
    SendInput("{Left 3}")

    inptHck.Start()
    inptHck.Wait(3)

    if inptHck.EndKey == "Backspace"{
        ; KeyWaitAny(Options:="V")
        SendInput("{Delete}")
        Sleep(50)
    }
    else if inptHck.EndKey == "Delete"{
    SendInput("{BackSpace}")
    Sleep(50)

    }


}





KeyWaitAny(Options:="")
{   ;https://www.autohotkey.com/boards/viewtopic.php?f=82&t=127003&p=561963#p561963 
    ;thanks mikeyww <3


    ih := InputHook(Options)
    if !InStr(Options, "V")
        ih.VisibleNonText := false
    ih.KeyOpt("{All}", "E")  ; End
    ih.Start()
    ih.Wait()
    ih.Stop()  ; Return the key name
    return ih.EndKey
}



