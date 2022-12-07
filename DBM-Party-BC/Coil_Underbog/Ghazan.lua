local mod	= DBM:NewMod(577, "DBM-Party-BC", 5, 262)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,timewalker"

mod:SetRevision("20210922153837")
mod:SetCreatureID(18105)
mod:SetEncounterID(1945)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 15716"
)

local warnEnrage	= mod:NewSpellAnnounce(15716, 4)

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 15716 then
		warnEnrage:Show()
	end
end
