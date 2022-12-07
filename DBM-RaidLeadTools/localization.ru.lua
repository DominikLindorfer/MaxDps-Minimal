if GetLocale() ~= "ruRU" then
	return
end
local L

-- StickyIcons
L = DBM:GetModLocalization("StickyIcons")

L:SetOptionLocalization({
	Enabled			= "Всегда устанавливать метки рейда обратно, на те места где они были при начале боя",
	--IconsUpdateTime	= "How frequent should it check for icon updates?"
})

-- WarnForLootmaster
L = DBM:GetModLocalization("WarnForLootmaster")

L:SetOptionLocalization({
	Enabled	= "Показать сообщение в начале боя если не выбрана система \"Ответственный за добычу\""
})

L:SetMiscLocalization({
	WarningNoLootmaster	= "Система \"Ответственный за добычу\" отключена! - Включите систему \"Ответственный за добычу\"!"
})

-- AutoInvite
L = DBM:GetModLocalization("AutoInvite")

L:SetOptionLocalization({
	Enabled				= "Включить авто-приглашения по ключевому слову",
	AllowGuildMates		= "Разрешить авто-приглашения от участников гильдии",
	AllowFriends 		= "Разрешить авто-приглашения от друзей",
	AllowOthers 		= "Разрешить авто-приглашения от любого",
	PromoteEveryone		= "Повысить всех игроков (не рекомендуется)",
	AOEbyGuildRank		= "Пригласить всех игроков этого звания или выше",
	PromoteGuildRank	= "Повысить по званию в гильдии",
	KeyWord 			= "Ключевое слово шепота для приглашения",
	PromoteByNameList	= "Авто-повышение следующих игроков (разделение пропуском)",
	Button_AOE_Invite	= "Пригласить всех игроков этого звания или выше"
})

L:SetMiscLocalization({
	WarnMsg_NoRaid			= "Пожалуйста создайте рейдовую группу перед использованием массового приглашения",
	WarnMsg_NotLead			= "Извините, вы должны быть лидером или помощником/наводчиком",
	WarnMsg_InviteIncoming	= "<DBM> Скоро будет произведено массовое приглашение! Пожалуйста, покиньте ваши группы.",
	WhisperMsg_RaidIsFull 	= "К сожалению, я не могу пригласить вас. Рейд полон.",
	WhisperMsg_NotLeader 	= "К сожалению, я не могу пригласить вас. Я не лидер группы/рейда.",
	DontPromoteAnyRank		= "Не производить авто-повышение по званию в гильдии",
	InviteFailed 			= "Не могу пригласить игрока %s",
	ConvertRaid 			= "Конвертация группы в рейд"
})

-- BidBot
L = DBM:GetModLocalization("BidBot")

L:SetOptionLocalization({
	Enabled				= "Включить Bidbot (!bid [item])",
	ShowinRaidWarn		= "Показать предмет в Объявлении рейду",
	PublicBids			= "Вывод ставок в чат публичных торгов",
	PayWhatYouBid		= "Оплата ставки, (иначе вторая ставка + 1)",
	ChatChannel			= "Использовать чат для вывода",
	MinBid				= "Минимальная ставка",
	Duration			= "Время для ставок в сек",
	OutputBids			= "Вывод наивысших ставок"
})

L:SetMiscLocalization({
	WarnMsg_ChanNotFound	= "Неизвестный канал для: %s",
	Whisper_Queue 			= "Запущен другой аукцион. Ваш предмет добавлен в очередь.",
	Whisper_Bid_OK 			= "Ваша ставка в размере %d DKP принята.",
	Whisper_Bid_DEL			= "Ваша ставка удалена!",
	Whisper_Bid_DEL_failed	= "Вы не можете удалить ставки в режиме открытых торгов",
	Whisper_InUse 			= "<удалить меня>",
	Message_StartRaidWarn	= "Ставка на %s - шепнуть: |3-2([%s])!",
	Message_StartBidding	= "Пожалуйста сделайте ставку на %s, шепнув: |3-2([%s])! Минимальная возможная ставка: %d",
	Message_DoBidding		= "Остаток времени для %s: %d сек.",
	Message_ItemGoesTo		= "%2$s выигрывает %1$s, за %3$d DKP!",
	Message_NoBidMade		= "Нет ставки для %s.",
	Message_Biddings		= "%d. %s ставка %d DKP.",
	Message_BiddingsVisible	= "%d игроков сделали ставки на данный предмет.",
	Message_BidPubMessage	= "Новая ставка: %s ставок %d DKP",
	Disenchant				= "Распыление",
	PopUpAcceptDKP			= "Сохранить ставку для %s. Для распыление введите значение DKP = 0.",
	Local_NoRaid			= "Чтобы использовать эту функцию вы должны быть в рейд группе",
	Prefix					= "[BidBot]: ",
	TabCategory_History		= "История предмета",
	AreaHistory				= "История предмета",
	Local					= "только локальный вывод",
	Guild					= "использовать чат гильдии",
	Raid					= "использовать чат рейда",
	Party					= "использовать чат группы",
	Officer					= "использовать чат офицеров"
})

-- DKP
L = DBM:GetModLocalization("DKP")

L:SetOptionLocalization({
	Enabled					= "Включить систему DKP для отслеживания событий рейда",
	Button_StartDKPTracking	= "Начать отслеживание DKP",
	Button_StopDKPTracking	= "остановить отслеживание DKP",
	Button_CreateEvent		= "Создать особое событие",
	Button_ResetHistory		= "Сброс истории",
	Enable_StartEvent		= "Создать событие при создании рейда",
	Enable_TimeEvents		= "Создать событие полагаясь на время (пример: 1 событие в час)",
	Enable_BossEvents		= "Создать событие при убийстве босса",
	Enable_SB_Users			= "Количество игроков в резерве",
	Enable_5ppl_tracking	= "Включить отслеживание DKP в подземельях на 5чел",
	CustomPoint				= "Присуждаемые очки",
	CustomDescription		= "Описание данного события",
	StartPoints				= "Очков в начале рейда",
	StartDescription		= "Описание начала рейда",
	BossPoints				= "Очков за убийство босса",
	BossDescription			= "Описание для убийства босса (%s название босса)",
	TimePoints				= "Очков за время события (пример: 10 DKP в час)",
	TimeDescription			= "Описание события по времени",
	TimeToCount				= "каждые X мин",
	--CustomFor				= "Award points to"
})

L:SetMiscLocalization({
	Local_NoRaidPresent			= "Пожалуйста, вступите в группу рейда перед началом отслеживания DKP",
	Local_EventCreated			= "Ваше событие успешно создано",
	Local_Debug_NoRaid			= "Событие НЕ создано, нету игроков! Пожалуйста, создайте событие вручную!",
	Local_TimeReached 			= "Создано новое событие рейда основанное по времени",
	Local_StartRaid				= "Начат новый рейд",
	Local_NoInformation			= "Пожалуйста, укажите название данного события и очки",
	LocalError_AddItemNoRaid	= "Нет запущенного рейда для сохранения данного предмета",
	Local_RaidSaved				= "Текущий рейд успешно закрыт",
	CustomDefault				= "хорошо сыграли, быстрый заход, призовые DKP",
	AllPlayers					= "все игроки",
	TabCategory_History			= "История рейда",
	AreaHistory					= "История событий",
	History_Line				= "[%s][%s]: %s (%d)" -- [date][zone] Hogger (playercount)
})

-- StandByBot
L = DBM:GetModLocalization("StandByBot")

L:SetOptionLocalization({
	Enabled				= "Включить standby-bot (!sb)",
	SendWhispers		= "Выслать информационный шепот игроку при выходе из рейда",
	Button_ResetHistory	= "сброс"
})

L:SetMiscLocalization({
	Local_NoRaid		= "Чтобы использовать эту функцию вы должны быть в рейд группе",
	InRaidGroup			= "К сожалению, вы должны выйти из рейда, прежде чем попасть в резерв.",
	LeftRaidGroup 		= "Вы покинули рейд. Если вы хотите быть добавлены в резерв, пожалуйста, не забудьте шепнуть мне \"!sb\".",
	AddedSBUser			= "Вы добавлены в резерв. Пожалуйста, оставайтесь в сети пока вы нам не понадобитесь или будете убраны из резерва.",
	UserIsAllreadySB	= "К сожалению, вы уже состоите в резерве. Чтобы удалить вас из резерва, шепните мне \"!sb off\".",
	NoLongerStandby		= "Вы больше не состоите в резерве. Вы пробыли в резерве %d ч. и %d м.",
	PostStandybyList	= "В текущий момент в резерве:",
	Local_AddedPlayer	= "[SB]: %s добавлен в резерв.",
	Local_RemovedPlayer	= "[SB]: %s убран из резерва.",
	Local_CantRemove	= "К сожалению, не могу удалить игрока.",
	Local_CleanList		= "Список резерва очищен (по запросу: |3-1(%s))",
	Current_StandbyTime	= "Резерв %s:",
	History_OnJoin		= "[%s]: %s добавлен в резерв",
	History_OnLeave		= "[%s]: %s покинул резерв спустя %s мин",
	SB_History_Saved	= "Список резерва сохранен под ID %s.",
	SB_History_NotSaved	= "В резерве нет игроков --> история не сохранена",
	SB_History_Line		= "[ID=%d] Рейд: %s, с %d участниками",
	SB_Documentation	= [[Этот модуль резерва, позволяет рейд лидерам управлять игроками, которые в настоящее время не могут рейдить из-за полного состава рейда или чего-то еще. Все перечисленные команды могут быть использованы в чате гильдии.

!sb               - показать список игроков в резерве
!sb times         - показать текущее время резерва
!sb add <nick>    - добавить игрока в резерв
!sb del <nick>    - удалить игрока из резерва
!sb save          - сохранить текущее состояние
!sb reset         - очистить список резерва
!sb history [id]  - показать историю резерва

Игроки, которые хотят быть добавлены в резерв, должны шепнуть '!sb', тому игроку у которого запущен данный мод. Этому игроку будет отправлено подтверждения. Чтобы выйти из резерва они должны шепнуть '!sb off'"..]]
})
