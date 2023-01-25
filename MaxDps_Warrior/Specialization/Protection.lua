local _, addonTable = ...;

--- @type MaxDps
if not MaxDps then
	return
end

local Warrior = addonTable.Warrior;
local MaxDps = MaxDps;
local UnitPower = UnitPower;
local UnitHealth = UnitHealth;
local UnitAura = UnitAura;
local GetSpellDescription = GetSpellDescription;
local UnitHealthMax = UnitHealthMax;
local UnitPowerMax = UnitPowerMax;
local PowerTypeRage = Enum.PowerType.Rage;

local PR = {
	Avatar            = 107574,
	ThunderClap       = 6343,
	UnstoppableForce  = 275336,
	ShieldBlock       = 2565,
	ShieldBlockAura   = 132404,
	ShieldSlam        = 23922,
	LastStand         = 12975,
	Bolster           = 280001,
	IgnorePain        = 190456,
	BoomingVoice      = 202743,
	DemoralizingShout = 1160,
	Ravager           = 228920,
	DragonRoar        = 118000,
	Revenge           = 6572,
	NeverSurrender    = 202561,
	RevengeAura       = 5302,
	Devastate         = 20243,
	ImpendingVictory = 202168,
	Battleshout = 6673,
	Shockwave = 46968,
	Shieldwall = 871,
	Execute = 163201,
	Whirlwind = 1680,
	ThunderousRoar = 384318,
	RallyingCry = 97462,
};

setmetatable(PR, Warrior.spellMeta);

function Warrior:Protection()
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

	if talents[PR.Shockwave] and cooldown[PR.Shockwave].ready then
		return PR.Shockwave;
	end

	if cooldown[PR.ThunderClap].ready then
		return PR.ThunderClap;
	end
	
	if cooldown[PR.ShieldSlam].ready then
		return PR.ShieldSlam;
	end

	if cooldown[PR.Revenge].ready then
		return PR.Revenge;
	end

	if cooldown[PR.Execute].ready and target.healthPerc < 20 then
		return PR.Execute;
	end

end

function Warrior:ProtectionCooldowns()
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

	if healthPerc <=30 and cooldown[PR.RallyingCry].ready then
		return PR.RallyingCry;
	end

	if healthPerc <= 45 and cooldown[PR.Shieldwall].ready then
		return PR.Shieldwall;
	end

	if healthPerc <= 50 and cooldown[PR.LastStand].ready then
		return PR.LastStand;
	end

	if healthPerc <= 70 and cooldown[PR.ImpendingVictory].ready then
		return PR.ImpendingVictory;
	end
	
	if rage >= 30 and cooldown[PR.ShieldBlock].ready then
		return PR.ShieldBlock;
	end
	
	if (rage >= 35 and buff[PR.IgnorePain].refreshable) or (rage >= 35 and absorb <= 50000) then
		return PR.IgnorePain;
	end

	if cooldown[PR.Avatar].ready then
		return PR.Avatar;
	end

	if cooldown[PR.DemoralizingShout].ready then
		return PR.DemoralizingShout;
	end

	if talents[PR.Ravager] and cooldown[PR.Ravager].ready then
		return PR.Ravager;
	end

	if talents[PR.ThunderousRoar] and cooldown[PR.ThunderousRoar].ready then
		return PR.ThunderousRoar;
	end

end
