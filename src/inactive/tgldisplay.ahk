; Toggle Display Setup
;
; Description:
;   Toggles the display setup between 'main' and 'night'
;   mode by pressing [Win + A].
;
#persistent
#singleinstance
#noenv

#a::
    if (mode = "main") {
        RunWait, c:\tools\nircmd.exe setdisplay monitor:0 1920 1080 32,, Hide
        RunWait, displayswitch /extend

        ; runwait c:\tools\nircmd.exe win normal title "new song list.txt - notepad"
        ; runwait c:\tools\nircmd.exe win setsize title "new song list.txt - notepad" 2875 100 411 768
        ; runwait c:\tools\nircmd.exe win normal handle 262792
        ; runwait c:\tools\nircmd.exe win setsize handle 262792 1920 100 957 768

        mode := "night"
    } else {
        RunWait, displayswitch /external
        RunWait, c:\tools\nircmd.exe setdisplay monitor:0 1280 720 32,, Hide
    
        mode := "main"
    }
    return
