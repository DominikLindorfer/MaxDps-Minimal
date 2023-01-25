local _, addonTable = ...

--- @type MaxDps
if not MaxDps then return end 

local Warrior = addonTable.Warrior
---@type MaxDps
local MaxDps = MaxDps

local FR = {
    Annihilator = 383916,
    Avatar = 107574,
    BerserkerStance = 386196,
    Bloodbath = 335096,
    Bloodthirst = 23881,
    Charge = 100,
    CrushingBlow = 335097,
    ElysianMight = 386285,
    Enrage = 184362,
    Execute = 5308,
    Execute2 = 280735,
    Frenzy = 335082,
    HeroicLeap = 6544,
    ImprovedWhirlwind = 12950,
    Massacre = 206315,
    MeatCleaver = 280392,
    OdynsFury = 385059,
    Onslaught = 315720,
    OverwhelmingRage = 382767,
    Pummel = 6552,
    RagingBlow = 85288,
    Rampage = 184367,
    Ravager = 228920,
    Recklessness = 1719,
    RecklessAbadon = 202751,
    Slam = 1464,
    SpearOfBastion = 376079,
    SuddenDeathAura = 280776,
    Tenderize = 388933,
    ThunderousRoar = 384318,
    TitansTorment = 390135,
    Whirlwind = 190411,
    WhirlwindBuff = 85739,
    WreckingThrow = 384110
}

setmetatable(FR, Warrior.spellMeta)

local function inRange(spellId)
    local slotId = FindSpellBookSlotBySpellID(spellId)
    if not slotId then
        return false
    end

    return UnitExists("target")
            and UnitCanAttack("player", "target")
            and IsSpellInRange(slotId, "spell", "target") == 1
end

function Warrior:Fury()
	local fd = MaxDps.FrameData;
	local cooldown = fd.cooldown;
	local buff = fd.buff;
	local talents = fd.talents;
	local rage = UnitPower('player', PowerTypeRage);
	local rageMax = UnitPowerMax('player', PowerTypeRage);
	local rageDeficit = rageMax - rage;
	local curentHP = UnitHealth('player');
	local maxHP = UnitHealthMax('player');
	local healthPerc = (curentHP / maxHP) * 100;
	local absorb = UnitGetTotalAbsorbs('player');
	local absorbPerc = (absorb / maxHP) * 100;
    local targets = MaxDps:SmartAoe()
    local gcd = fd.gcd

    local targetHp = MaxDps:TargetPercentHealth() * 100

    local canExecute = ((talents[FR.Massacre] and targetHp < 35) or targetHp < 20) or buff[FR.SuddenDeathAura].up   
    
    if targets > 1 and (not buff[FR.WhirlwindBuff].up) then
        return FR.Whirlwind;
    end
    
    if buff[FR.SuddenDeathAura].up then
        return FR.Execute;
    end

    if cooldown[FR.Execute2].ready and canExecute then
        return FR.Execute;
    end

    if talents[FR.Rampage] and rage >= 80 and buff[FR.Enrage].remains < gcd then
        return FR.Rampage;
    end
    
    if talents[FR.Bloodthirst] and cooldown[FR.Bloodthirst].ready and (not buff[FR.Enrage].up) then
        return FR.Bloodthirst;
    end

    -- if talents[FR.Rampage] and rage >= 80 and (buff[FR.Recklessness].up or buff[FR.Enrage].remains < gcd or (rage > 110 and talents[FR.OverwhelmingRage]) or (rage > 80 and not talents[FR.OverwhelmingRage]) or buff[FR.Frenzy].remains < 1.5) then
    --     return FR.Rampage;
    -- end

    if buff[RecklessAbadon].up and talents[FR.RagingBlow] and cooldown[FR.CrushingBlow].ready and (cooldown[FR.CrushingBlow].charges > 1) then
        return FR.CrushingBlow;
    end   

    if buff[RecklessAbadon].up and talents[FR.RagingBlow] and cooldown[FR.RagingBlow].ready and (cooldown[FR.RagingBlow].charges > 1) then
        return FR.RagingBlow;
    end
    
    if talents[FR.Rampage] and rage >= 80 then
        return FR.Rampage;
    end

    if buff[RecklessAbadon].up and talents[FR.Bloodthirst] and cooldown[FR.Bloodbath].ready then
        return FR.Bloodbath;
    end

    if talents[FR.RagingBlow] and cooldown[FR.CrushingBlow].ready and (cooldown[FR.CrushingBlow].charges > 1) then
        return FR.CrushingBlow;
    end   

    if talents[FR.RagingBlow] and cooldown[FR.RagingBlow].ready and (cooldown[FR.RagingBlow].charges > 1) then
        return FR.RagingBlow;
    end

    if talents[FR.Bloodthirst] and cooldown[FR.Bloodthirst].ready and (not talents[FR.Annihilator]) then
        return FR.Bloodthirst;
    end

    -- slam,if=talent.annihilator
    if rage >= 20 and talents[FR.Annihilator] then
        return FR.Slam;
    end
    
    return FR.Whirlwind
end

function Warrior:FuryCooldowns()
    local fd = MaxDps.FrameData
    local cooldown = fd.cooldown
    local buff = fd.buff
    local talents = fd.talents
    local targets = MaxDps:SmartAoe()
    local timeToDie = fd.timeToDie
   
    if talents[FR.Recklessness] and cooldown[FR.Recklessness].ready then
        return FR.Recklessness;
    end

    if talents[FR.Avatar] and cooldown[FR.Avatar].ready and buff[FR.Recklessness].up then
        return FR.Avatar;
    end
    
    if talents[FR.Ravager] and cooldown[FR.Ravager].ready and buff[FR.Enrage].up then
        return FR.Ravager;
    end

    if talents[FR.OdynsFury] and cooldown[FR.OdynsFury].ready then
        return FR.OdynsFury;
    end
    
    if talents[FR.SpearOfBastion] and cooldown[FR.SpearOfBastion].ready and buff[FR.Enrage].up then
        return FR.SpearOfBastion;
    end

end

local function isSpellAvailable(spellId)
    local slotId = FindSpellBookSlotBySpellID(spellId)
    if not slotId then
        return false
    end

    return select(3, GetSpellBookItemName(slotId, "spell")) == spellId
end

