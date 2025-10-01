# DMCO Dodge-Attack Toggle Patch

## Description  
This patch adds a condition (currently defaulting to false) to dodge-to-attack transitions in the DMCO / Dodge MCO|DXP mod, preventing T-pose errors when dodge-attack animations are missing.

---

## Changes  

| Component | Change |
|---|---|
| DMCO XML / Havok behavior | Introduced a new variable `DMCO_EnableDodgeAttacks`. Updated conditional transition states to reference this variable so dodge→attack transitions only occur when it is `true`. |
| MCM / Configuration JSON & INI (In Progress) | Added new toggle option: `bdodgeMcoDxp_enableDodgeAttacks` (“Enable Dodge Attacks”) in `config.json` and defaulted it to `False` in `settings.ini`. |
| Papyrus script (In Progress)| Added a new quest-based Papyrus script `DMCO_DodgeAttackToggle.psc` that, on init and load, reads the MCM setting and pushes it into the behavior graph via `Behavior.SetVariableBool("DMCO_EnableDodgeAttacks", enabled)`. |
| General (In Progress)| Ensures that by default (toggle off) no dodge→attack transitions will fire, avoiding T-pose issues if transition animations are absent. |

---

## Installation

1. Add the new hkx dodge file to your load order as you would any other mod to overwrite the DMCO mod

---

## Credits & Attribution

- **Original Author:** [Distar](https://www.distaranimation.com/mods/dodge) — for Dodge MCO|DXP, the base mod, animation framework, and architecture.  
- **Patch / This Add-On:** ml6754  
---

## Versioning & Changelog

- **v1.0 (Patch Release)**  
  - Initial release of dodge-attack toggle  
  - Fixed T-pose when transition animations are missing  
