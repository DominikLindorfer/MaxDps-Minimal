local _, addonTable = ...;

--- @type MaxDps
if not MaxDps then
	return
end

local Druid = addonTable.Druid;
local MaxDps = MaxDps;
local UnitPower = UnitPower;
local UnitPowerMax = UnitPowerMax;

local GR = {
	Maul                 = 6807,
	Ironfur              = 192081,
	Pulverize            = 80313,
	ThrashBear           = 77758,
	Moonfire             = 8921,
	MoonfireDot          = 164812,
	Mangle               = 33917,
	GalacticGuardian     = 203964,
	GalacticGuardianBuff = 213708,
	Thrash               = 77758,
	ThrashDot            = 192090,
	Swipe                = 213771,
	Barkskin             = 22812,
	LunarBeam            = 204066,
	BristlingFur         = 155835,
	Incarnation          = 102558,
	SharpenedClaws       = 279943,
	SurvivalInstincts = 61336,
	FrenziedRegeneration = 22842,
	Renewal = 108238,
	GuardiansWrath       = 279541,
	HeartOfTheWild = 319454,
	RageOfTheSleeper = 200851,
	ToothAndClaw = 135286,
	DreamOfCenarius = 372152

};

setmetatable(GR, Druid.spellMeta);

function Druid:Guardian()
	local fd = MaxDps.FrameData;
	local talents = fd.talents;
	local targets = MaxDps:SmartAoe();
	local rage = UnitPower('player', Enum.PowerType.Rage);
	local rageMax = UnitPowerMax('player', Enum.PowerType.Rage);
	local rageDeficit = rageMax - rage;
	local targetHp = MaxDps:TargetPercentHealth() * 100;
	local health = UnitHealth('player');
	local healthMax = UnitHealthMax('player');
	local healthPercent = (health / healthMax) * 100;
	local debuff = fd.debuff;
	local buff = fd.buff;	
	local cooldown = fd.cooldown;

	if talents[GR.Pulverize] and cooldown[GR.Pulverize].ready and debuff[GR.ThrashDot].count >= 2 then
		return GR.Pulverize;
	end	
	
	if not debuff[GR.MoonfireDot].up then
		return GR.Moonfire;
	end

	if targets >= 3 then
		if cooldown[GR.Thrash].ready then
			return GR.Thrash;
		end	
	end

	if buff[GR.ToothAndClaw].up then
		return GR.Maul;
	end

	-- if cooldown[GR.Thrash].ready and debuff[GR.ThrashDot].remains < 3 then
	-- 	return GR.Thrash;
	-- end
	if cooldown[GR.Thrash].ready then
		return GR.Thrash;
	end	

	-- moonfire,target_if=buff.galactic_guardian.up&active_enemies=1|dot.moonfire.refreshable;
	-- if buff[GR.GalacticGuardianBuff].up and targets <= 1 or debuff[GR.MoonfireDot].refreshable then
	if buff[GR.GalacticGuardianBuff].up then
		return GR.Moonfire;
	end

	if targets >= 3 then
		return GR.Swipe;
	end

	if cooldown[GR.Mangle].ready then
		return GR.Mangle;
	end
	
	if rage >= 40 then
		return GR.Maul;
	end

	return GR.Swipe;
end

function Druid:GuardianCooldowns()
	local fd = MaxDps.FrameData;
	local talents = fd.talents;
	local targets = MaxDps:SmartAoe();
	local rage = UnitPower('player', Enum.PowerType.Rage);
	local rageMax = UnitPowerMax('player', Enum.PowerType.Rage);
	local rageDeficit = rageMax - rage;
	local targetHp = MaxDps:TargetPercentHealth() * 100;
	local health = UnitHealth('player');
	local healthMax = UnitHealthMax('player');
	local healthPercent = (health / healthMax) * 100;	
	local debuff = fd.debuff;
	local buff = fd.buff;
	local cooldown = fd.cooldown;

	if talents[GR.Renewal] and cooldown[GR.Renewal].ready and healthPercent <= 35 then
		return GR.Renewal;
	end

	if buff[GR.DreamOfCenarius].up and healthPercent <= 95 then
		return GR.DreamOfCenarius;
	end

	if cooldown[GR.SurvivalInstincts].ready and healthPercent <= 50 then
		return GR.SurvivalInstincts;
	end
	
	if cooldown[GR.Barkskin].ready and healthPercent <= 70 then
		return GR.Barkskin;
	end
	
	if cooldown[GR.FrenziedRegeneration].ready and healthPercent <= 75 and rage >= 10 then
		return GR.FrenziedRegeneration;
	end
	
	if rage >= 40 and healthPercent <= 90 then
		return GR.Ironfur;
	end

	if talents[GR.RageOfTheSleeper] and cooldown[GR.RageOfTheSleeper].ready then
		return GR.RageOfTheSleeper;
	end

	if talents[GR.Incarnation] and cooldown[GR.Incarnation].ready then
		return GR.Incarnation;
	end

	if talents[GR.HeartOfTheWild] and cooldown[GR.HeartOfTheWild].ready then
		return GR.HeartOfTheWild;
	end

end



