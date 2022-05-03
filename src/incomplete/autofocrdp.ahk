#Persistent

rdp_class := "TscShellContainerClass"

#If WinActive("ahk_class" rdp_class)
    ~LButton::
        Click
        ToolTip, "hi there"
#If
