Scriptname dodgeMcoDxp_applyStaminaCost extends ActiveMagicEffect

dodgeMcoDxp_MCM Property mcmScript Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
    float staminaCost = GetMagnitude() * mcmScript.GetModSettingInt("idodgeMcoDxp_staminaCost:Main")
    if mcmScript.GetModSettingBool("bdodgeMcoDxp_usePercent:Main")
        akCaster.damageactorvalue("Stamina", akCaster.GetActorValueMax("Stamina")/100   *  staminaCost)
        return
    endif
    akCaster.damageactorvalue("Stamina", staminaCost)
EndEvent