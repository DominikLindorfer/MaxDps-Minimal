# <DBM> World Bosses (Dragonflight)

## [10.0.11](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.11) (2022-12-20)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.10...10.0.11) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Prep another release to get latest fixes out. probably be another tomorrow with LFR updates if it has changes.  
- Convert thundering yell to repeat yell, eliminating need to run custom weak auras for thundering  
- Fix stupid  
- Bugfix magnetnc charge on rasageth which was broken and still using ai timers  
    Bugfix Volatile current from showing bad timers after known timers completed.  
- Fix error and move ground shatter back to combat log events  
- Buf fixess and updates to Kurog  
- Show notification that no dungeon mods are installed in M+ more aggressively (this check also still makes sure BW isn't installed either and only nags if you're in a M+ with NO MODS for that dungeon). No longer allow pve nag messages to be disabled for missing mods (for current content) as well. It's one thing for pvp or solo content, but don't be a liability to your dungeon groups, especially M+  
- Update localization.ru.lua (#839)  
- Push correct D mod, not unfinished brood mod  
- Fix bug where blowbath didn't work on normal difficulty Dathea  
- Improve debug to try and figure out why hymdall mod keeps premature ending combat.  
- I wear i typed 5 there  
- Ok now that it forced me to push broken code, push actual working code  
- Git is so stupid at conflict resolution  
- Fix typo on newCaastAnnounce  
- Restore partial functionalty to ground shatter. Timer works again and pre cast will announce. No longer possible to get targets after spellid change  
- Fixed a bug that caused shocking burst icons and alerts not to work correctly on Kurog  
- bump alpha  
