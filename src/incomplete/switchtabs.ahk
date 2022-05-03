; Switch Browser Tabs
;
; Description:
;   Sends key strokes for switching tabs within
;   the browser by pressing the VK_MEDIA_X keys.
;
#singleinstance
#persistent
#noenv

firefox_class := "MozillaWindowClass"
chrome_class  := "Chrome_WidgetWin_1"
rdp_class     := "TscShellContainerClass" ; RDP intercepts keys :(

#if WinActive("ahk_class" firefox_class)
or WinActive("ahk_class" chrome_class)
or WinActive("ahk_class" rdp_class)
    media_play_pause:: Send, k
    media_next::       Send, ^{tab}
    media_prev::       Send, ^+{tab}

    ; media_play_pause:: {space}
    ; media_next::       Send, +n
    ; media_prev::       Send, +p
#if

return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; Obsoleted code ;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Browse within playlists instead of tabs.
;media_next:: send +n
;media_prev:: send +p

;media_player_mutex := "Microsoft_WMP_70_CheckForOtherInstanceMutex"

; Function:  InstanceExists
;
; Description:
;   Checks whether a named mutex object exists.
;
; Macros:
;   - SYNCHRONIZE
;       Standard access right required for object synchronization.
;
; Parameters:
;   - mutex_inst [in]
;       Name of the uniquely identifiable mutex object.
;
; Returns:
;   true ....... Mutex object exists.
;   false ...... Mutex object was not accessed.
;
SYNCHRONIZE := 0x00100000

InstanceExists(mutex_name) {
    mutex_object := DllCall("OpenMutexW", int,SYNCHRONIZE
                            , int,0, wstr,mutex_name, ptr)
    if not errorlevel
        return false

    if not mutex_object
        return false

    DllCall("CloseHandle", ptr,mutex_object)

    return true
}
