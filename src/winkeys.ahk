; @file       winkeys.ahk
; @version    0.1
; @date       April 2022
; @author     Joeri Kok
; @copyright  GPL-3.0 license
;
; @title
;   Generic Windows Shortcuts
; @brief
;   Remaps common Windows keyboard shortcuts.

#noenv
#persistent
#singleinstance

#include <ctlib>

; @hotkey
;   Switch virtual desktops
; @shortcuts
;   Win + CapsLock ....... Toggle between the next and previous desktop.
;   Win + Q .............. Next virtual dekstop.
;   Win + Shift + Q ...... Previous virtual desktop.
#CapsLock:: shortcut.toggle_desktop()
#q::        shortcut.switch_desktop(cycle.next)
#+q::       shortcut.switch_desktop(cycle.prev)

; @hotkey
;   Switch topmost windows
; @shortcut
;   Win + Z .............. Next topmost window.
;   Win + Shift + Z ...... Previous topmost window.
#z::  shortcut.switch_window(cycle.next)
#+z:: shortcut.switch_window(cycle.prev)

; @hotkey
;   Play next (YouTube) tab in next virtual desktop
; @shortcut
;   Win + A
;     1) Switch to next virtual desktop.
;     2) Wait for Chrome to become active.
;     3) Switch tab in Chrome.
;     4) Start YouTube video.
;     5) Switch back to previous virtual desktop.
#a::
    shell.wait_for_winkey()
    shortcut.switch_desktop(cycle.next)
    browser.chrome.wait_for_focus()
    shortcut.switch_tab(cycle.next)
    shortcut.playpause_tab()
    shortcut.switch_desktop(cycle.prev)
    return

; @hotkey
;   Close current (YouTube) tab and play next tab in next virtual desktop
; @shortcut
;   Win + Shift + A
;     1) Switch to next virtual desktop.
;     2) Wait for Chrome to become active.
;     3) Close tab in Chrome.
;     4) Wait for Chrome to close the tab.
;     5) Start YouTube video.
;     6) Switch back to previous virtual desktop.
#+a::
    shell.wait_for_winkey()
    shortcut.switch_desktop(cycle.next)
    browser.chrome.wait_for_focus()
    shortcut.close_tab()
    browser.chrome.wait_for_focus()
    shortcut.playpause_tab()
    shortcut.switch_desktop(cycle.prev)
    return

; @hotkey
;   Remove playlist part from YouTube URL
; @shortcut
;   Win + D
;     1) Select address bar.
;     2) Deselect/place cursor.
;     3) Select playlist part.
;     4) Remove playlist from URL.
;     5) Reload webpage.
#d::
    shortcut.select_addr_bar()
    shell.send("{end}")
    shell.send("{ctrl down}{shift down}{left 4}{ctrl up}{left}{shift up}")
    shell.send("{del}")
    shell.send("{enter}")
    return

; @hotkey
;   Start Git Bash from either the home or current explorer directory
; @shortcut
;   Win + S
;     1) Get the address bar text.
;     2) Otherwise, get the home directory.
;     3) Run Git Bash with said directory.
#s::
    dir := shell.get_control_text("ToolbarWindow323")
    dir := ErrorLevel
        ? shell.get_env_var("UserProfile")
        : string.retain_after(": ", dir)
    app.bash.set_params("""--cd=" . dir . """")
    app.bash.run()
    return
