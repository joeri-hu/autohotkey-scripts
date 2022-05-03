; Filter Leaky Mouse Key
;
; Description:
;   Filters any successive left mouse button presses
;   that are pressed within a predefined time frame.
;
#singleinstance
#persistent
#noenv

min_delay_ms := 192

; Sets A_PriorHotkey--no interference.
~LButton:: return

; Drops the next button press if the
; minimum delay has not yet elapsed.
#if A_PriorHotkey
        and A_TimeSincePriorHotkey < min_delay_ms
    LButton:: return
#if
