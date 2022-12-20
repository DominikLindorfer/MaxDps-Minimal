# <DBM> World Bosses (Dragonflight)

## [10.0.10](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.10) (2022-12-18)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.9...10.0.10) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Prep new tag with bugfixes and improved M+ affix support  
- Add buff expire timers to thundering while at it. if you want a countdown you can easily configure it via these timers as well.  
    Also added a positive alert whe thundering has been removed.  
- Fixed a bug on raszageth where polarity alerts used position warning with no position. should just be personal warnings with no extra scope.  
    Added Preliminary Thundering support to M+ Affixes  
    Pruned all old S4 stuff out of M+ Affixes  
- Fixed chat yells on Raszageth for stormcharged  
    Tweaked mythic timer code slightly on Dathea  
- Raszageth Update  
     - Staging updated so stage changes come earlier and can include additional timers possible (credits to justwait for alternate stage ideas)  
     - in addition, include some phase change timers for stuff that's roughly consistent  
     - Lastly, second intermission add alerts and timers will now aggregate (since they are synced together)  
    Sennarth Update  
     - Improved P2 trigger and initial timers. They are still subject to variations/inaccuracies until a bug is fixed on blizzards end, but I'm confident that will effect very few people and will likely be fixed  
- Fixed another bug with M+ affix mod that was still keeping it from functioning on dragonflight content (Thundering will be added in next M+ update but I wanted to get fix for quaking and other stuff into alpha now)  
- Fixed a bug where Fulminating charge timer would not restart after first cast on Raszageth  
    Fixed mythic terros timers, which were actually all wrong because watching voz for timers on no sleep is prone to human error. My bad!. These use actual public WCLs  
- Don't touch objective tracker on retail  
- Fix some tank things  
    Fix affix mods not loading in S1 dungeons, should once again provide alerts for M+ Affixes. Thundering to be added soon™  
