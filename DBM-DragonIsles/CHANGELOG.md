# <DBM> World Bosses (Dragonflight)

## [10.0.31](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.31) (2023-03-04)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.30...10.0.31) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- fix versions  
- prep new core tag to fix bug with older special warning objects that may have missing alerts due to an option key mismatch  
- fix a bug that caused special warnings with an option version to stop working  
- core tweaks  
- scan for combat 4x as often to improve thundering timer accuracy very slightly. Reviewing half the other addons people run and they scan combat as often as every 0.05 seconds, so doing it every 1 might have been too conservative, especially in a 5 man. So now it'll check every 0.25 sec so there will be less timer drift between entering/leaving combat.  
- Put spellId in wrong spot and screwed up thundering spell name. guess I'll have to do another tag cause it looks bad  
- Stop M+ affix timers on challenge mode complete event as well  
- adjust one of enveloping webs timer  
- bump alphas  
