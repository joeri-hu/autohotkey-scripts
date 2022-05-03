; Launch Snipping Tool
;
; Description:
;   Launches the Windows Snipping Tool or initiates
;   a new screen capture by pressing [Win + S].
;
#singleinstance
#persistent
#noenv

ms_paint   := "mspaint"
snip_tool  := "snippingtool"
snip_class := "Microsoft-Windows-Tablet-Snipper"
toolbar    := "Toolbar"
editor     := "Editor"

GroupAdd, class_list, % "ahk_class" snip_class toolbar
GroupAdd, class_list, % "ahk_class" snip_class editor

#s::
    if !saved && WinActive("ahk_group class_list") {
        Run, % ms_paint,,, pid
        WinWait, % "ahk_pid" pid
        WinActivate, % "ahk_pid" pid
        Send, ^v
        saved := true
    } else if WinExist("ahk_group class_list") {
        WinActivate
        Send, ^n
        saved := false
    } else {
        Run, % snip_tool
        saved := false
    }
    return
