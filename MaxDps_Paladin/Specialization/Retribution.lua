local _, addonTable = ...;

--- @type MaxDps
if not MaxDps then return end

local Paladin = addonTable.Paladin;
local MaxDps = MaxDps;
local UnitPower = UnitPower;
local HolyPower = Enum.PowerType.HolyPower;
local RT = {
	Rebuke            = 96231,
	ShieldOfVengeance = 184662,
	AvengingWrath     = 31884,
	Inquisition       = 84963,
	Crusade           = 231895,
	ExecutionSentence = 343527,
	ESTalent 		  = 23467,
	DivineStorm       = 53385,
	DivinePurpose     = 223817,
	TemplarsVerdict   = 85256,
	HammerOfWrath     = 24275,
	WakeOfAshes       = 255937,
	BladeOfJustice    = 184575,
	Judgment          = 20271,
	JudgmentAura      = 197277,
	Consecration      = 26573,
	CrusaderStrike    = 35395,
	DivineRight       = 277678,
	RighteousVerdict  = 267610,
	EmpyreanPower     = 326732,
	HolyAvenger       = 105809,
	Seraphim		  = 152262,
	FinalReckoning	  = 343721,
	SelflessHealer	  = 85804,
	FlashOfLight      = 19750,
	EmpyreanPowerBuff = 326733,
	FinalVerdictBuff = 337228,
	TemplarStrike = 407480,
	TemplarSlash = 406647,
	DivineToll = 375576,
};
setmetatable(RT, Paladin.spellMeta);

function Paladin:Retribution()
	local fd = MaxDps.FrameData;
	fd.targets = MaxDps:SmartAoe();
	local holyPower = UnitPower('player', HolyPower);
	fd.holyPower = holyPower;
	local cooldown = fd.cooldown;
	local buff = fd.buff;
	local debuff = fd.debuff;
	local talents = fd.talents;
	local targets = fd.targets;
	local gcd = fd.gcd;
	local targetHp = MaxDps:TargetPercentHealth() * 100;
	local health = UnitHealth('player');
	local healthMax = UnitHealthMax('player');
	local healthPercent = ( health / healthMax ) * 100;

	if holyPower == 5 and targets > 1 then
		return RT.DivineStorm;
	end

	if holyPower == 5 and targets == 1 then
		return RT.TemplarsVerdict;
	end

	if cooldown[RT.WakeOfAshes].ready and holyPower <= 2 then
		return RT.WakeOfAshes;
	end

	if cooldown[RT.DivineToll].ready then
		return RT.DivineToll;
	end

	if cooldown[RT.Judgment].ready and holyPower <= 3 then
		return RT.Judgment;
	end

	if cooldown[RT.BladeOfJustice].ready and holyPower <= 3 then
		return RT.BladeOfJustice;
	end

	if holyPower == 4 and targets > 1 then
		return RT.DivineStorm;
	end

	if holyPower == 4 and targets == 1 then
		return RT.TemplarsVerdict;
	end
	
	if cooldown[RT.HammerOfWrath].ready and targetHp <= 20 then
		return RT.HammerOfWrath;
	end

	if cooldown[RT.TemplarStrike].ready then
		return RT.TemplarStrike;
	end

	if cooldown[RT.TemplarSlash].ready then
		return RT.TemplarSlash;
	end

end



function Paladin:RetributionCooldowns()
	local fd = MaxDps.FrameData;
	fd.targets = MaxDps:SmartAoe();
	local holyPower = UnitPower('player', HolyPower);
	fd.holyPower = holyPower;
	local cooldown = fd.cooldown;
	local buff = fd.buff;
	local debuff = fd.debuff;
	local talents = fd.talents;
	local targets = fd.targets;
	local gcd = fd.gcd;
	local targetHp = MaxDps:TargetPercentHealth() * 100;
	local health = UnitHealth('player');
	local healthMax = UnitHealthMax('player');
	local healthPercent = ( health / healthMax ) * 100;

	return 1

end