Scriptname DodgeMCODXP_ControllerAlias extends ReferenceAlias

bool Property Allow_Sword Auto
bool Property Allow_WarAxe Auto
bool Property Allow_Mace Auto
bool Property Allow_Dagger Auto
bool Property Allow_2HSword Auto
bool Property Allow_2HAxe Auto
bool Property Allow_2HHammer Auto
bool Property Allow_Staff Auto
bool Property Allow_Bow Auto
bool Property Allow_Crossbow Auto
bool Property Allow_Unarmed Auto

Keyword Property WeapTypeSword Auto
Keyword Property WeapTypeWarAxe Auto
Keyword Property WeapTypeMace Auto
Keyword Property WeapTypeDagger Auto
Keyword Property WeapTypeGreatsword Auto
Keyword Property WeapTypeBattleaxe Auto
Keyword Property WeapTypeWarhammer Auto
Keyword Property WeapTypeStaff Auto
Keyword Property WeapTypeBow Auto
Keyword Property WeapTypeCrossbow Auto

Event OnInit()
    ApplyForCurrentLoadout()
EndEvent

Event OnPlayerLoadGame()
    ApplyForCurrentLoadout()
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
    if GetReference() == Game.GetPlayer()
        ApplyForCurrentLoadout()
    endif
EndEvent

Event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
    if GetReference() == Game.GetPlayer()
        ApplyForCurrentLoadout()
    endif
EndEvent

Function ApplyForCurrentLoadout()
    Actor p = Game.GetPlayer()
    Weapon w = p.GetEquippedWeapon(0) ; right hand only
    p.SetAnimationVariableBool("AllowDodgeAttacks", ResolveAllowForWeapon(w))
EndFunction

bool Function ResolveAllowForWeapon(Weapon w)
    if w == None
        return Allow_Unarmed
    endif

    if w.HasKeyword(WeapTypeSword)
        return Allow_Sword
    elseif w.HasKeyword(WeapTypeWarAxe)
        return Allow_WarAxe
    elseif w.HasKeyword(WeapTypeMace)
        return Allow_Mace
    elseif w.HasKeyword(WeapTypeDagger)
        return Allow_Dagger
    elseif w.HasKeyword(WeapTypeGreatsword)
        return Allow_2HSword
    elseif w.HasKeyword(WeapTypeBattleaxe)
        return Allow_2HAxe
    elseif w.HasKeyword(WeapTypeWarhammer)
        return Allow_2HHammer
    elseif w.HasKeyword(WeapTypeStaff)
        return Allow_Staff
    elseif w.HasKeyword(WeapTypeBow)
        return Allow_Bow
    elseif w.HasKeyword(WeapTypeCrossbow)
        return Allow_Crossbow
    endif

    return False
EndFunction