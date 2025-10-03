Scriptname DodgeMCODXPpatchesMCM extends SKI_ConfigBase

bool dodgeAttackToggle
int dodgeAttackToggleOptionID

Event OnConfigInit()
    ModName = "DMCO Patches"
    Pages = new string[1]
    Pages[0] = "DMCO Patches"
EndEvent

Event OnPageReset(String page)
    if (page == "DMCO Patches")
        dodgeAttackToggleOptionID = AddToggleOption("Enable Dodge Attacks", dodgeAttackToggle)
    endif
EndEvent

Event OnOptionSelect(Int option)
    if option == dodgeAttackToggleOptionID
        dodgeAttackToggle = !dodgeAttackToggle
        SetToggleOptionValue(option, dodgeAttackToggle)

        if dodgeAttackToggle
            Debug.MessageBox("Dodge Attacks Enabled")
        else
            Debug.MessageBox("Dodge Attacks Disabled")
        endif
    endif
EndEvent

Event OnOptionHighlight(Int option)
    if option == dodgeAttackToggleOptionID
        SetInfoText("Enable or disable dodge attack functionality.")
    endif
EndEvent
