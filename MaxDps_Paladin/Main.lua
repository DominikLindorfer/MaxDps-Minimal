﻿local addonName, addonTable = ...;
_G[addonName] = addonTable;

if not MaxDps then return end

--- @type MaxDps
local MaxDps = MaxDps;
local Paladin = MaxDps:NewModule('Paladin');
addonTable.Paladin = Paladin;

Paladin.spellMeta = {
	__index = function(t, k)
		print('Spell Key ' .. k .. ' not found!');
	end
}

function Paladin:Enable()
	if MaxDps.Spec == 1 then
		MaxDps:Print(MaxDps.Colors.Info .. 'Paladin Holy not implemented!');
	elseif MaxDps.Spec == 2 then
		MaxDps.NextSpell = Paladin.Protection;
		MaxDps.NextCooldown = Paladin.ProtectionCooldowns;
		MaxDps:Print(MaxDps.Colors.Info .. 'Paladin Protection');
	elseif MaxDps.Spec == 3 then
		MaxDps.NextSpell = Paladin.Retribution;
		MaxDps.NextCooldown = Paladin.RetributionCooldowns;
		MaxDps:Print(MaxDps.Colors.Info .. 'Paladin Retribution');
	end

	return true;
end