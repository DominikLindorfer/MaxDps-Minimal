# <DBM> World Bosses (Dragonflight)

## [10.0.14](https://github.com/DeadlyBossMods/DBM-Retail/tree/10.0.14) (2022-12-28)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Retail/compare/10.0.13...10.0.14) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Retail/releases)

- Prep new retail tag  
- Fix some missed cleanup  
-  - Kurog Grimtotem  
       - Fixed bug where sunder strike cd timer was wrong, it was changed on live and I missed this  
       - Fixed bug where first "avoid" cd after an intermission was wrong after blizzard fixed a bug on their end where the boss always skipped first cast (causing first timer to be !68 (22.2+45) and not 22.2 like it was supposed to be)  
     - Raszageth  
       - Removed unclear "move to center" spoken alert for hurricane wings. that mechanic requires moving to static charge or gateways/speed buffs to beat and has little to do with moving to center. Tempest wing is one you need to move to center for (and it still says that)  
     - Sennarth  
       - Changed tank alert for Freezing Breath to say to dodge it instead of defensive it, since it can apparently be side stepped now.  
- Vault Bug Fixes:  
     - Eranog:  
       - Fixed a bug where burning wound stack and taunt alerts were spammy  
     - Sennarth:  
       - Fixed a bug where freezing Breath defensive alert was alerting all tanks, not just the tank who has active threat on the big add casting it.  
     - Primalist Council:  
       - Fixed a bug  were both Crush and Slashing Blaze warned all tanks to use defensive instead of just the current threat holder on respective boss.  
       - Also fixed a bug where Slashing Blaze could spam alerts for dps standing in wrong place. Non tank specialisations will now be filtered correctly.  
     - Dathea:  
       - Fixed a bug where Aerial Slash defensive alert was alerting all tanks, not just tank who has active threat on big add casting them..  
     - Kurog Grimtotem  
       - Fixed a bug where Earth/Flame/Frost/Storm Smite defensive alerts were alerting all tanks, not just tank who has active threat on big add casting them..  
     - Broodkeeper Diurna:  
       - Fixed a bug where a useless broodkeepers bond alert would spam for no apparent reason (some leftover code that was meant to be deleted).  
       - Fixed a bug where Eggs remaining tracking alerts that are actually throttled would never show (related to the broken bond alert)  
       - Tweaked wildfire alert to first say "spread", THEN to watch step, as opposed to just saying "watch step" right away.  
       - Fixed a bug where Burrowing Strike and Rending bite defensive alerts were alerting all tanks, not just tank who has active threat on big add casting them.  
       - Increased target aggregation for staff targets from 1 second to 2 seconds in an attempt to combine the target warnings into 1 more often.  
       - Increased Clutchwatchers rage aggregation from 2 seconds to 3 seconds in an attempt to decrease number of stack announces shown at once when egg breaks are scattered.  
     - Raszageth  
       - Fixed a bug where all the recently short names were not correctly being shown on regular announcements.  
       - Fixed a bug where Thunderous Blast timer was 1.1 seconds too long for 2nd cast in Stage 3  
       - Fixed a bug where Electrified Jaws was 0.7 seconds too long for 4th cast in Stage 2  
       - Fixed a bug where the Lighting Devastation (Deep Breath) cd timer was fading out during second intermission when raid isn't actually split  
       - Changed repeater yell for polarity charges to stay repeating until debuffs are gone, instead of old behavior of stopping the repeat after 4.5 seconds.  
- Fixed a bug that caused non tanks to not get filtered for special announce on kurog  
- sennarth tankt warning less spammy  
- Apparently Azure uses 2444 even though other 3 zones use 2574  
    Probably related to lag fix. running in it's own instance from rest now?  
    This fixes world boss in that zone not working correctly.  
- Fix missing CID for raz  
- Yet another dumb bug. I need to hire a full time QA that actually raids and ACTUALLY reports bug.  
- Fixed a bug with mythic storm eater timer that'd cause it not to ever appear (it was incorrectly still set to AI timer)  
- Apply several short names to raszageth that either match or closely match short names used by guilds in RWF  
- bump alpha  
