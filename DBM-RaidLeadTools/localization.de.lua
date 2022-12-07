if GetLocale() ~= "deDE" then
	return
end
local L

-- StickyIcons
L = DBM:GetModLocalization("StickyIcons")

L:SetOptionLocalization({
	Enabled			= "Always set Raidicons back to as they where on combat start",
	--IconsUpdateTime	= "How frequent should it check for icon updates?"
})

-- WarnForLootmaster
L = DBM:GetModLocalization("WarnForLootmaster")

L:SetOptionLocalization({
	Enabled	= "Zeige eine Warnung wenn bei Kampfanfang kein Plündermeister eingestellt ist"
})

L:SetMiscLocalization({
	WarningNoLootmaster	= "Plündermeister ist aus! - Bitte vergiss nicht Plündermeister zu aktivieren!"
})

-- AutoInvite
L = DBM:GetModLocalization("AutoInvite")

L:SetOptionLocalization({
	Enabled				= "Aktiviere Einladungen durch Schlüsselwort",
	AllowGuildMates		= "Erlaube Auto-Einladungen durch Gildenmitglieder",
	AllowFriends 		= "Erlaube Auto-Einladungen durch Freunde",
	AllowOthers 		= "Erlaube Auto-Einladungen durch jeden",
	PromoteEveryone		= "Setze alle neuen Spieler als Assistent (nicht empfohlen)",
	AOEbyGuildRank		= "Lade alle Spieler mit diesem oder darüber liegenden Rang ein",
	PromoteGuildRank	= "Befördere anhand des Gildenrangs",
	KeyWord 			= "Schlüsselwort zum flüstern für automatische Einladung",
	PromoteByNameList	= "Automatische Beförderung der Spieler (getrennt durch Leerzeichen)",
	Button_AOE_Invite	= "AoE-Einladung"
})

L:SetMiscLocalization({
	WarnMsg_NoRaid			= "Bitte erzeuge eine Schlachtgruppe bevor du die AoE Einladung startest.",
	WarnMsg_NotLead			= "Du musst Schlachtzugsleitung oder Assistent sein um diesen Befehl zu nutzen",
	WarnMsg_InviteIncoming	= "<DBM> AoE-Einladung kommt! Bitte verlasst eure Gruppen jetzt!.",
	WhisperMsg_RaidIsFull 	= "Entschuldige, aber der Raid ist schon voll.",
	WhisperMsg_NotLeader 	= "Entschuldige, aber ich bin nicht Invite-berechtigt.",
	DontPromoteAnyRank		= "Keine Beförderung durch Gildenrang",
	InviteFailed 			= "Kann Spieler %s nicht einladen",
	ConvertRaid 			= "Wandle Gruppe zu Schlachtzug um"
})

-- BidBot
L = DBM:GetModLocalization("BidBot")

L:SetOptionLocalization({
	Enabled				= "Aktiviere Bidbot (!bid [item])",
	ShowinRaidWarn		= "Item als Raidwarnung Anzeigen",
	PublicBids			= "Zeige Gebote öffentlich im Chat",
	PayWhatYouBid		= "Bezahlt wird was geboten wird (ansonsten zweites gebot + 1)",
	ChatChannel			= "Chat für Ausgaben",
	MinBid				= "Minimum Gebot",
	Duration			= "Zeit zum Bieten in sec",
	OutputBids			= "Zeige Top X gebote"
})

L:SetMiscLocalization({
	WarnMsg_ChanNotFound	= "Unbekannter Chat für: %s",
	Whisper_Queue 			= "Zur Zeit wird noch geboten. Item(s) landen in der Warteschlange.",
	Whisper_Bid_OK 			= "Dein Gebot von %d DKP wurde akzeptiert.",
	Whisper_Bid_DEL			= "Dein Gebot wurde gelöscht!",
	Whisper_Bid_DEL_failed	= "You can't delete bids in open bidding mode",
	Whisper_InUse 			= "Zur Zeit wird noch auf %s geboten.",
	Message_StartRaidWarn	= "Gebote für %s - absofort bei [%s]!",
	Message_StartBidding	= "Jetzt für %s bei %s bieten! Mindestgebot: %d",
	Message_DoBidding		= "Verbleibende Zeit für %s: %d Sekunden.",
	Message_ItemGoesTo		= "%s geht an %s für %d Punkte.",
	Message_NoBidMade		= "Keiner hat auf %s geboten.",
	Message_Biddings		= "%d. %s hat %d DKP geboten.",
	Message_BiddingsVisible	= "es wurden nur %d Gebote angezeigt.",
	Message_BidPubMessage	= "Neues Gebot: %s hat %d DKP geboten.",
	Disenchant				= "Disenchant",
	PopUpAcceptDKP			= "Speichere Gebot für %s. Bei Disenchant bitte 0 DKP eingeben.",
	Local_NoRaid			= "Du musst in einer Schlachtgruppe sein um diese Funktion zu nutzen.",
	Prefix					= "[BidBot]: ",
	TabCategory_History		= "Gegenstands Historie",
	AreaHistory				= "Gegenstands Historie",
	Local					= "nur lokal ausgeben",
	Guild					= "nutze Gilden Chat",
	Raid					= "nutze Schlachtzug Chat",
	Party					= "nutze Gruppen Chat",
	Officer					= "nutze Offiziers Chat"
})

-- DKP
L = DBM:GetModLocalization("DKP")

L:SetOptionLocalization({
	Enabled					= "Aktiviere das DKP System um Schlachtzüge zu Speichern",
	Button_StartDKPTracking	= "Starte DKP Erfassung",
	Button_StopDKPTracking	= "Beende DKP Erfassung",
	Button_CreateEvent		= "Erzeuge Sonder-Event",
	Button_ResetHistory		= "Reset History",
	Enable_StartEvent		= "Erzeuge Event bei Raidstart",
	Enable_TimeEvents		= "Erzeuge Event nach Zeit (z.B. 1x pro Stunde)",
	Enable_BossEvents		= "Erzeuge Event bei Bosskills",
	Enable_SB_Users			= "Werte Standby-Spieler als Member",
	Enable_5ppl_tracking	= "Aktiviere DKP für 5 Spieler Instanzen",
	CustomPoint				= "Punkte zu geben",
	CustomDescription		= "Beschreibung für dieses Event",
	StartPoints				= "Punkte bei Start",
	StartDescription		= "Beschreibung für Schlachtzug-Start Event",
	BossPoints				= "Punkte je Bosskill",
	BossDescription			= "Beschreibung für BossKills (%s für Bossnamen)",
	TimePoints				= "Punkte je Zeitevent (z.B. 10 DKP pro Stunde)",
	TimeDescription			= "Beschreibung für Zeit Events",
	TimeToCount				= "jede X Min",
	--CustomFor				= "Award points to"
})

L:SetMiscLocalization({
	Local_NoRaidPresent			= "Bitte trete einer Schlachtgruppe bei, bevor du den DKP Tracker startest.",
	Local_EventCreated			= "Das Event wurde erfolgreich erzeugt.",
	Local_Debug_NoRaid			= "Kein Spieler gefunden, Event NICHT gespeichert! Bitte Event von Hand anlegen.",
	Local_TimeReached 			= "Ein neues Zeit Event wurde angelegt.",
	Local_StartRaid				= "Neuer Raid gestartet.",
	Local_NoInformation			= "Bitte gebe die Punkte sowie den Namen für das Event an.",
	LocalError_AddItemNoRaid	= "Kein Raid vorhanden um das Item zu speichern!",
	Local_RaidSaved				= "Schlachtgruppe erfolgreich geschlossen.",
	CustomDefault				= "super gespielt, extra dkp",
	AllPlayers					= "alle Spieler",
	TabCategory_History			= "Schlachtzug Historie",
	AreaHistory					= "Event Historie",
	History_Line				= "[%s][%s]: %s (%d)" -- [date][zone] Hogger (playercount)
})

-- StandByBot
L = DBM:GetModLocalization("StandByBot")

L:SetOptionLocalization({
	Enabled				= "Aktiviere Standby-Bot (!sb)",
	SendWhispers		= "Informiere spieler über SB beim Verlasen der Schlachtgruppe",
	--Button_ResetHistory	= "Reset history"
})

L:SetMiscLocalization({
	Local_NoRaid		= "Du musst in einem Schlachtzug sein um diese Funktion zu nutzen.",
	InRaidGroup			= "Bitte verlasse erst die Schlachtgruppe bevor du dich Standby meldest.",
	LeftRaidGroup 		= "Du hast die Schlachtgruppe verlassen. Bitte vergiss nicht dich Standby zu melden indem du \"!sb\" an mich flüsterst.",
	AddedSBUser			= "Du bist nun Standby. Bitte sei Verfügbar bis du benötigt wirst oder von der Liste entfernt wurdest.",
	UserIsAllreadySB	= "Entschuldigung, aber du bist schon Standby. Wenn du dich von der SB Liste löschen willst verwende \"!sb off\".",
	NoLongerStandby		= "Du bist nun nichtmehr Standby. Du warst für %d Stunden und %d Minuten Standby.",
	PostStandybyList	= "Aktuell Standby:",
	Local_AddedPlayer	= "[SB]: %s nun auf Standby.",
	Local_RemovedPlayer	= "[SB]: %s ist nichtmehr auf Standby.",
	Local_CantRemove	= "Der Spieler konnte nicht entfernt werden.",
	Local_CleanList		= "Die SB Liste wurde geleert aufgrund einer Aufforderung von %s.",
	Current_StandbyTime	= "Standby Zeiten vom %s:",
	History_OnJoin		= "[%s]: %s ist nun SB",
	History_OnLeave		= "[%s]: %s ist nichtmehr SB nach %s Min",
	SB_History_Saved	= "Die Standbyliste wurde gespeichert unter ID %s.",
	SB_History_NotSaved	= "Kein Spieler war Standby -> es wurde keine History gespeichert",
	SB_History_Line		= "[ID=%d] Schlachtzug vom %s mit %d Spielern",
	SB_Documentation	= [[Dieses Standby Modul erlaubt es Raidleadern spieler zu verwalten die aktuell nicht mitraiden können da beispielsweise der Schlachtzug voll ist. Alle angegebenen Befehle können im Gildenchat eingegeben werden.

!sb               - zeigt die aktuellen SB Spieler
!sb times         - zeigt die Zeiten der Spieler an
!sb add <nick>    - fügt einen neuen Spieler manuell hinzu
!sb del <nick>    - löscht einen Spieler manuell
!sb save          - sichert die Schlachtgruppe und beendet SB
!sb reset         - löscht unwiederbringlich alle SB Daten
!sb history [id]  - Zeigt die vergangenen SB Listen

Spieler die sich Standby melden wollen müssen '!sb' an den Spieler flüstern der dieses Mod verwendet bzw. denjenigen der im Gildenchat auf '!sb' reagiert. Eine Bestätigung wird an den Spieler verschickt. Um sich von der SB Liste zu löschen muss man '!sb off' flüstern.]]
})
