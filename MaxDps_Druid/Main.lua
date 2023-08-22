local addonName, addonTable = ...;
_G[addonName] = addonTable;

--- @type MaxDps
if not MaxDps then return end
local MaxDps = MaxDps;
local UnitPower = UnitPower;

local Druid = MaxDps:NewModule('Druid', 'AceEvent-3.0');
addonTable.Druid = Druid;

Druid.spellMeta = {
	__index = function(t, k)
		print('Spell Key ' .. k .. ' not found!');
	end
}

function Druid:Enable()
	Druid:UnregisterEvent('UNIT_SPELLCAST_SUCCEEDED');
	if MaxDps.Spec == 1 then
		MaxDps:Print(MaxDps.Colors.Info .. 'Druid Balance');
	elseif MaxDps.Spec == 2 then
		MaxDps:Print(MaxDps.Colors.Info .. 'Druid Feral not implemented!');
	elseif MaxDps.Spec == 3 then
		MaxDps.NextSpell = Druid.Guardian;
		MaxDps.NextCooldown = Druid.GuardianCooldowns;
		MaxDps:Print(MaxDps.Colors.Info .. 'Druid Guardian not implemented!');
	elseif MaxDps.Spec == 4 then
		MaxDps:Print(MaxDps.Colors.Info .. 'Druid Restoration not implemented!');
	end

	return true;
end