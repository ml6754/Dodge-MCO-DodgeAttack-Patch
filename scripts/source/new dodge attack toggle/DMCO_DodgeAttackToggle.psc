Scriptname DMCO_DodgeAttackToggle extends Quest  

; === Property for Havok variable ===
Bool Property DMCO_EnableDodgeAttacks Auto  

Event OnInit()
    ; Load the saved toggle from MCM settings.ini
    Bool enabled = ModSettingGetBool("Dodge_MCO-DXP", "bdodgeMcoDxp_enableDodgeAttacks")

    ; Push into behavior graph
    Behavior.SetVariableBool("DMCO_EnableDodgeAttacks", enabled)
EndEvent
Event OnPlayerLoadGame()
    Bool enabled = ModSettingGetBool("Dodge_MCO-DXP", "bdodgeMcoDxp_enableDodgeAttacks")
    Behavior.SetVariableBool("DMCO_EnableDodgeAttacks", enabled)
EndEvent
