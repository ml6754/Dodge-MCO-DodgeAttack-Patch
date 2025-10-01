Scriptname DMCO_DodgeAttackMCM extends SKI_ConfigBase  

Bool Property DMCO_EnableDodgeAttacks Auto  

Event OnConfigInit()
    ModName = "DMCO Dodge Patch"
EndEvent  

Function OnPageReset(string page)
    If (page == "Main")
        SetCursorFillMode(TOP_TO_BOTTOM)
        AddToggleOption("Enable Dodge Attacks", DMCO_EnableDodgeAttacks)
    EndIf
EndFunction  

Event OnOptionSelect(string optionName, int optionIndex)
    If optionName == "Enable Dodge Attacks"
        DMCO_EnableDodgeAttacks = !DMCO_EnableDodgeAttacks
        Behavior.SetVariableBool("DMCO_EnableDodgeAttacks", DMCO_EnableDodgeAttacks)
    EndIf
EndEvent  
