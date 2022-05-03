; Minimize Remote Desktop Connection Window
;
; Description:
;   Minimizes or activates the RDP window based on
;   its active state by pressing [CapsLock].
;
#singleinstance
#persistent
#noenv

rdp_class := "TscShellContainerClass"
activate_delay := 384

; The CapsLock key is unaffected by RDP's keyboard hook
capslock::
    if WinActive("ahk_class" rdp_class) {
        WinMinimize, A
        WinActivate, % "ahk_id" prev_active_wnd
        ControlFocus, % "ahk_id" prev_active_wnd
    } else {
        prev_active_wnd := WinActive("A")
        WinActivate, % "ahk_class" rdp_class
        ControlFocus, % "ahk_class" rdp_class
    }
    Sleep, activate_delay
    return
