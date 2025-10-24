Scriptname DodgeMCODXPpatchesMCM extends SKI_ConfigBase

bool dodgeAttackToggle
int dodgeAttackToggleOptionID

Event OnConfigInit()
    ModName = "DMCO Patches"
EndEvent

Event OnPageReset(string page)
    bool current = Game.GetPlayer().GetAnimationVariableBool("AllowDodgeAttacks")
    dodgeAttackToggleOptionID = AddToggleOption("Enable Dodge Attacks", current)
    dodgeAttackToggle = current
EndEvent

Event OnOptionSelect(int option)
    if option == dodgeAttackToggleOptionID
        dodgeAttackToggle = !dodgeAttackToggle
        SetToggleOptionValue(option, dodgeAttackToggle)

	 Game.GetPlayer().SetAnimationVariableBool("AllowDodgeAttacks", dodgeAttackToggle)

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