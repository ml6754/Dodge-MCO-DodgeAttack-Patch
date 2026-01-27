Scriptname DodgeMCODXPpatchesMCM extends SKI_ConfigBase

DodgeMCODXP_ControllerAlias Property Controller Auto

; local cached values
bool sword
bool warAxe
bool mace
bool dagger

bool twoHSword
bool twoHAxe
bool twoHHammer

bool staff
bool bow
bool crossbow
bool unarmed

; option IDs
int optSword
int optWarAxe
int optMace
int optDagger

int opt2HSword
int opt2HAxe
int opt2HHammer

int optStaff
int optBow
int optCrossbow
int optUnarmed

Event OnConfigInit()
    ModName = "DMCO Patches"
EndEvent

Event OnPageReset(string page)
    if Controller == None
        AddTextOption("ERROR", "Controller property not set")
        return
    endif

    ; cache current values
    sword     = Controller.Allow_Sword
    warAxe    = Controller.Allow_WarAxe
    mace      = Controller.Allow_Mace
    dagger    = Controller.Allow_Dagger

    twoHSword  = Controller.Allow_2HSword
    twoHAxe    = Controller.Allow_2HAxe
    twoHHammer = Controller.Allow_2HHammer

    staff     = Controller.Allow_Staff
    bow       = Controller.Allow_Bow
    crossbow  = Controller.Allow_Crossbow
    unarmed   = Controller.Allow_Unarmed

    optSword     = AddToggleOption("1H Sword", sword)
    optWarAxe    = AddToggleOption("1H War Axe", warAxe)
    optMace      = AddToggleOption("1H Mace", mace)
    optDagger    = AddToggleOption("Dagger", dagger)

    opt2HSword   = AddToggleOption("2H Sword", twoHSword)
    opt2HAxe     = AddToggleOption("2H Battleaxe", twoHAxe)
    opt2HHammer  = AddToggleOption("2H Warhammer", twoHHammer)

    optStaff     = AddToggleOption("Staff", staff)
    optBow       = AddToggleOption("Bow", bow)
    optCrossbow  = AddToggleOption("Crossbow", crossbow)
    optUnarmed   = AddToggleOption("Unarmed", unarmed)
EndEvent

Event OnOptionSelect(int option)
    if Controller == None
        return
    endif

    if option == optSword
        sword = !sword
        SetToggleOptionValue(option, sword)
        Controller.Allow_Sword = sword

    elseif option == optWarAxe
        warAxe = !warAxe
        SetToggleOptionValue(option, warAxe)
        Controller.Allow_WarAxe = warAxe

    elseif option == optMace
        mace = !mace
        SetToggleOptionValue(option, mace)
        Controller.Allow_Mace = mace

    elseif option == optDagger
        dagger = !dagger
        SetToggleOptionValue(option, dagger)
        Controller.Allow_Dagger = dagger

    elseif option == opt2HSword
        twoHSword = !twoHSword
        SetToggleOptionValue(option, twoHSword)
        Controller.Allow_2HSword = twoHSword

    elseif option == opt2HAxe
        twoHAxe = !twoHAxe
        SetToggleOptionValue(option, twoHAxe)
        Controller.Allow_2HAxe = twoHAxe

    elseif option == opt2HHammer
        twoHHammer = !twoHHammer
        SetToggleOptionValue(option, twoHHammer)
        Controller.Allow_2HHammer = twoHHammer

    elseif option == optStaff
        staff = !staff
        SetToggleOptionValue(option, staff)
        Controller.Allow_Staff = staff

    elseif option == optBow
        bow = !bow
        SetToggleOptionValue(option, bow)
        Controller.Allow_Bow = bow

    elseif option == optCrossbow
        crossbow = !crossbow
        SetToggleOptionValue(option, crossbow)
        Controller.Allow_Crossbow = crossbow

    elseif option == optUnarmed
        unarmed = !unarmed
        SetToggleOptionValue(option, unarmed)
        Controller.Allow_Unarmed = unarmed
    endif

    Controller.ApplyForCurrentLoadout()
EndEvent

Event OnOptionHighlight(int option)
    SetInfoText("Toggle dodge attacks per weapon type (right-hand weapon only).")
EndEvent