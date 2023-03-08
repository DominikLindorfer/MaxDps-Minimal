local _, addonTable = ...;

--- @type MaxDps
if not MaxDps then return end

local MaxDps = MaxDps;
local UnitPower = UnitPower;
local UnitHealth = UnitHealth;
local UnitHealthMax = UnitHealthMax;
local GetPowerRegen = GetPowerRegen;
local Energy = Enum.PowerType.Energy;
local Monk = addonTable.Monk;

local BR = {
	InvokeNiuzao			= 132578,
	TouchOfDeath			= 322109,
	KegSmash				= 121253,
	BlackoutKick			= 205523,
	BreathofFire			= 115181,
	PurifyingBrew			= 119582,
	RushingJadeWind			= 116847,
	TigerPalm				= 100780,
	RisingSunKick           = 107428,
	CelestialBrew			= 322507,
	SpinningCraneKick		= 322729,
	HealingElixir			= 122281,
	LegSweep = 119381,
	BlackOxBrew = 115399,
	-- WeaponsOfOrder = 310454,
	WeaponsOfOrder = 387184,
	FortifyingBrew = 115203,
	CharredPassions = 386963,
	-- CharredPassions = 338140,
	ChiWave = 115098,
	ExpelHarm = 322101,
	-- ExpelHarm = 322106,
	-- ExpelHarm = 322104,
	-- ExpelHarm = 325214,
	-- ExpelHarm = 344939,
	-- ExpelHarm = 115129,
	-- ExpelHarm = 115072,
	DampenHarm = 122278,
	BonedustBrew = 386276,
};

function Monk:Brewmaster()
	local fd = MaxDps.FrameData;
	local cooldown = fd.cooldown;
	local buff = fd.buff;
	local debuff = fd.debuff;
	local currentSpell = fd.currentSpell;
	local talents = fd.talents;
	local targets = MaxDps:SmartAoe();
	local gcd = fd.gcd;
	local timeToDie = fd.timeToDie;
	local energy = UnitPower('player', Energy);
	local energyRegen = GetPowerRegen();
	local health = UnitHealth('player');
	local healthMax = UnitHealthMax('player');
	local healthPercent = ( health / healthMax ) * 100
	local targetHealthPercent = MaxDps:TargetPercentHealth();
	local targetHealth = UnitHealth('target');
	-- local staggerAmount = UnitStagger('player');
	-- local staggerPercent = (staggerAmount / healthMax) * 100;

	if buff[BR.RushingJadeWind].refreshable and cooldown[BR.RushingJadeWind].ready then
		return BR.RushingJadeWind;
	end

	if buff[BR.CharredPassions].up and cooldown[BR.BlackoutKick].ready then
		return BR.BlackoutKick;
	end

	if cooldown[BR.KegSmash].ready and energy >= 40 then
		return BR.KegSmash;
	end

	if cooldown[BR.BreathofFire].ready then
		return BR.BreathofFire;
	end
	if buff[BR.CharredPassions].up and cooldown[BR.SpinningCraneKick].ready then
		return BR.SpinningCraneKick;
	end

	if cooldown[BR.RisingSunKick].ready then
		return BR.RisingSunKick;
	end

	if cooldown[BR.ChiWave].ready then
		return BR.ChiWave;
	end

	if cooldown[BR.BlackoutKick].ready then
		return BR.BlackoutKick;
	end
	
	if cooldown[BR.TigerPalm].ready and energy >= 25 then
		return BR.TigerPalm;
	end




	-- --TOD on CD
	-- MaxDps:GlowCooldown(BR.TouchOfDeath,cooldown[BR.TouchOfDeath].ready and targetHealthPercent < 15 and targetHealth < health and targetHealth > 0);
	-- --Niuzao on CD
	-- MaxDps:GlowCooldown(BR.InvokeNiuzao,cooldown[BR.InvokeNiuzao].ready);
	-- --DEFENSIVE GOES FIRST
	-- if staggerPercent > 60 and cooldown[BR.CelestialBrew].ready then
	-- 	MaxDps:GlowCooldown(BR.CelestialBrew, cooldown[BR.CelestialBrew].ready);
	-- end

	-- if healthPercent <= 50 and cooldown[BR.CelestialBrew].ready then
	-- 	MaxDps:GlowCooldown(BR.CelestialBrew, cooldown[BR.CelestialBrew].ready);
	-- end

	-- if talents[BR.HealingElixir] and healthPercent <= 85 and cooldown[BR.HealingElixir].ready then
	-- 	MaxDps:GlowCooldown(BR.HealingElixir, cooldown[BR.HealingElixir].ready);
	-- end

	-- if staggerPercent > 20 and cooldown[BR.PurifyingBrew].charges > 1.5 and cooldown[BR.PurifyingBrew].ready then
	-- 	MaxDps:GlowCooldown(BR.PurifyingBrew, cooldown[BR.PurifyingBrew].ready);
	-- end

	-- if staggerPercent > 50 and cooldown[BR.PurifyingBrew].ready then
	-- 	MaxDps:GlowCooldown(BR.PurifyingBrew, cooldown[BR.PurifyingBrew].ready);
	-- end
	
	-- if talents[BR.BlackOxBrew] and not cooldown[BR.PurifyingBrew].ready and not cooldown[BR.CelestialBrew].ready then
	-- 	MaxDps:GlowCooldown(BR.BlackOxBrew, cooldown[BR.BlackOxBrew].ready);
	-- end
		
	-- if healthPercent <= 30 then
	-- 	MaxDps:GlowCooldown(BR.FortifyingBrew, cooldown[BR.FortifyingBrew].ready);
	-- end
	
	-- --MaxDps:GlowCooldown(BR.WeaponsOfOrder, cooldown[BR.WeaponsOfOrder].ready);
	-- MaxDps:GlowCooldown(BR.LegSweep, cooldown[BR.LegSweep].ready);

	-- if cooldown[BR.KegSmash].ready then
	-- 	return BR.KegSmash;
	-- end

	-- if cooldown[BR.BlackoutKick].ready then
	-- 	return BR.BlackoutKick;
	-- end

	-- if cooldown[BR.BreathofFire].ready then
	-- 	return BR.BreathofFire;
	-- end

	-- if talents[BR.RushingJadeWind] and cooldown[BR.RushingJadeWind].ready and buff[BR.RushingJadeWind].remains < 1 then
	-- 	return BR.RushingJadeWind;
	-- end	

	-- if energy >= 65 and targets < 3 then
	-- 	return BR.TigerPalm;
	-- elseif energy >=65 and targets >= 3 then
	-- 	return BR.SpinningCraneKick;
	-- end
end


function Monk:BrewmasterCooldowns()
	local fd = MaxDps.FrameData;
	local cooldown = fd.cooldown;
	local buff = fd.buff;
	local debuff = fd.debuff;
	local currentSpell = fd.currentSpell;
	local talents = fd.talents;
	local targets = MaxDps:SmartAoe();
	local gcd = fd.gcd;
	local timeToDie = fd.timeToDie;
	local energy = UnitPower('player', Energy);
	local energyRegen = GetPowerRegen();
	local health = UnitHealth('player');
	local healthMax = UnitHealthMax('player');
	local healthPercent = ( health / healthMax ) * 100
	local targetHealthPercent = MaxDps:TargetPercentHealth();
	local targetHealth = UnitHealth('target');
	local staggerAmount = UnitStagger('player');
	local staggerPercent = (staggerAmount / healthMax) * 100;
	
	if healthPercent <= 35 and cooldown[BR.FortifyingBrew].ready then
		return BR.FortifyingBrew;
	end
	
	if healthPercent <= 40 and cooldown[BR.HealingElixir].ready then
		return BR.HealingElixir;
	end
	
	if healthPercent <= 45 and cooldown[BR.BlackOxBrew].ready then
		return BR.BlackOxBrew;
	end

	if healthPercent <= 50 and cooldown[BR.DampenHarm].ready then
		return BR.DampenHarm;
	end
	
	if cooldown[BR.ExpelHarm].ready and healthPercent <= 77 then
		return BR.ExpelHarm;
	end

	if healthPercent <= 86 and cooldown[BR.PurifyingBrew].ready then
		return BR.PurifyingBrew;
	end

	if healthPercent <= 90 and cooldown[BR.CelestialBrew].ready then
		return BR.CelestialBrew;
	end

	if cooldown[BR.InvokeNiuzao].ready then
		return BR.InvokeNiuzao;
	end

	if cooldown[BR.WeaponsOfOrder].ready then
		return BR.WeaponsOfOrder;
	end

	if cooldown[BR.BonedustBrew].ready then
		return BR.BonedustBrew;
	end

	

	-- if talents[BR.HealingElixir] and healthPercent <= 65 and cooldown[BR.HealingElixir].ready then
	-- 	return BR.HealingElixir;
	-- end

	-- if staggerPercent > 20 and cooldown[BR.PurifyingBrew].charges > 1.5 and cooldown[BR.PurifyingBrew].ready then
	-- 	MaxDps:GlowCooldown(BR.PurifyingBrew, cooldown[BR.PurifyingBrew].ready);
	-- end

	-- if staggerPercent > 50 and cooldown[BR.PurifyingBrew].ready then
	-- 	MaxDps:GlowCooldown(BR.PurifyingBrew, cooldown[BR.PurifyingBrew].ready);
	-- end
	
	-- if talents[BR.BlackOxBrew] and not cooldown[BR.PurifyingBrew].ready and not cooldown[BR.CelestialBrew].ready then
	-- 	MaxDps:GlowCooldown(BR.BlackOxBrew, cooldown[BR.BlackOxBrew].ready);
	-- end
		
	-- if healthPercent <= 30 and cooldown[BR.FortifyingBrew].ready then
	-- 	return BR.FortifyingBrew;
	-- end

	-- --TOD on CD
	-- MaxDps:GlowCooldown(BR.TouchOfDeath,cooldown[BR.TouchOfDeath].ready and targetHealthPercent < 15 and targetHealth < health and targetHealth > 0);
	-- --Niuzao on CD
	-- MaxDps:GlowCooldown(BR.InvokeNiuzao,cooldown[BR.InvokeNiuzao].ready);
	-- --DEFENSIVE GOES FIRST
	-- if staggerPercent > 60 and cooldown[BR.CelestialBrew].ready then
	-- 	MaxDps:GlowCooldown(BR.CelestialBrew, cooldown[BR.CelestialBrew].ready);
	-- end

	-- if healthPercent <= 50 and cooldown[BR.CelestialBrew].ready then
	-- 	MaxDps:GlowCooldown(BR.CelestialBrew, cooldown[BR.CelestialBrew].ready);
	-- end

	
	
	-- --MaxDps:GlowCooldown(BR.WeaponsOfOrder, cooldown[BR.WeaponsOfOrder].ready);
	-- MaxDps:GlowCooldown(BR.LegSweep, cooldown[BR.LegSweep].ready);

	-- if cooldown[BR.KegSmash].ready then
	-- 	return BR.KegSmash;
	-- end

	-- if cooldown[BR.BlackoutKick].ready then
	-- 	return BR.BlackoutKick;
	-- end

	-- if cooldown[BR.BreathofFire].ready then
	-- 	return BR.BreathofFire;
	-- end

	-- if talents[BR.RushingJadeWind] and cooldown[BR.RushingJadeWind].ready and buff[BR.RushingJadeWind].remains < 1 then
	-- 	return BR.RushingJadeWind;
	-- end	

	-- if energy >= 65 and targets < 3 then
	-- 	return BR.TigerPalm;
	-- elseif energy >=65 and targets >= 3 then
	-- 	return BR.SpinningCraneKick;
	-- end
end

