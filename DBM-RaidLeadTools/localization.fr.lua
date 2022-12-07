if GetLocale() ~= "frFR" then
	return
end
local L

-- StickyIcons
L = DBM:GetModLocalization("StickyIcons")

L:SetOptionLocalization({
	Enabled			= "Toujours repositionner les icônes de Raids au départ du combat",
	--IconsUpdateTime	= "How frequent should it check for icon updates?"
})

-- WarnForLootmaster
L = DBM:GetModLocalization("WarnForLootmaster")

L:SetOptionLocalization({
	Enabled	= "Afficher une alerte lorsque le combat commence et si le Maitre du Butin n'est pas activé"
})

L:SetMiscLocalization({
	WarningNoLootmaster	= "Maitre du Butin est désactivé - Merci de l'activer maintenant!"
})

-- AutoInvite
L = DBM:GetModLocalization("AutoInvite")

L:SetOptionLocalization({
	Enabled				= "Activer l'auto invite par keyword",
	AllowGuildMates		= "Autoriser l'auto-invite pour les membres de la guilde",
	AllowFriends 		= "Autoriser l'auto-invite pour les amis",
	AllowOthers 		= "Autoriser l'auto-invite pour tout le monde",
	PromoteEveryone		= "Promote tout nouveau joueur (non recommandé)",
	AOEbyGuildRank		= "Invite tous joueurs qui ont ce rang ou plus",
	PromoteGuildRank	= "Promote par Rang de guilde",
	KeyWord 			= "Keyword pour Chuchoter pour inviter",
	PromoteByNameList	= "Auto-promote les joueurs suivants (séparé par un espace)",
	Button_AOE_Invite	= "Invitation de guilde en AoE"
})

L:SetMiscLocalization({
	WarnMsg_NoRaid			= "Créer a groupe RAID avant d'utiliser l'AoE-invite",
	WarnMsg_NotLead			= "Désolé, vous devez être Leader ou Promote pour utiliser cette commande",
	WarnMsg_InviteIncoming	= "<DBM> AoE-invite imminente! Merci de quitter vos groupes maintenant.",
	WhisperMsg_RaidIsFull 	= "Désolé, je ne peux pas vous inviter, le RAID est complet.",
	WhisperMsg_NotLeader 	= "Désolé, je ne peux pas vous inviter. Je ne suis pas le Leader du groupe.",
	DontPromoteAnyRank		= "Pas d'Auto-promote par Rang de guilde",
	InviteFailed 			= "Le joueur %s ne peut être invité",
	ConvertRaid 			= "Convertir le groupe en raid"
})

-- BidBot
L = DBM:GetModLocalization("BidBot")

L:SetOptionLocalization({
	Enabled				= "Activer Bidbot (!bid [item])",
	ShowinRaidWarn		= "Afficher l'objet en alerte RAID",
	PublicBids			= "Poster les enchères sur le chat pour les enchères publics",
	PayWhatYouBid		= "Payer le prix de l'enchère, (sinon deuxième offre + 1)",
	ChatChannel			= "Utiliser le Chat pour la sortie",
	MinBid				= "Enchère Minimale",
	Duration			= "Temps pour enchérir en sec",
	OutputBids			= "Combien d'enchère pour la sortie"
})

L:SetMiscLocalization({
	WarnMsg_ChanNotFound	= "Canal inconnu pour: %s",
	Whisper_Queue 			= "Une autre action est en cours d'excécution. Votre Objet a été mis en queue.",
	Whisper_Bid_OK 			= "Votre enchère de %d DKP a été acceptée.",
	Whisper_Bid_DEL			= "Votre enchère a été supprimée!",
	Whisper_Bid_DEL_failed	= "Vous ne pouvez pas supprimer les enchères lorsque le mode Enchère est ouvert",
	Whisper_InUse 			= "<supprime moi>",
	Message_StartRaidWarn	= "Enchère maintenant pour %s - whisper à [%s]!",
	Message_StartBidding	= "Merci de faire maintenant votre enchère pour %s par whispe [%s]! Proposition la plus basse possible: %d",
	Message_DoBidding		= "Temps restant pour %s: %d secondes.",
	Message_ItemGoesTo		= "%2$s gagne %1$s pour %3$d DKP!",
	Message_NoBidMade		= "Il n'y a pas d'enchère pour %s.",
	Message_Biddings		= "%d. %s enchère %d DKP.",
	Message_BiddingsVisible	= "%d enchères de joueur pour cet objet.",
	Message_BidPubMessage	= "Nouvelle enchère: %s enchères %d DKP",
	Disenchant				= "Désenchantement",
	PopUpAcceptDKP			= "Sauvegarder l'enchère pour %s. Pour le désenchantement merci de taper 0 DKP.",
	Local_NoRaid			= "Vous devez être dans un groupe RAID pour utiliser cette fonction",
	Prefix					= "[BidBot]: ",
	TabCategory_History		= "Historique des objets",
	AreaHistory				= "Historique des objets",
	Local					= "Sortie locale seulement",
	Guild					= "Utiliser le Chat: Guilde",
	Raid					= "Utiliser le Chat: Raid",
	Party					= "Utiliser le Chat: Groupe",
	Officer					= "Utiliser le Chat: Officier"
})

-- DKP
L = DBM:GetModLocalization("DKP")

L:SetOptionLocalization({
	Enabled					= "Activer le Système DKP lors de la traque des événements RAID",
	Button_StartDKPTracking	= "Démarrage de la traque au DKP",
	Button_StopDKPTracking	= "Arrêt de la traque au DKP",
	Button_CreateEvent		= "Créer un événement spécial",
	Button_ResetHistory		= "RaZ Historique",
	Enable_StartEvent		= "Créer un événement lors du départ du RAID",
	Enable_TimeEvents		= "Créer un événement basé sur le temps (e.g. 1 event par heure)",
	Enable_BossEvents		= "Créer un événement lors de la mort d'un Boss",
	Enable_SB_Users			= "Compter les joueurs en veille parmi les membres du RAID",
	Enable_5ppl_tracking	= "Activer la traque au DKP en Instance à 5",
	CustomPoint				= "Points à donner",
	CustomDescription		= "Description pour cet événement",
	StartPoints				= "Points au départ du raid",
	StartDescription		= "Description au départ du raid",
	BossPoints				= "Points par boss tué",
	BossDescription			= "Description pour les boss tués (%s est le nom du boss)",
	TimePoints				= "Points par événement en temps (e.g. 10 DKP par heure)",
	TimeDescription			= "Description des événements en temps",
	TimeToCount				= "toutes les X min",
	--CustomFor				= "Award points to"
})

L:SetMiscLocalization({
	Local_NoRaidPresent			= "Merci de joindre un groupe RAID avant de lancer la traque des DKP",
	Local_EventCreated			= "Votre événement a été crée avec succès",
	Local_Debug_NoRaid			= "Il n'y a pas de joueurs, L'événement n'a pas été crée! Merci de créer l'événement à la main!",
	Local_TimeReached 			= "Un nouvel événement RAID basé sur le temps a été crée",
	Local_StartRaid				= "Démarrer un nouveau raid",
	Local_NoInformation			= "Merci de spécifier les points et nom de cet événement",
	LocalError_AddItemNoRaid	= "Il n'y a aucun RAID en cours pour sauvegarder cet objet",
	Local_RaidSaved				= "A conclu avec succès le RAID en cours",
	CustomDefault				= "Bien joué, rapide, extra dkp",
	AllPlayers					= "Tous les joueurs",
	TabCategory_History			= "Historique de Raid",
	AreaHistory					= "Evénement Historique",
	History_Line				= "[%s][%s]: %s (%d)" -- [date][zone] Hogger (playercount)
})

-- StandByBot
L = DBM:GetModLocalization("StandByBot")

L:SetOptionLocalization({
	Enabled				= "Activer standby-bot (!sb)",
	SendWhispers		= "Envoyer les infos en whisper des Raidleave aux joueurs",
	--Button_ResetHistory	= "Reset history"
})

L:SetMiscLocalization({
	Local_NoRaid		= "Vous devez être dans un groupe RAID pour utiliser cette fonction",
	InRaidGroup			= "Désolé mais vous avez quitté le groupe RAID avant d'aller en Attente.",
	LeftRaidGroup 		= "Vous avez quitté votre groupe RAID. N'oubliez pas de me whisper \"!sb\" Si vous n'êtes pas en Attente.",
	AddedSBUser			= "Vous êtes maintenant en Attente. Merci de rester disponible jusqu'à que nous ayons besoin de vous ou que vous soyez supprimer de la liste SB.",
	UserIsAllreadySB	= "Désolé, vous êtes déjà en attente. Supprimez vous vous même de la liste en me whispant \"!sb off\".",
	NoLongerStandby		= "Vous n'êtes plus en Attente. Vous etiez en attente depuis %d heures et %d minutes.",
	PostStandybyList	= "Actuellement en Attente:",
	Local_AddedPlayer	= "[SB]: %s est en Attente.",
	Local_RemovedPlayer	= "[SB]: %s n'est plus en Attente.",
	Local_CantRemove	= "Désolé, nous ne pouvez pas supprimer de joueur.",
	Local_CleanList		= "La liste SB a été effacée (requête faite par %s)",
	Current_StandbyTime	= "Temps d'Attente à partir de %s:",
	History_OnJoin		= "[%s]: %s est maintenant en SB",
	History_OnLeave		= "[%s]: %s quitte SB après %s min",
	SB_History_Saved	= "La liste d'attente a été sauvegardée avec ID %s.",
	SB_History_NotSaved	= "Aucun joueur était en Attente --> pas d'historique sauvegardé",
	SB_History_Line		= "[ID=%d] Raid à %s avec %d membres",
	SB_Documentation	= [[This standby module allows raid leaders to manage players who currently can't raid because of a full raid or something like this. All listed commands can be used in the guildchat.

!sb               - shows a list of standby players
!sb times         - shows the current standby times
!sb add <nick>    - adds a player to standby
!sb del <nick>    - removes a player from standby
!sb save          - saves the current status
!sb reset         - clears the standby list
!sb history [id]  - shows the standby history

Players who want to be standby have to whisper '!sb' to the player who is running this mod. A confirmation will be send to that player. To get off the standby-list they have to whisper '!sb off'.]]
})
