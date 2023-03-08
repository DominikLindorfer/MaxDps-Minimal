# <DBM> Dungeons (Dragonflight)

## [r71](https://github.com/DeadlyBossMods/DBM-Dungeons/tree/r71) (2023-03-07)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Dungeons/compare/r70...r71) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Dungeons/releases)

- Bump hotfix revision on Odyn for fix  
    Do some slight re-arranging of the speculated S2 dungeons. Probably won't sink too deep into them though, since it's probably about 70% that it's false list  
    Re-enable and improve fenrir timers using the usual archimonde, SLG, etc stuff. extensively verified it today with probably 12 diff logs, especially iniitial p1/p2 timers where abiliteis have diff possible orders.  disabled wolf timer though becaus it doesn't seem affected by spell queues at all and actualy might very well just be health based. Also made claws timer and alert now have count.  
- Fix bug causing odyn drop down options not to work  
- Update koKR (#107)  
- Update localization.ru.lua (#106)  
- Update zhTW (#105)  
- Small fix  
- re-add emphasized infernocore alert, but throttle it with regular one as fallback.  
- fix lua error that's harmless but none the less annoying  
