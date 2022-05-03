; Save Screenshot
;
; Description:
;   Saves a screenshot to a predefined
;   location when [Win + Q] is pressed.
;
#singleinstance
#persistent
#noenv

nir_tool := "nircmd"
dest_dir := "d:\proeftentamen"

; NirCmd | Screenshot command options
; ---------------------------------------------------
; savescreenshot     : Captures primary monitor
; savescreenshotwin  : Captures active window
; savescreenshotfull : Captures entire virtual screen

scr_cmd  := "savescreenshotwin"
scr_name := "screenshot"
scr_ext  := "png"

#q::
    scr_date := A_DD "." A_MM "." A_YYYY
    scr_time := A_Hour "." A_Min "." A_Sec "." A_MSec

    command := nir_tool " " scr_cmd " """ dest_dir "\" scr_name
               . "_" scr_date "_" scr_time "." scr_ext """"

    Run, % command,, Hide
    return
