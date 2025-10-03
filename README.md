# DMCO Dodge-Attack Patches

## Description  
This patch adds a condition (currently defaulting to false) to dodge-to-attack transitions in the DMCO / Dodge MCO|DXP mod, preventing T-pose errors when dodge-attack animations are missing.

---

## Changes  

| Component | Change |
|---|---|
| DMCO XML / Havok behavior | Introduced a new variable `DMCO_EnableDodgeAttacks`. Updated conditional transition states to reference this variable so dodge→attack transitions only occur when it is `true`. |
| MCM for toggle | Added new toggle option: (“Enable Dodge Attacks”) in an mcm menu to allow users to toggle this behavior on and off |
---

## Installation

1. download mod as you would any other one

---

## Credits & Attribution

- **Original Author:** [Distar](https://www.distaranimation.com/mods/dodge) — for Dodge MCO|DXP, the base mod, animation framework, and architecture.  
- **Patch / This Add-On:** ml6754  
---

## Versioning & Changelog

- **v1.0 (Patch Release)**  
  - Initial release of dodge-attack toggle  
  - Fixed T-pose when transition animations are missing  
