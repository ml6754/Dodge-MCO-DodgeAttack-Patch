# DMCO Dodge-Attack Toggle Patch

## Description  
This patch adds a user-exposable toggle (via MCM) to **enable or disable** dodge-to-attack transitions in the DMCO / Dodge MCO|DXP mod, preventing T-pose errors when dodge-attack animations are missing.

---

## Changes  

| Component | Change |
|---|---|
| DMCO XML / Havok behavior | Introduced a new variable `DMCO_EnableDodgeAttacks`. Updated conditional transition states to reference this variable so dodge→attack transitions only occur when it is `true`. |
| MCM / Configuration JSON & INI | Added new toggle option: `bdodgeMcoDxp_enableDodgeAttacks` (“Enable Dodge Attacks”) in `config.json` and defaulted it to `False` in `settings.ini`. |
| Papyrus script | Added a new quest-based Papyrus script `DMCO_DodgeAttackToggle.psc` that, on init and load, reads the MCM setting and pushes it into the behavior graph via `Behavior.SetVariableBool("DMCO_EnableDodgeAttacks", enabled)`. |
| General | Ensures that by default (toggle off) no dodge→attack transitions will fire, avoiding T-pose issues if transition animations are absent. |

---

## Installation

1. Place your compiled changes (XML, JSON, INI, `.pex`) in the appropriate folders within your DMCO mod directory.
2. Ensure the new `.pex` (from `DMCO_DodgeAttackToggle.psc`) is in `Data\Scripts\`.
3. Launch Skyrim, open DMCO’s MCM menu, and you should see a new checkbox **“Enable Dodge Attacks”**.
4. When toggled off (default), dodge attack transitions are disabled and you should not experience T-poses. When toggled on, transitions behave as normal (if animations are present).

---

## Credits & Attribution

- **Original Author:** [Distar](https://www.distaranimation.com/mods/dodge) — for Dodge MCO|DXP, the base mod, animation framework, and architecture.  
- **Patch / This Add-On:** (Your name or handle)  
- **Thanks to:**  
  - The original DMCO / Dodge MCO|DXP community and authors for the foundation  
  - Havok / Nemesis tools and documentation for enabling the behavior edits  
  - SkyUI / MCM infrastructure for configuration support  

**License / Use:** Please respect the original mod’s license and credit Distar for the original work. This patch is provided under the same spirit of open modding and compatibility.

---

## Versioning & Changelog

- **v1.0 (Patch Release)**  
  - Initial release of dodge-attack toggle  
  - Fixed T-pose when transition animations are missing  
