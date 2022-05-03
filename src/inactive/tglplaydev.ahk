; Toggle Playback Device
;
; Description:
;   Toggles the default playback device to
;   headphones or speakers by pressing [Win + S].
;
#singleinstance
#persistent
#noenv

#s::
    nircmd := "c:\tools\nircmd.exe"
    device := (device == "Speakers" ? "Headphones" : "Speakers")

    Run, % nircmd " SetDefaultSoundDevice " device,, Hide
    return
