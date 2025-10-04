Scriptname DodgeMCODXPpatchesMCM extends SKI_ConfigBase

Actor Property PlayerREF Auto

bool dodgeAttackToggle
int dodgeAttackToggleOptionID

Event OnConfigInit()
    ModName = "DMCO Patches"
EndEvent

Event OnPageReset(string page)
    bool current = PlayerREF.GetAnimationVariableBool("AllowDodgeAttacks")
    dodgeAttackToggleOptionID = AddToggleOption("Enable Dodge Attacks", current)
    dodgeAttackToggle = current
EndEvent

Event OnOptionSelect(int option)
    if option == dodgeAttackToggleOptionID
        dodgeAttackToggle = !dodgeAttackToggle
        SetToggleOptionValue(option, dodgeAttackToggle)

	 PlayerREF.SetAnimationVariableBool("AllowDodgeAttacks", dodgeAttackToggle)

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