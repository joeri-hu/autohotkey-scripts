; Reconnect Bluetooth Device
;
; Description:
;    ;
;
#singleinstance
#persistent
#noenv

; een ander idee is om altijd een hidden dev & print window open te hebben
; dit iedere trigger checke... etc..

; create_devices_window -- start device window hidden in background
; check_existence (of said window) // call ^^ if not found
; if newly created then wait with sleep? ok

; new method: obtain hwnd id first then work with id 

if dev_winid != 0

   if winexists ahk_id %dev_winid%

       WinActivate, ahk_id %dev_winid%
       SendInput, %recon_seq%
   else
       dev_winid := WinExists, %dev_win%

       if dev_winid
            winactivate...
            sendinput...
       else
            
       

   

; if winexists ahk_id 
;    if not -> call 

#q::
    title     := "Devices and Printers"
    class     := "CabinetWClass"
    dev_win   := title " ahk_class " class
    dev_cmd   := "control printers"
    delay_ms  := 3072
    recon_seq := "plt{AppsKey}{Down}{Right}{Up}{Enter}"

    Run, %dev_cmd%
    WinWaitActive, %dev_win% ; note: does not apply to hidden windows
    Sleep, %delay_ms%

    WinHide

    Sleep, 5000

    WinActivate, %dev_win%

    SendInput, %recon_seq%
    Sleep, 100               ; can we polish this?
    WinClose

    return
