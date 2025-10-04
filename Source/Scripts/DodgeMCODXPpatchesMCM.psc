Scriptname DodgeMCODXPpatchesMCM extends SKI_ConfigBase

bool dodgeAttackToggle
int dodgeAttackToggleOptionID

Event OnConfigInit()
    ModName = "DMCO Patches"
EndEvent

Event OnPageReset(string page)
    dodgeAttackToggleOptionID = AddToggleOption("Enable Dodge Attacks", dodgeAttackToggle)
EndEvent

Event OnOptionSelect(int option)
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

Event OnOptionHighlight(int option)
    if option == dodgeAttackToggleOptionID
        SetInfoText("Enable or disable dodge attack functionality.")
    endif
EndEvent