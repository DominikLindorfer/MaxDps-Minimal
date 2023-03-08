local AddonName, Addon = ...

local ignoredNPC = {
    [168457] = true, -- Summoned Stonewall Gargon (corridor before last boss of Sanguine Depths)
    [168837] = true, -- Summoned Stealthling spiders (Plaguefall)
    [174773] = true, -- Shadows from Spiteful affix
    [200388] = true, -- Malformed Sha
}

function Addon:ResetDungeon()
    IPMTDungeon = Addon:CopyObject(Addon.cleanDungeon)
    if Addon.fool ~= nil then
        IPMTDungeon.fool = 0
    end
end

function Addon:GetEnemyForces(npcID, progressFormat)
    local forces = nil

    if Addon.season.isActive and Addon.season.GetForces then
        forces = Addon.season:GetForces(npcID, IPMTDungeon.isTeeming)
    end

    if forces == nil and ignoredNPC[npcID] == nil then
        if IPMTDB and IPMTDB[npcID] and type(IPMTDB[npcID]) == 'table' and IPMTDB[npcID][IPMTDungeon.isTeeming] then
            forces = IPMTDB[npcID][IPMTDungeon.isTeeming]
        else
            forces = Addon:GetForcesFromMDT(npcID, true)
        end
    end

    if progressFormat == nil then
        progressFormat = IPMTOptions.progress
    end

    if forces and progressFormat == Addon.PROGRESS_FORMAT_PERCENT then
        forces = 100 / IPMTDungeon.trash.total * forces
        forces = Addon:Round(forces, 2)
    end
    return forces
end

local killInfo = {
    npcID        = 0,
    progress     = 0,
    progressTime = nil,
    diedTime     = nil,
}
local function ClearKillInfo()
    killInfo = {
        npcID        = 0,
        progress     = 0,
        progressTime = nil,
        diedTime     = nil,
    }
end

local function GrabMobInfo(npcID)
    killInfo.npcID = npcID
    killInfo.diedTime = GetTime()
    if killInfo.npcID and killInfo.diedTime and killInfo.progress and killInfo.progressTime then
        if abs(killInfo.progressTime - killInfo.diedTime) < 0.1 then
            if not IPMTDB then
                IPMTDB = {}
            end
            if IPMTDB[killInfo.npcID] == nil then
                IPMTDB[killInfo.npcID] = {}
            end
            if IPMTDB[killInfo.npcID][IPMTDungeon.isTeeming] == nil then
                IPMTDB[killInfo.npcID][IPMTDungeon.isTeeming] = killInfo.progress
            end
            ClearKillInfo()
        end
    end
end

local lastDeathEvent = 0 -- 1=CLEU, 2=UpdateProgress
function Addon:EnemyDied(npcGUID)
    local _, zero, server_id, instance_id, zone_uid, npcID, spawnID = strsplit("-", npcGUID)
    npcID = tonumber(npcID)
    local npcUID = spawnID .. "_" .. npcID
    if IPMTDungeon.prognosis[npcUID] then
        local progress = IPMTDungeon.trash.current + IPMTDungeon.prognosis[npcUID]
        if IPMTDungeon.trash.total >= IPMTDungeon.trash.current and IPMTDungeon.trash.grabbed > 0 then
            IPMTDungeon.trash.current = IPMTDungeon.trash.grabbed + IPMTDungeon.prognosis[npcUID]
            IPMTDungeon.trash.grabbed = 0
            Addon:UpdateProgress()
        elseif (IPMTDungeon.trash.total <= progress and lastDeathEvent == 1) or IPMTDungeon.trash.total <= IPMTDungeon.trash.current then
            IPMTDungeon.trash.current = progress
            Addon:UpdateProgress()
        end
        IPMTDungeon.prognosis[npcUID] = nil
        lastDeathEvent = 1
    end
    if Addon:GetEnemyForces(npcID) == nil then
        GrabMobInfo(npcID)
    else
        ClearKillInfo()
    end

    if Addon.season.isActive and Addon.season.EnemyDied then
        Addon.season:EnemyDied(npcID)
    end
end

function Addon:CombatLogEvent()
    local timestamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, x12, x13, x14, x15 = CombatLogGetCurrentEventInfo()

    Addon:PrognosisCheck()

    if event == "UNIT_DIED" then
        if bit.band(destFlags, COMBATLOG_OBJECT_TYPE_NPC) > 0
            and bit.band(destFlags, COMBATLOG_OBJECT_CONTROL_NPC) > 0
            and (bit.band(destFlags, COMBATLOG_OBJECT_REACTION_HOSTILE) > 0
            or bit.band(destFlags, COMBATLOG_OBJECT_REACTION_NEUTRAL) > 0) then
            Addon:EnemyDied(destGUID)
        end
        if (bit.band(destFlags, COMBATLOG_OBJECT_TYPE_PLAYER) > 0) and (not UnitIsFeignDeath(destName)) then
            Addon.deaths:Record(destName)
        end
    elseif bit.band(destFlags, COMBATLOG_OBJECT_TYPE_PLAYER) > 0 then
        if event == "SPELL_DAMAGE" or event == "SPELL_PERIODIC_DAMAGE" then
            IPMTDungeon.players[destName] = {
                spellId = x12,
                enemy   = sourceName,
                damage  = x15,
            }
        elseif event == "SWING_DAMAGE" then
            IPMTDungeon.players[destName] = {
                spellId = 1,
                enemy   = sourceName,
                damage  = x12,
            }
        elseif event == "RANGE_DAMAGE" then
            IPMTDungeon.players[destName] = {
                spellId = 75,
                enemy   = sourceName,
                damage  = x12,
            }
        end
    end
end

function Addon:UpdateProgress()
    local numCriteria = select(3, C_Scenario.GetStepInfo())

    for c = 1, numCriteria do
        local name, _, completed, quantity, totalQuantity, _, _, quantityString, _, _, _, _, isWeightedProgress = C_Scenario.GetCriteriaInfo(c)
        if isWeightedProgress then
            if IPMTDungeon.trash.total == nil or IPMTDungeon.trash.total == 0 then
                IPMTDungeon.trash.total = totalQuantity
            end
            if IPMTDungeon.trash.total > IPMTDungeon.trash.current then
                local currentTrash = tonumber(strsub(quantityString, 1, -2))
                if IPMTDungeon.trash.current and currentTrash < IPMTDungeon.trash.total and currentTrash > IPMTDungeon.trash.current then
                    killInfo.progress = currentTrash - IPMTDungeon.trash.current
                    killInfo.progressTime = GetTime()
                    GrabMobInfo()
                end
                if IPMTDungeon.trash.total <= currentTrash then
                    IPMTDungeon.trash.grabbed = IPMTDungeon.trash.current
                end
                IPMTDungeon.trash.current = currentTrash
                lastDeathEvent = 2
            end
            local progress = IPMTDungeon.trash.current
            if Addon.season.isActive and Addon.season.Progress then
                Addon.season:Progress(progress)
            end
            if IPMTOptions.progress == Addon.PROGRESS_FORMAT_PERCENT then
                progress = progress / IPMTDungeon.trash.total * 100
                if IPMTOptions.limitProgress then
                    progress = math.min(100, progress)
                end
                if IPMTOptions.direction == Addon.PROGRESS_DIRECTION_DESC then
                    progress = 100 - progress
                end
                Addon.fMain.progress.text:SetFormattedText("%.2f%%", progress)
            else
                if IPMTOptions.limitProgress then
                    progress = math.min(progress, IPMTDungeon.trash.total)
                end
                if IPMTOptions.direction == Addon.PROGRESS_DIRECTION_ASC then
                    Addon.fMain.progress.text:SetText(progress .. "/" .. IPMTDungeon.trash.total)
                else
                    Addon.fMain.progress.text:SetText(IPMTDungeon.trash.total - progress)
                end
            end
        end
    end
end

function Addon:OnTimerEnter(self)
    if not Addon.opened.options then
        GameTooltip:SetOwner(self, "ANCHOR_LEFT")
        GameTooltip:SetText(Addon.localization.TIMERCHCKP, 1, 1, 1)
        GameTooltip:AddLine(" ")
        local theme = IPMTTheme[IPMTOptions.theme]
        local timeLimit = IPMTDungeon.timeLimit[IPMTOptions.timerDir]
        if IPMTOptions.timerDir == Addon.TIMER_DIRECTION_DESC then
            for level = 2,0,-1 do
                local keyText = '+' .. level + 1
                local timeText
                if level == 2 then
                    timeText = SecondsToClock(timeLimit[0]) .. ' - ' .. SecondsToClock(timeLimit[0] - timeLimit[2])
                elseif level == 1 then
                    timeText = SecondsToClock(timeLimit[0] - timeLimit[2]) .. ' - ' .. SecondsToClock(timeLimit[0] - timeLimit[1])
                else
                    timeText = SecondsToClock(timeLimit[0] - timeLimit[1]) .. ' - 0:00'
                end
                local color = theme.elements.timer.color[level]
                GameTooltip:AddDoubleLine(keyText, timeText, color.r, color.g, color.b, color.r, color.g, color.b)
            end
        else
            for level = 2,0,-1 do
                local keyText = '+' .. level + 1
                local timeText
                if level == 2 then
                    timeText = '0:00 - ' .. SecondsToClock(timeLimit[0])
                elseif level == 1 then
                    timeText = SecondsToClock(timeLimit[0]) .. ' - ' .. SecondsToClock(timeLimit[1])
                else
                    timeText = SecondsToClock(timeLimit[1]) .. ' - ' .. SecondsToClock(timeLimit[2])
                end
                local color = theme.elements.timer.color[level]
                GameTooltip:AddDoubleLine(keyText, timeText, color.r, color.g, color.b, color.r, color.g, color.b)
            end
        end
        GameTooltip:Show()
    end
end

function Addon:OnBossesEnter(self)
    if not Addon.opened.options then
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT")
        GameTooltip:SetText(Addon.localization.HELP.BOSSES, 1, 1, 1)
        GameTooltip:AddLine(" ")
        for i, boss in ipairs(IPMTDungeon.bosses) do
            local color = 1
            if boss.killed then
                color = .45
            end
            GameTooltip:AddLine(boss.name, color, color, color)
        end
        GameTooltip:Show()
    end
end

function Addon:OnAffixEnter(self, iconNum)
    if not Addon.opened.options then
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        local affixNum = #IPMTDungeon.affixes - iconNum + 1
        GameTooltip:SetText(IPMTDungeon.affixes[affixNum].name, 1, 1, 1, 1, true)
        GameTooltip:AddLine(IPMTDungeon.affixes[affixNum].text, nil, nil, nil, true)
        GameTooltip:Show()
    end
end

local function UpdateTime(block, elapsedTime)
    local theme = IPMTTheme[IPMTOptions.theme]
    if not IPMTDungeon.keyActive then
        return
    end
    local timeCoef = {0.8, 0.6}
    local plusLevel = 0
    local plusTimer = 0
    local timeText = ''
    local plusTimeText = nil
    local color = nil

    if true or IPMTDungeon.timeLimit == nil or IPMTDungeon.timeLimit[Addon.TIMER_DIRECTION_DESC] == nil or IPMTDungeon.timeLimit[Addon.TIMER_DIRECTION_DESC][0] == nil then
        IPMTDungeon.timeLimit = {
            [Addon.TIMER_DIRECTION_DESC] = {
                [0] = block.timeLimit,
            },
            [Addon.TIMER_DIRECTION_ASC] = {
                [2] = block.timeLimit,
            },
        }
        for level = 2,1,-1 do
            IPMTDungeon.timeLimit[Addon.TIMER_DIRECTION_DESC][level] = timeCoef[level] * block.timeLimit
            IPMTDungeon.timeLimit[Addon.TIMER_DIRECTION_ASC][2-level] = timeCoef[level] * block.timeLimit
        end
    end
    if Addon.fool ~= nil and IPMTDungeon.fool ~= nil and IPMTDungeon.fool > 0 then
        elapsedTime = elapsedTime - IPMTDungeon.fool
    end
    if elapsedTime < block.timeLimit then
        if Addon.fool ~= nil then
            Addon:HideFool()
        end
        for level = 2,1,-1 do
            if elapsedTime < IPMTDungeon.timeLimit[Addon.TIMER_DIRECTION_DESC][level] then
                plusLevel = level
                plusTimer = IPMTDungeon.timeLimit[Addon.TIMER_DIRECTION_DESC][level] - elapsedTime
                plusTimeText = SecondsToClock(plusTimer)
                break
            end
        end
        if IPMTOptions.timerDir == 1 then
            timeText = SecondsToClock(block.timeLimit - elapsedTime)
            plusTimer = SecondsToClock(plusTimer)
        else
            timeText = SecondsToClock(elapsedTime)
            if plusTimeText == nil then
                plusTimer = block.timeLimit - elapsedTime
                plusTimeText = SecondsToClock(plusTimer)
            end
        end
        color = theme.elements.timer.color[plusLevel]
        plusLevel = "+" .. plusLevel+1
    else
        if Addon.fool ~= nil then
            Addon:ShowFool()
        end
        timeText = SecondsToClock(elapsedTime)
        plusTimeText = SecondsToClock(elapsedTime - block.timeLimit)
        plusLevel = "-1"
        color = theme.elements.timer.color[-1]
    end
    IPMTDungeon.time = elapsedTime

    Addon.fMain.plusLevel.text:SetText(plusLevel)
    Addon.fMain.timer.text:SetText(timeText)
    Addon.fMain.timer.text:SetTextColor(color.r, color.g, color.b)
    Addon.fMain.timer.text:SetAlpha(color.a)
    if Addon.opened.themes or not theme.elements.plusTimer.hidden and plusTimeText ~= nil then
        Addon.fMain.plusTimer.text:SetText(plusTimeText)
        Addon.fMain.plusTimer:Show()
    else
        Addon.fMain.plusTimer:Hide()
    end
end
hooksecurefunc("Scenario_ChallengeMode_UpdateTime", UpdateTime)

local function fillMapGroupID(mapID)
    -- Mechagon Island (Junkyard)
    if mapID == 1490 then
        return {{
            mapID = 1490,
        }}
    -- Tazavesh Lower
    elseif mapID == 1989 or mapID == 1990 or mapID == 1991 or mapID == 1992 then
        return {{
            mapID = 1989,
        }}
    -- Tazavesh Upper
    elseif mapID == 1993 or mapID == 1995 or mapID == 1996 or mapID == 1997 then
        return {{
            mapID = 1997,
        },{
            mapID = 1996,
        },{
            mapID = 1993,
        }}
    -- Karazhan Lower
    elseif mapID == 809 or mapID == 810 or mapID == 811 or mapID == 812 or mapID == 813 or mapID == 814 then
        return {{
            mapID = 809,
        }}
    -- Karazhan Upper
    elseif mapID == 815 or mapID == 816 or mapID == 817 or mapID == 818 or mapID == 819 or mapID == 820 or mapID == 821 or mapID == 822 then
        return {{
            mapID = 815,
        }}
    else
        return nil
    end
end

local function fillEncountersID(mapID)
    -- Tazavesh Lower
    if mapID == 1989 then
        return {{
            encounterID = 2437,
        },{
            encounterID = 2454,
        },{
            encounterID = 2436,
        },{
            encounterID = 2452,
        },{
            encounterID = 2451,
        }}
    -- Karazhan Lower
    elseif mapID == 809 then
        return {{
            encounterID = 1820,
        },{
            encounterID = 1835,
        },{
            encounterID = 1837,
        },{
            encounterID = 1825,
        }}
    -- Karazhan Upper
    elseif mapID == 815 then
        return {{
            encounterID = 1836,
        },{
            encounterID = 1817,
        },{
            encounterID = 1818,
        },{
            encounterID = 1838,
        }}
    else
        return nil
    end
end

local function InitBossesInfo()
    IPMTDungeon.bossesKilled = 0
    if IPMTDungeon.bosses == nil then
        local mapID = C_Map.GetBestMapForUnit("player")
        if mapID == nil then
            return
        end
        local uiMapGroupID = C_Map.GetMapGroupID(mapID)
        local mapGroup = fillMapGroupID(mapID)
        if mapGroup == nil then
            if uiMapGroupID == nil then
                mapGroup = {{
                    mapID = mapID,
                }}
            else
                mapGroup = C_Map.GetMapGroupMembersInfo(uiMapGroupID)
            end
        end
        IPMTDungeon.bosses = {}
        for g, map in ipairs(mapGroup) do
            if (mapID ~= 1490 and map.mapID ~= 1490) or (mapID == 1490 and map.mapID == 1490) then
                local encounters = fillEncountersID(map.mapID)
                if encounters == nil then
                    encounters = C_EncounterJournal.GetEncountersOnMap(map.mapID)
                end
                for e, encounter in ipairs(encounters) do
                    local name, _, _, _, _, journalInstanceID, dungeonEncounterID = EJ_GetEncounterInfo(encounter.encounterID)
                    table.insert(IPMTDungeon.bosses, {
                        encounterID = dungeonEncounterID,
                        name        = name,
                        killed      = false,
                    })
                    IPMTDungeon.artwork = select(4, EJ_GetInstanceInfo(journalInstanceID))
                end
            end
        end
    else
        for b, boss in ipairs(IPMTDungeon.bosses) do
            if boss.killed then
                IPMTDungeon.bossesKilled = IPMTDungeon.bossesKilled + 1
            end
        end
    end
    Addon.fMain.bosses.text:SetText(IPMTDungeon.bossesKilled .. "/" .. #IPMTDungeon.bosses)
end

local updateTimer = 0 
function Addon:OnUpdate(elapsed)
    if IPMTDungeon and IPMTDungeon.keyActive then
        updateTimer = updateTimer + elapsed * 1000
        if updateTimer >= 300 then
            updateTimer = 0
            if Addon.season.OnUpdate then
                Addon.season:OnUpdate()
            end
            Addon:ShowPrognosis()
            if IPMTDungeon.bosses == nil then
                InitBossesInfo()
            end
        end
    end
end

local function initAffixes()
    Addon.season.isActive = false
    local level, affixes = C_ChallengeMode.GetActiveKeystoneInfo()
    local count = #affixes
    for i,affix in pairs(affixes) do
        local name, description, filedataid = C_ChallengeMode.GetAffixInfo(affix)
        local iconNum = count - i + 1
        IPMTDungeon.affixes[i] = {
            id   = affix,
            name = name,
            text = description,
        }
        SetPortraitToTexture(Addon.fMain.affix[iconNum].Portrait, filedataid)
        Addon.fMain.affix[iconNum]:Show()

        if affix == Addon.AFFIX_TEEMING then
            IPMTDungeon.isTeeming = true
        end
        if affix == Addon.season.affix then
            Addon.season.isActive = true
        end
    end
    for a = count+1,4 do
        Addon.fMain.affix[a]:Hide()
    end
end

local function ShowTimer()
    local name, _, difficulty = GetInstanceInfo()
    if difficulty == 8 then
        local level = C_ChallengeMode.GetActiveKeystoneInfo()
        IPMTDungeon.level = level
        Addon.fMain.level.text:SetText(IPMTDungeon.level)
        Addon.fMain.prognosis.text:SetTextColor(1,1,1)
        Addon.fMain.progress.text:SetTextColor(1,1,1)

        InitBossesInfo()
        initAffixes()
        Addon.deaths:Update()
        Addon:UpdateProgress()
        Addon.fMain:Show()

        local dungeonName = C_Scenario.GetInfo()
        Addon.fMain.dungeonname.text:SetText(dungeonName)
        Addon.fMain.dungeonname:EnableMouse(false)

        Addon.fMain:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
        Addon.fMain:RegisterEvent("ENCOUNTER_END")
        Addon.fMain:RegisterEvent("ENCOUNTER_START")
        IPMTDungeon.keyActive = true
        Addon:SetDungeonArtwork()
        if Addon.season.ShowTimer then
            Addon.season:ShowTimer()
        end
        Addon:KalielsTrackerFix()
        ObjectiveTracker_Collapse()
        Addon:HideHelp()
    end
end
hooksecurefunc("Scenario_ChallengeMode_ShowBlock", ShowTimer)

local function HideTimer()
    if not Addon.opened.options then
        Addon.fMain:Hide()
    end
    IPMTDungeon.keyActive = false
    Addon.fMain:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
    Addon.fMain:UnregisterEvent("ENCOUNTER_END")
    Addon.fMain:UnregisterEvent("ENCOUNTER_START")
end

local function EncounterEnd(encounterID, success)
    if success == 1 then
        for b, boss in ipairs(IPMTDungeon.bosses) do
            if boss.encounterID == encounterID then
                boss.killed = true
                IPMTDungeon.bossesKilled = IPMTDungeon.bossesKilled + 1
                Addon.fMain.bosses.text:SetText(IPMTDungeon.bossesKilled .. "/" .. #IPMTDungeon.bosses)
                break
            end
        end
    end
    if not success and #IPMTDungeon.combat.killed then
        if Addon.season.BossWipe then
            Addon.season:BossWipe()
        end
    end
    wipe(IPMTDungeon.combat.killed)
    IPMTDungeon.combat.boss = false
end

local function InsertKeystone()
    for container = BACKPACK_CONTAINER, NUM_BAG_SLOTS do
        local slots = C_Container.GetContainerNumSlots(container)
        for slot = 1,slots do
            local slotLink = C_Container.GetContainerItemLink(container, slot)
            if slotLink and slotLink:match("|Hkeystone:") then
                C_Container.PickupContainerItem(container, slot)
                if (CursorHasItem()) then
                    C_ChallengeMode.SlotKeystone()
                end
            end
        end
    end
end

function Addon:OnEvent(self, event, ...)
    local arg1, arg2, arg3, arg4, arg5 = ...
    if event == "ADDON_LOADED" then
        if arg1 == AddonName then
            Addon:Init()
        elseif arg1 == 'NamePlateKAI' then
            Addon:NamePlateKAIfix()
        end
    elseif event == "CHALLENGE_MODE_DEATH_COUNT_UPDATED" then
        Addon.deaths:Update()
    elseif event == "SCENARIO_CRITERIA_UPDATE" then
        Addon:UpdateProgress()
    elseif event == "CHALLENGE_MODE_RESET" then
        Addon:ResetDungeon()
    elseif event == "CHALLENGE_MODE_COMPLETED" then
        IPMTDungeon.keyActive = false
    elseif event == "PLAYER_ENTERING_WORLD" then
        if IPMTDungeon == nil then
            Addon:ResetDungeon()
        end
        local inInstance, instanceType = IsInInstance()
        if not (inInstance and instanceType == "party") then
            HideTimer()
            IPMTDungeon.keyActive = false
            ObjectiveTracker_Expand()
        else
            Addon:UpdateProgress()
        end
    elseif event == "CHALLENGE_MODE_KEYSTONE_RECEPTABLE_OPEN" then
        InsertKeystone()
    elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then
        Addon:CombatLogEvent()
    elseif event == "ENCOUNTER_START" then
        IPMTDungeon.combat.boss = true
    elseif event == "ENCOUNTER_END" then
        EncounterEnd(arg1, arg5)
    elseif event == "VARIABLES_LOADED" then
        Addon:InitVars()
        Addon:Render()
    end
end

function Addon:InitVars()
    Addon:InitThemes()
    Addon:InitOptions()

    if IPMTDB == nil then
        IPMTDB = {}
    end
    if MDT then
        local MDTversion = GetAddOnMetadata('MDT', 'Version')
        if MDTversion == nil then
            MDTversion = GetAddOnMetadata('MythicDungeonTools', 'Version')
        end
        if MDTversion ~= nil and (not IPMTOptions.MDTversion or (IPMTOptions.MDTversion ~= MDTversion)) then
            if Addon:MDTHasDB() then
                IPMTOptions.MDTversion = MDTversion
                IPMTDB = {}
            end
        end
    end
end

function Addon:Render()
    Addon:RenderMain()
    
    if IPMTOptions.version == 0 then
        Addon:ShowOptions()
        Addon:ShowHelp()
        IPMTOptions.version = Addon.version
    end
end

function Addon:Init()
    Addon.DB = LibStub("AceDB-3.0"):New("IPMTOptions", {
        global = {
            minimap = {
                hide = false,
            },
        },
    })
    Addon:InitIcon()
    Addon:elvUIFix()
end

local themeApplied = false
function Addon:OnShow()
    if not themeApplied then
        Addon:ApplyTheme(IPMTOptions.theme)
        themeApplied = true
    end
end