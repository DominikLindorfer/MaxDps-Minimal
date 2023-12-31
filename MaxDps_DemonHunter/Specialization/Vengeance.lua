local _, addonTable = ...

--- @type MaxDps
if not MaxDps then
	return
end

local DemonHunter = addonTable.DemonHunter
local MaxDps = MaxDps
local UnitPower = UnitPower
local UnitPowerMax = UnitPowerMax
local GetSpellCount = GetSpellCount

local VG = {
	BulkExtraction = 320341,
	DemonSpikes = 203720,
	DemonSpikesBuff = 203819,
	Elysiandecree = 390163,
	Fallout = 227174,
	Felblade = 232893,
	FelDevastation = 212084,
	FieryBrand = 204021,
	FieryDemise = 389220,
	Fracture = 263642,
	-- Frailty = 389958,
	Frailty = 247456,
	ImmolationAura = 258920,
	InfernalStrike = 189110,
	Metamorphosis = 187827,
	Shear = 203782,
	SigilOfFlame = 204596,
	SoulCarver = 207407,
	SoulCleave = 228477,
	SoulSigils = 395446,
	SoulFragments = 203981,
	SpiritBomb = 247454,
	TheHunt = 370965,
	ThrowGlaive = 204157
}

setmetatable(VG, DemonHunter.spellMeta)

---@return number
local function GetFury()
	return UnitPower('player', Enum.PowerType.Fury)
end

---@param spellId number
local function IsCastable(spellId)
	local spellTable = GetSpellPowerCost(spellId);
	local cost;
	if spellTable ~= nil then
		cost = spellTable[1].cost;
	else
		return false;
	end

	return MaxDps.FrameData.cooldown[spellId].ready and cost <= GetFury()
end

function DemonHunter:Vengeance()
	local fd = MaxDps.FrameData
	fd.fury = GetFury()
	local fd = MaxDps.FrameData
	local cooldown = fd.cooldown
	local buff = fd.buff
	local debuff = fd.debuff
	local talents = fd.talents
	local fury = fd.fury
	local furyMax = UnitPowerMax('player', Enum.PowerType.Fury)
	local furyDeficit = furyMax - fury
	local soulFragments = buff[VG.SoulFragments].count	
	
	local shear = VG.Shear
	if talents[VG.Fracture] then
		shear = VG.Fracture
	end	

	channeling = MaxDps:IsPlayerChanneling()
	if channeling then
		return nil;
	end

	if debuff[VG.Frailty].up and debuff[VG.Frailty].count >= 6 and cooldown[VG.SoulCarver].ready then
		return VG.SoulCarver;
	end

	if soulFragments >= 4 and talents[VG.SpiritBomb] and IsCastable(VG.SpiritBomb, fury) then
		return VG.SpiritBomb
	end

	if cooldown[VG.InfernalStrike].charges == cooldown[VG.InfernalStrike].maxCharges then
		return VG.InfernalStrike;
	end

	if cooldown[shear].ready then
		local castAsFallback = fury == furyMax or cooldown[shear].charges == cooldown[shear].maxCharges

		if buff[VG.Metamorphosis].up then
			if soulFragments <= 2 and (furyDeficit >= 45 or castAsFallback) then
				return shear
			end
		else
			if soulFragments <= 3 and (furyDeficit >= 25 or castAsFallback) then
				return shear
			end
		end
	end

	if IsCastable(VG.SoulCleave, fury) then
		return VG.SoulCleave;
	end

	if cooldown[VG.ImmolationAura].ready then
		return VG.ImmolationAura;
	end

	if cooldown[VG.SigilOfFlame].ready and furyDeficit >= 30 and (not talents[VG.SoulSigils] or soulFragments <= 4) then
		return VG.SigilOfFlame;
	end

	if talents[VG.SoulCarver] and cooldown[VG.SoulCarver].ready then
		return VG.SoulCarver;
	end
end

function DemonHunter:VengeanceCooldowns()
	local fd = MaxDps.FrameData
	fd.fury = GetFury()
	local fd = MaxDps.FrameData
	local cooldown = fd.cooldown
	local buff = fd.buff
	local debuff = fd.debuff
	local talents = fd.talents
	local fury = fd.fury
	local furyMax = UnitPowerMax('player', Enum.PowerType.Fury)
	local furyDeficit = furyMax - fury
	local soulFragments = buff[VG.SoulFragments].count	
	local health = UnitHealth('player');
	local healthMax = UnitHealthMax('player');
	local healthPercent = (health / healthMax) * 100;
	local timeInCombat = fd.timeInCombat;

	channeling = MaxDps:IsPlayerChanneling()
	if channeling then
		return nil;
	end

	if cooldown[VG.FieryBrand].ready then
		return VG.FieryBrand
	end

	if cooldown[VG.DemonSpikes].ready and buff[VG.DemonSpikesBuff].remains < 1 then
		return VG.DemonSpikes;
	end

	if healthPercent <= 30 then
		return VG.Metamorphosis;
	end
	
	if fury >= 50 and cooldown[VG.FelDevastation].ready then
		return VG.FelDevastation;
	end

	if timeInCombat > 2.5 then
		if cooldown[VG.Elysiandecree].ready then
			return VG.Elysiandecree;
		end	
	end

	if debuff[VG.Frailty].up and debuff[VG.Frailty].count >= 3 and cooldown[VG.TheHunt].ready then
		return VG.TheHunt;
	end

end
