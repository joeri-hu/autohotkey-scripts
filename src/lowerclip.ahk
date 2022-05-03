; @file       lowerclip.ahk
; @version    0.1
; @date       April 2022
; @author     Joeri Kok
; @copyright  GPL-3.0 license
;
; @title
;   Lowercase Clipboard Converter
; @brief
;   Converts the textual contents of the clipboard to its lowercase equivalent.

#persistent
#singleinstance
#noenv

; @hotkey
;   Paste clipboard converted to lowercase
; @shortcuts
;   Ctrl + Win + V
;     1) Convert the clipboard to lowercase.
;     2) Paste the clipboard to the active window.
^#v::
    StringLower, cliplow, Clipboard
    Clipboard := cliplow
    Send, ^v
    return
