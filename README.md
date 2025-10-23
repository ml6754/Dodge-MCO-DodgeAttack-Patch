# DMCO Dodge-Attack Toggle Patch

## Description  
This patch adds a condition (currently defaulting to false) to dodge-to-attack transitions in the DMCO / Dodge MCO|DXP mod, preventing T-pose errors when dodge-attack animations are missing.

---

## Changes  

| Component | Change |
|---|---|
| DMCO XML / Havok behavior | Introduced a new variable `DMCO_EnableDodgeAttacks`. Updated conditional transition states to reference this variable so dodge→attack transitions only occur when it is `true`. |
| MCM| Added new toggle option to turn on and off dodge attacks
| Papyrus script| Added a new quest-based Papyrus script `DMCO_DodgeAttackToggle.psc` that, on init and load, reads the MCM setting and pushes it into the behavior graph via `Behavior.SetVariableBool("AllowDodgeAttacks", enabled)`. |
| General| Ensures that by default (toggle off) no dodge→attack transitions will fire, avoiding T-pose issues if transition animations are absent. |

---

## Installation

1. Install exactly as you would any mod, make sure it overwrites DMCO and DMCO dodge framework

---

## Credits & Attribution

- **DMCO:** [Distar](https://www.distaranimation.com/mods/dodge)
- **BDI:**  [Maxsu](https://www.nexusmods.com/skyrimspecialedition/mods/78146)
- **Patch:** ME

## Future Updates
- More options like step dodge only/roll dodge only with FOMOD installation
