Scriptname dodgeMcoDxp_applyMagickaCost extends ActiveMagicEffect

dodgeMcoDxp_MCM Property mcmScript Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
    float magickaCost = GetMagnitude() * mcmScript.GetModSettingInt("idodgeMcoDxp_magickaCost:Main")
    if mcmScript.GetModSettingBool("bdodgeMcoDxp_usePercent:Main")
        akCaster.damageactorvalue("Magicka" , akCaster.GetActorValueMax("Magicka")   /   100   *  magickaCost)
        return
    endif
    akCaster.damageactorvalue("Magicka" , magickaCost)
EndEvent