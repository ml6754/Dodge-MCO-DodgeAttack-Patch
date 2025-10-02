Scriptname DodgeMCODXPpatchesMCM extends SKI_ConfigBase

Bool Property bEnableDodgeAttacks = False Auto

Event OnConfigInit()
    ModName = "DMCO Patches"
    Pages = new string[1]
    Pages[0] = "DMCO Patches"
EndEvent

Event OnPageReset(String page)
    if (page == "DMCO Patches")
        AddToggleOptionST("Enable Dodge Attacks", "dodgeAttacks", bEnableDodgeAttacks)
    endif
EndEvent

; ==============================
; ST HANDLER FOR dodgeAttacks
; ==============================
state dodgeAttacks
    Event OnSelectST()
        bEnableDodgeAttacks = !bEnableDodgeAttacks
        SetToggleOptionValueST(bEnableDodgeAttacks)
    EndEvent

    Event OnDefaultST()
        bEnableDodgeAttacks = False
        SetToggleOptionValueST(bEnableDodgeAttacks)
    EndEvent

    Event OnHighlightST()
        SetInfoText("Enable or disable dodge attack functionality.")
    EndEvent
endState