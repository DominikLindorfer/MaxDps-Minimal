if GetLocale() ~= "zhTW" then
	return
end
local L

-- StickyIcons
L = DBM:GetModLocalization("StickyIcons")

L:SetOptionLocalization({
	Enabled			= "戰鬥開始時總是將團隊圖示設定回",
	--IconsUpdateTime	= "How frequent should it check for icon updates?"
})

-- WarnForLootmaster
L = DBM:GetModLocalization("WarnForLootmaster")

L:SetOptionLocalization({
	Enabled	= "戰鬥開始時如隊長分配沒開啟則顯示警告"
})

L:SetMiscLocalization({
	WarningNoLootmaster	= "隊長分配目前關閉! - 請打開隊長分配!"
})

-- AutoInvite
L = DBM:GetModLocalization("AutoInvite")

L:SetOptionLocalization({
	Enabled				= "開啟關鍵字自動邀請",
	AllowGuildMates		= "允許來自公會成員的自動邀請",
	AllowFriends 		= "允許來自好友的自動邀請",
	AllowOthers 		= "允許來自任何人的自動邀請",
	PromoteEveryone		= "提升所有新進來的玩家 (不建議)",
	AOEbyGuildRank		= "邀請所有等於或大於所選階級的玩家",
	PromoteGuildRank	= "根據公會階級提升",
	KeyWord 			= "用於密語邀請的關鍵字",
	PromoteByNameList	= "自動提升以下玩家 (用空格分開)",
	Button_AOE_Invite	= "集體邀請公會成員"
})

L:SetMiscLocalization({
	WarnMsg_NoRaid			= "使用集體邀請前請先建立一個團隊",
	WarnMsg_NotLead			= "對不起，你必須為團長或助理才能使用此命令",
	WarnMsg_InviteIncoming	= "<DBM> 收到集體邀請! 請現在離開你的隊伍.",
	WhisperMsg_RaidIsFull 	= "對不起，我不能邀請你。團隊已滿了。",
	WhisperMsg_NotLeader 	= "對不起，我不能邀請你。我不是組長。",
	DontPromoteAnyRank		= "不根據公會階級提升",
	InviteFailed 			= "不能邀請玩家 %s",
	ConvertRaid 			= "轉換隊伍為團隊"
})

-- BidBot
L = DBM:GetModLocalization("BidBot")

L:SetOptionLocalization({
	Enabled				= "開啟競拍助手 (!bid [item])",
	ShowinRaidWarn		= "用團隊警告顯示道具",
	PublicBids			= "發表公開競標到頻道",
	PayWhatYouBid		= "支付的競標價格 (否則第二次出價+1)",
	ChatChannel			= "使用下列頻道輸出",
	MinBid				= "最低出價",
	Duration			= "出價時間",
	OutputBids			= "輸出多少個最高出價者"
})

L:SetMiscLocalization({
	WarnMsg_ChanNotFound	= "未知頻道: %s",
	Whisper_Queue 			= "另一個拍賣正在進行。您的裝備已被列入到排隊中。",
	Whisper_Bid_OK 			= "您的出價，共%dDKP已被接受。",
	Whisper_Bid_DEL			= "你的出價已被移除!",
	Whisper_Bid_DEL_failed	= "你不能在開放競標模式刪除出價",
	Whisper_InUse 			= "<移除我>",
	--Message_StartRaidWarn	= "Bid now on %s - whisper to [%s]!",
	Message_StartBidding	= "現在競投 %s，請密[%s]出價! 最低出價: %d",
	Message_DoBidding		= "%s的剩餘時間: %d秒",
	Message_ItemGoesTo		= "%s 羸得 %s，使用 %d DKP!",
	Message_NoBidMade		= "沒有人競投 %s.",
	Message_Biddings		= "%d. %s 出價 %d DKP.",
	Message_BiddingsVisible	= "%d 玩家競投這個裝備.",
	Message_BidPubMessage	= "新出價: %s 出價 %d DKP",
	Disenchant				= "分解",
	PopUpAcceptDKP			= "對%s儲存出價. 分解請輸入0 DKP.",
	Local_NoRaid			= "你必需在一個團隊才能使用這個功能",
	Prefix					= "[BidBot]: ",
	TabCategory_History		= "裝備記錄",
	AreaHistory				= "裝備記錄",
	Local					= "只在本地顯示",
	Guild					= "使用公會頻道",
	Raid					= "使用團隊頻道",
	Party					= "使用隊伍頻道",
	Officer					= "使用幹部頻道"
})

-- DKP
L = DBM:GetModLocalization("DKP")

L:SetOptionLocalization({
	Enabled					= "啟用DKP系統追蹤團隊事件",
	Button_StartDKPTracking	= "開始DKP追蹤",
	Button_StopDKPTracking	= "停止DKP追蹤",
	Button_CreateEvent		= "創造一個特殊的事件",
	Button_ResetHistory		= "清除歷史記錄",
	Enable_StartEvent		= "在團隊開始時創造事件",
	Enable_TimeEvents		= "根據時間創造事件(例如:1小時1事件)",
	Enable_BossEvents		= "根據BOSS擊殺創造事件",
	Enable_SB_Users			= "計算就位的團隊成員",
	Enable_5ppl_tracking	= "5人小隊副本中開啟DKP追蹤",
	CustomPoint				= "給予的點數",
	CustomDescription		= "此次事件的敘述",
	StartPoints				= "團隊開始的點數",
	StartDescription		= "團隊開始的敘述",
	BossPoints				= "每一首領擊殺的點數",
	BossDescription			= "首領擊殺的敘述 (%s 是首領的名字)",
	TimePoints				= "每一時段的點數(例如:1小時10DKP)",
	TimeDescription			= "時段的敘述",
	TimeToCount				= "每X分鐘",
	--CustomFor				= "Award points to"
})

L:SetMiscLocalization({
	Local_NoRaidPresent			= "使用DKP追蹤前請先加入一個團隊",
	Local_EventCreated			= "你的事件已經成功的創造",
	Local_Debug_NoRaid			= "沒有玩家,事件沒有成功創造!請手動創造一個事件!",
	Local_TimeReached 			= "新增了一個時間性團隊事件",
	Local_StartRaid				= "開始一個新的團隊",
	Local_NoInformation			= "請註明點數以及該次事件的名稱",
	LocalError_AddItemNoRaid	= "沒有團隊運行以保存此裝備",
	Local_RaidSaved				= "成功關閉現在的團隊",
	CustomDefault				= "漂亮! 額外獎勵!",
	AllPlayers					= "所有玩家",
	TabCategory_History			= "團隊記錄",
	AreaHistory					= "事件記錄",
	History_Line				= "[%s][%s]: %s (%d)" -- [date][zone] Hogger (playercount)
})

-- StandByBot
L = DBM:GetModLocalization("StandByBot")

L:SetOptionLocalization({
	Enabled				= "開啟候補助手 (!sb)",
	SendWhispers		= "離開團隊時密語玩家",
	Button_ResetHistory	= "重置"
})

L:SetMiscLocalization({
	Local_NoRaid		= "在團隊中才能使用此功能",
	InRaidGroup			= "對不起, 你在候補前必須離開團隊.",
	LeftRaidGroup 		= "你已經離開了團隊. 如果你不想候補請密語我\"!sb\".",
	AddedSBUser			= "你現在在候補清單內. 請保持在線上直到我們需要你或者將你從候補清單中移除.",
	UserIsAllreadySB	= "對不起, 你已在候補清單內. 密語我\"!sb off\".",
	NoLongerStandby		= "你已經不在候補清單中了. 你候補了 %d 小時 %d 分鐘.",
	PostStandybyList	= "目前候補:",
	Local_AddedPlayer	= "[SB]: %s 候補中.",
	Local_RemovedPlayer	= "[SB]: %s 已不是候補.",
	Local_CantRemove	= "對不起, 不能移除玩家.",
	Local_CleanList		= "候補清單已清空 (%s 的請求)",
	Current_StandbyTime	= "%s 候補時間:",
	History_OnJoin		= "[%s]: %s 在候補",
	History_OnLeave		= "[%s]: %s 在 %s 分鐘後離開了候補清單",
	SB_History_Saved	= "候補清單儲存為 %s",
	SB_History_NotSaved	= "沒有玩家在候補 --> 沒有歷史記錄",
	SB_History_Line		= "[ID=%d] %s 的團隊有 %d 名團員",
	SB_Documentation	= [[這個候補助手可以讓團長管理目前不能參加活動的團員. 以下所有命令都可以用在公會頻道中.

!sb                   - 顯示候補玩家清單
!sb times             - 顯示已候補時間
!sb add <玩家名字>    - 增加一個玩家到候補清單中
!sb del <玩家名字>    - 將一名玩家從候補清單中移除
!sb save              - 保存目前清單
!sb reset             - 清空候補清單
!sb history [id]      - 顯示候補歷史

想要候補的玩家需要向安裝有本插件的玩家密語 '!sb'. 然後他會得到一些說明. 如果想離開清單可以直接密語 '!sb off'.]]
})
