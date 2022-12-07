local mod	= DBM:NewMod(523, "DBM-Party-BC", 7, 247)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20210922153837")
mod:SetCreatureID(18371)
mod:SetEncounterID(1890)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"CHAT_MSG_RAID_BOSS_EMOTE"
)

local warnFocusFire		= mod:NewTargetAnnounce(32300, 3)

local specWarnFocusFire	= mod:NewSpecialWarningDodge(32300, nil, nil, nil, 1, 2)

function mod:CHAT_MSG_RAID_BOSS_EMOTE(_, _, _, _, target)
	local targetname = DBM:GetUnitFullName(target) or target
	if targetname == UnitName("player") then
		specWarnFocusFire:Show()
		specWarnFocusFire:Play("watchstep")
	else
		warnFocusFire:Show(target)
	end
end
