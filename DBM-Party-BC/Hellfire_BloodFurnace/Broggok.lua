local mod	= DBM:NewMod(556, "DBM-Party-BC", 2, 256)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,timewalker"

mod:SetRevision("20210922153837")
mod:SetCreatureID(17380)
mod:SetEncounterID(1924)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
)
