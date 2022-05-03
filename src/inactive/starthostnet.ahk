; Start Hosted Network
;
; Description:
;   Starts the locally configured wireless hosted
;   network (access point) by pressing [Win + W];
;
#singleinstance
#persistent
#noenv

is_instance_elevated() {
    return A_IsAdmin
}

#w::
    if (not is_instance_elevated()) {
        info_icon := 0x40
        MsgBox, % info_icon, % "Start Hosted Network"
            , % "Insufficient access rights :("
            . "`nRun with administrative privileges"
        return
    }
    Run, % "netsh wlan start hostednetwork",, Hide
    ics := "sharedaccess"
    Run, % Format("cmd /q /c net stop {1} & net start {1}", ics),, Hide
    return
