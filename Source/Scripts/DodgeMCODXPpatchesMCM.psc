Scriptname DodgeMCODXPpatchesMCM extends SKI_ConfigBase

Event OnConfigInit()
    ModName = "DMCO Patches"
    Pages = new string[1]
    Pages[0] = "Settings"
EndEvent


Event OnPageReset(String page)
    if (page == "Settings")
        AddHeaderOption("General Settings")
        ; true = starts enabled, false = starts disabled
        AddToggleOptionST("Enable Dodge Attacks", "dodgeAttacks", false)
    endif
EndEvent