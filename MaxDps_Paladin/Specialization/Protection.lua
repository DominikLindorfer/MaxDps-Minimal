local _, addonTable = ...;

--- @type MaxDps
if not MaxDps then
	return
end

local Paladin = addonTable.Paladin;
local MaxDps = MaxDps;
local GetTotemInfo = GetTotemInfo;

local PR = {
	AvengingWrath            = 31884,
	Seraphim                 = 152262,
	ShieldOfTheRighteous     = 53600,
	ShieldOfTheRighteousAura = 132403,
	Consecration             = 26573,
	Judgment                 = 275779,
	CrusadersJudgment        = 204023,
	AvengersShield           = 31935,
	AvengersValor            = 197561,
	BlessedHammer            = 204019,
	BastionOfLight           = 378974,
	HammerOfTheRighteous     = 53595,
	HammerOfWrath            = 24275,
	WordOfGlory              = 85673,
	ArdentDefender = 31850,
	-- DivineToll = 304971,
	DivineToll = 375576,
	GuardianOfAncientKings = 86659,
	-- ShiningLight = 327510,
	-- ShiningLight = 182104,
	ShiningLight = 327510,
	EyeOfTyr = 387174,
	DivineShield = 642,
	Sentinel = 389539,
	LayOnHands = 633,
	Forbereance = 25771,
};

setmetatable(PR, Paladin.spellMeta);

function Paladin:Protection()
	local fd = MaxDps.FrameData;
	local cooldown = fd.cooldown;
	local buff = fd.buff;
	local talents = fd.talents;
	local gcd = fd.gcd;
	local targetHp = MaxDps:TargetPercentHealth() * 100;
	local consecrationUp = GetTotemInfo(1);
	
	local health = UnitHealth('player');
	local healthMax = UnitHealthMax('player');
	local healthPercent = (health / healthMax) * 100;
	local holyPower = UnitPower('player', HolyPower);
		
	if cooldown[PR.Consecration].ready and (not consecrationUp) then
		return PR.Consecration;
	end
	
	if cooldown[PR.AvengersShield].ready then
		return PR.AvengersShield;
	end
	
	if cooldown[PR.HammerOfWrath].ready and buff[PR.Sentinel].up then
		return PR.HammerOfWrath;
	end
	
	if cooldown[PR.Judgment].ready then
		return PR.Judgment;
	end

	if cooldown[PR.HammerOfWrath].ready and targetHp <= 20 then
		return PR.HammerOfWrath;
	end

	if talents[PR.BlessedHammer] and cooldown[PR.BlessedHammer].ready then
		return PR.BlessedHammer;
	end

	if cooldown[PR.Consecration].ready then
		return PR.Consecration;
	end
end

function Paladin:ProtectionCooldowns()
	local fd = MaxDps.FrameData;
	local cooldown = fd.cooldown;
	local buff = fd.buff;
	local talents = fd.talents;
	local health = UnitHealth('player');
	local healthMax = UnitHealthMax('player');
	local healthPercent = (health / healthMax) * 100;
	local holyPower = UnitPower('player', 9);

	if healthPercent <= 8 and cooldown[PR.LayOnHands].ready then
		return PR.LayOnHands;
	end

	if healthPercent <= 15 and cooldown[PR.DivineShield].ready then
		return PR.DivineShield;
	end
	
	if (buff[PR.ShiningLight].up or buff[PR.BastionOfLight].up) and healthPercent <= 50 then
		return PR.WordOfGlory;
	end

	if not buff[PR.DivineShield].up and healthPercent <= 28 and cooldown[PR.GuardianOfAncientKings].ready then
		return PR.GuardianOfAncientKings;
	end

	if not (buff[PR.DivineShield].up or buff[PR.GuardianOfAncientKings].up) and healthPercent <= 45 and cooldown[PR.ArdentDefender].ready then
		return PR.ArdentDefender;
	end

	-- if talents[PR.BastionOfLight] and cooldown[PR.BastionOfLight].ready and healthPercent <= 60 then
		-- return PR.BastionOfLight;
	-- end

	if healthPercent <= 75 and holyPower > 2 then
		return PR.WordOfGlory;
	end
	
	if buff[PR.ShieldOfTheRighteousAura].remains <= 8 and holyPower >= 3 then
		return PR.ShieldOfTheRighteous;
	end

	if cooldown[PR.EyeOfTyr].ready then
		return PR.EyeOfTyr;
	end

	if not buff[PR.ShieldOfTheRighteousAura].up and holyPower >= 3 then
		return PR.ShieldOfTheRighteous;
	end

	if talents[PR.DivineToll] and cooldown[PR.DivineToll].ready then
		return PR.DivineToll;
	end

	if cooldown[PR.Sentinel].ready then
		return PR.Sentinel;
	end

	-- if talents[PR.Seraphim] and cooldown[PR.Seraphim].ready then
	-- 	return PR.Seraphim;
	-- end

end
