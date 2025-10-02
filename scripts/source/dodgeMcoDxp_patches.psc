Scriptname dodgeMcoDxp_patches extends SKI_ConfigBase

; ===========================================================
; Persistent Toggle (via StorageUtil)
; ===========================================================

String Property STORAGE_KEY = "DMCO_dodgeAttacks" Auto
Bool dodgeAttacks = False

; ===========================================================
; MCM Setup
; ===========================================================

Event OnConfigInit()
    ModName = "DMCO Patches"
    ; Load stored value (defaults to false if never set)
    dodgeAttacks = (StorageUtil.GetIntValue(None, STORAGE_KEY) as Bool)
EndEvent

Int Function GetPageCount()
    return 1
EndFunction

String Function GetPageName(Int page)
    return "DMCO Patches"
EndFunction

Event OnPageReset(String page)
    if (page == "DMCO Patches")
        AddHeaderOption("General Settings")
        AddToggleOption("Enable Dodge Attacks", dodgeAttacks)
    endif
EndEvent

; ===========================================================
; Toggle Handling
; ===========================================================

Event OnOptionSelect(Int option)
    ; Since this is the first real option after the header, it will be index 1
    if (option == 1)
        dodgeAttacks = !dodgeAttacks
        StorageUtil.SetIntValue(None, STORAGE_KEY, dodgeAttacks as Int)
        SetToggleOptionValue(option, dodgeAttacks)
    endif
EndEvent
