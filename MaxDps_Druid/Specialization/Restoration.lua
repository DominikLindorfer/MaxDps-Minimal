local _, addonTable = ...;

--- @type MaxDps
if not MaxDps then return end

local Druid = addonTable.Druid;
local MaxDps = MaxDps;
local UnitPower = UnitPower;
local UnitPowerMax = UnitPowerMax;

local RR = {
	Mangle               = 33917,
	Renewal = 108238,
	Rejuvenation = 774,
	Lifebloom = 33763,
	Regrowth = 8936,
	Nourish = 289022,
	Overgrowth = 203651,
	Swiftmend = 18562,
	Ironbark = 102342,
	Flourish = 197721,
	Incarnation = 33891,
	Innervate = 29166,
};

setmetatable(RR, Druid.spellMeta);

function Druid:Restoration()
	local fd = MaxDps.FrameData;
	local cooldown = fd.cooldown;
	local debuff = fd.debuff;
	local talents = fd.talents;
	local targets = fd.targets;
	local buff = fd.buff;
	
	local targetHp = MaxDps:TargetPercentHealth() * 100;
	local health = UnitHealth('player');
	local healthMax = UnitHealthMax('player');
	local healthPercent = (health / healthMax) * 100;

	local mana = UnitPower('player', 0);
	local manaMax = UnitPowerMax('player', 0);
	local manaPercent = (mana / manaMax) * 100;
	
	-- Essences
	-- MaxDps:GlowEssences();

	-- Cooldowns
	if manaPercent <= 95 then
		MaxDps:GlowCooldown(RR.Innervate, cooldown[RR.Innervate].ready);
	end

	if talents[RR.Incarnation] then
		if targetHp <= 30 then
			MaxDps:GlowCooldown(RR.Incarnation, cooldown[RR.Incarnation].ready);
		end
	end

	if targetHp <= 35 then
		MaxDps:GlowCooldown(RR.Ironbark, cooldown[RR.Ironbark].ready);
	end

	if targetHp <= 40 then
		MaxDps:GlowCooldown(RR.Flourish, cooldown[RR.Flourish].ready);
	end

	if targetHp <= 60 then  
		MaxDps:GlowCooldown(RR.Overgrowth, cooldown[RR.Overgrowth].ready);
	end

	if targetHp <= 70 then
		MaxDps:GlowCooldown(RR.Swiftmend, cooldown[RR.Swiftmend].ready);
	end

	if targetHp < 95 then
		if not buff[RR.Rejuvenation].up then
			return RR.Rejuvenation
		end
	end
	
	if targetHp < 95 then
		if not buff[RR.Lifebloom].up then
			return RR.Lifebloom
		end
	end

	if targetHp < 95 then
		if not buff[RR.Regrowth].up then
			return RR.Regrowth
		end
	end
	
	if targetHp < 85 then
		if not buff[RR.Nourish].up then
			return RR.Nourish
		end
	end


end

-- function Druid:RestorationCooldowns()
-- 	local fd = MaxDps.FrameData;
-- 	local cooldown = fd.cooldown;
-- 	local debuff = fd.debuff;
-- 	local talents = fd.talents;
-- 	local targets = fd.targets;
-- 	local buff = fd.buff;
	
-- 	local targetHp = MaxDps:TargetPercentHealth() * 100;
-- 	local health = UnitHealth('player');
-- 	local healthMax = UnitHealthMax('player');
-- 	local healthPercent = (health / healthMax) * 100;
	
-- 	if talents[RR.Incarnation] then
-- 		if targetHp <= 30 then
-- 			MaxDps:GlowCooldown(RR.Incarnation, cooldown[RR.Incarnation].ready);
-- 		end
-- 	end
-- 	if targetHp <= 35 then
-- 		MaxDps:GlowCooldown(RR.Ironbark, cooldown[RR.Ironbark].ready);
-- 	end
-- 	if targetHp <= 40 then
-- 		MaxDps:GlowCooldown(RR.Flourish, cooldown[RR.Flourish].ready);
-- 	end

-- 	if targetHp <= 50 then
-- 		MaxDps:GlowCooldown(RR.Overgrowth, cooldown[RR.Overgrowth].ready);
-- 	end

-- 	if targetHp <= 60 then
-- 		MaxDps:GlowCooldown(RR.Swiftmend, cooldown[RR.Swiftmend].ready);
-- 	end
	
	

	
-- 	-- if healthPercent <= 45 then
-- 	-- 	MaxDps:GlowCooldown(GR.Renewal, cooldown[GR.Renewal].ready);
-- 	-- end
	
-- 	-- if healthPercent <= 70 then
-- 	-- 	MaxDps:GlowCooldown(GR.Barkskin, cooldown[GR.Barkskin].ready);
-- 	-- end
	
-- 	-- if healthPercent <= 75 then
-- 	-- 	MaxDps:GlowCooldown(GR.FrenziedRegeneration, cooldown[GR.FrenziedRegeneration].ready);
-- 	-- end
	
-- 	-- -- barkskin,if=buff.bear_form.up;
-- 	-- if healthPercent <= 90 then
-- 	-- 	MaxDps:GlowCooldown(GR.Ironfur, cooldown[GR.Ironfur].ready and rage >= 40);
-- 	-- end
		
-- 	-- -- lunar_beam,if=buff.bear_form.up;
-- 	-- if talents[GR.LunarBeam] then
-- 	-- 	MaxDps:GlowCooldown(GR.LunarBeam, cooldown[GR.LunarBeam].ready);
-- 	-- end

-- 	-- -- bristling_fur,if=buff.bear_form.up;
-- 	-- if talents[GR.BristlingFur] then
-- 	-- 	MaxDps:GlowCooldown(GR.BristlingFur, cooldown[GR.BristlingFur].ready);
-- 	-- end

-- 	-- -- incarnation,if=(dot.moonfire.ticking|active_enemies>1)&dot.thrash_bear.ticking;
-- 	-- if talents[GR.Incarnation] then
-- 	-- 	MaxDps:GlowCooldown(GR.Incarnation, cooldown[GR.Incarnation].ready and (
-- 	-- 		(debuff[GR.MoonfireDot].up or targets > 1) and debuff[GR.ThrashDot].up)
-- 	-- 	);
-- 	-- end
	
-- 	-- pulverize,target_if=dot.thrash_bear.stack=dot.thrash_bear.max_stacks;
-- 	--if talents[GR.Pulverize] and cooldown[GR.Pulverize].ready and debuff[GR.ThrashDot].count >= 2 then
-- 	--	MaxDps:GlowCooldown(GR.Pulverize, cooldown[GR.Pulverize].ready);
-- 	--end
-- end
