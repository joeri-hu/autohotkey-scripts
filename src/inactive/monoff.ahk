; Turn Off Monitor
;
; Description:
;   Turns off all monitors by pressing [Win + Q].
;
#persistent
#singleinstance
#noenv

#q::
    Run, "c:\tools\nircmd.exe monitor off",, Hide
    return
