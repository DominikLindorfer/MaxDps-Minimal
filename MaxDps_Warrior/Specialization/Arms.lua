local _, addonTable = ...

--- @type MaxDps
if not MaxDps then return end 

local Warrior = addonTable.Warrior
---@type MaxDps
local MaxDps = MaxDps

local AR = {
    AshenJuggernaut = 392536,
    Avatar = 107574,
    BattleStance = 386164,
    Battlelord = 386630,
    BladestormTalent = 227847,
    Bladestorm = 389774,
    BloodAndThunder = 384277,
    Charge = 100,
    Cleave = 845,
    ColossusSmash = 167105,
    DeepWounds = 262304,
    DeepWoundsAura = 262115,
    Execute = 5308,
    Execute2 = 163201,
    --ExecutionersPrecision = 386634,
    FervorOfBattle = 202316,
    Hurricane = 390563,
    ImpendingVictory = 202168,
    InForTheKill = 248621,
    Juggernaut = 383292,
    MartialProwess = 316440,
    Massacre = 281001,
    MercilessBonegrinderTalent = 383317,
    MercilessBonegrinderBuff = 383316,
    MortalStrike = 12294,
    Overpower = 7384,
    Pummel = 6552,
    Ravager = 152277,
    Rend = 772,
    RendDebuff = 388539,
    Shockwave = 46968,
    Skullsplitter = 260643,
    Slam = 1464,
    SpearOfBastion = 376079,
    SuddenDeath = 29725,
    SuddenDeathAura = 52437,
    SweepingStrikes = 260708,
    TestOfMight = 385008,
    ThunderClap = 6343,
    ThunderousRoar = 384318,
    TideOfBlood = 386357,
    Unhinged = 386628,
    Warbreaker = 262161,
    Whirlwind = 1680,
    WreckingThrow = 384110,
};

setmetatable(AR, Warrior.spellMeta);

function Warrior:Arms()
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
	local debuff = fd.debuff;

    local targetHp = MaxDps:TargetPercentHealth() * 100
    local canExecute = ((talents[AR.Massacre] and targetHp < 35) or targetHp < 20) or buff[AR.SuddenDeathAura].up   

	if talents[AR.Rend] and debuff[AR.RendDebuff].remains < 4 then
		if targets < 2 and rage >= 30 then
			return AR.Rend;
		end
		if targets >= 2 and rage >= 40 and cooldown[AR.ThunderClap].ready then
			return AR.ThunderClap;
		end
	end

	if targets > 1 and talents[AR.MercilessBonegrinderTalent] and buff[AR.MercilessBonegrinderBuff].up and rage >= 70 then
        return AR.Whirlwind;
    end

	if targets > 1 and talents[AR.Cleave] and rage >= 20 and cooldown[AR.Cleave].ready then
        return AR.Cleave;
    end

	if targets > 1 and targets < 4 and cooldown[AR.SweepingStrikes].ready then
        return AR.SweepingStrikes;
    end

	if cooldown[AR.MortalStrike].ready and rage >= 30 and debuff[AR.DeepWoundsAura].remains <= 2 then
        return AR.MortalStrike;
    end
	
	if buff[AR.SuddenDeathAura].up then
        return AR.Execute;
    end

	if inExecutePhase then
        if buff[AR.SuddenDeathAura].up or rage >= 20 then
        	return AR.Execute;
    	end
    end

    if cooldown[AR.MortalStrike].ready and rage >= 30 then
        return AR.MortalStrike;
    end
	
	if talents[AR.MercilessBonegrinderTalent] and buff[AR.MercilessBonegrinderBuff].up and rage >= 70 then
        return AR.Whirlwind;
    end

    if cooldown[AR.Overpower].ready then
        return AR.Overpower;
    end

	if cooldown[AR.Whirlwind].ready and rage >= 70 then
        return AR.Whirlwind;
    end
	
	if not inExecutePhase and cooldown[AR.Slam].ready then
		return AR.Slam;
	end
end

function Warrior:ArmsCooldowns()
	fd = MaxDps.FrameData;
    cooldown = fd.cooldown;
    debuff = fd.debuff;
    talents = fd.talents;
    buff = fd.buff;
    targets = MaxDps:SmartAoe();
    targetHp = MaxDps:TargetPercentHealth() * 100;
    rage = UnitPower('player', PowerTypeRage);

	if talents[AR.Warbreaker] and cooldown[AR.Warbreaker].ready then
		return AR.Warbreaker;
	end
	
	if talents[AR.Avatar] and cooldown[AR.Avatar].ready then
		return AR.Avatar;
	end
	
	if talents[AR.BladestormTalent] and cooldown[AR.Bladestorm].ready then
		return AR.Bladestorm;
	end

	if talents[AR.ThunderousRoar] and cooldown[AR.ThunderousRoar].ready then
		return AR.ThunderousRoar;
	end


end




