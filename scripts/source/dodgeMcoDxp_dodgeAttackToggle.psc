Scriptname dodgeMcoDxp_dodgeAttackToggle extends SKI_ConfigBase  

Bool Property DMCO_EnableDodgeAttacks Auto  

Event OnConfigInit()
    ModName = "DMCO Dodge Patch"
    Game.GetPlayer().SetGraphVariableBool("DMCO_EnableDodgeAttacks", DMCO_EnableDodgeAttacks)
EndEvent  

Event OnGameLoaded()
    Game.GetPlayer().SetGraphVariableBool("DMCO_EnableDodgeAttacks", DMCO_EnableDodgeAttacks)
EndEvent  

Function OnPageReset(string page)
    If (page == "Main")
        SetCursorFillMode(TOP_TO_BOTTOM)
        AddToggleOption("Enable Dodge Attacks", DMCO_EnableDodgeAttacks)
    EndIf
EndFunction  

Event OnOptionSelect(int option)
    If option == 0
        DMCO_EnableDodgeAttacks = !DMCO_EnableDodgeAttacks
        Debug.Notification("Dodge Attacks set to: " + DMCO_EnableDodgeAttacks)

        ; Push update into Havok graph
        ; use an skse plugin instead
        Game.GetPlayer().SetGraphVariableBool("DMCO_EnableDodgeAttacks", DMCO_EnableDodgeAttacks)
    EndIf
EndEvent  
