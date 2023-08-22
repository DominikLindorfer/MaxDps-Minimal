local addonName, addonTable = ...;
_G[addonName] = addonTable;

--- @type MaxDps
if not MaxDps then return end

local MaxDps = MaxDps;
local Monk = MaxDps:NewModule('Monk');
addonTable.Monk = Monk;

-- Auras
local _HitComboAura = 196741;
local _BlackoutKickAura = 116768;
local _RushingJadeWindAura = 148187;

Monk.spellMeta = {
	__index = function(t, k)
		print('Spell Key ' .. k .. ' not found!');
	end
}

function Monk:Enable()
	if MaxDps.Spec == 1 then
		MaxDps.NextSpell = Monk.Brewmaster;
		MaxDps.NextCooldown = Monk.BrewmasterCooldowns;
		MaxDps:Print(MaxDps.Colors.Info .. 'Monk Brewmaster');
	elseif MaxDps.Spec == 2 then
		MaxDps:Print(MaxDps.Colors.Info .. 'Monk Mistweaver not implemented!');
	elseif MaxDps.Spec == 3 then
		MaxDps:Print(MaxDps.Colors.Info .. 'Monk Windwalker not implemented!');
	end

	return true;
end