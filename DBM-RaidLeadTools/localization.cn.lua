if GetLocale() ~= "zhCN" then
	return
end
local L

-- StickyIcons
L = DBM:GetModLocalization("StickyIcons")

L:SetOptionLocalization({
	--Enabled			= "Always set Raidicons back to as they where on combat start",
	--IconsUpdateTime	= "How frequent should it check for icon updates?"
})

-- WarnForLootmaster
L = DBM:GetModLocalization("WarnForLootmaster")

L:SetOptionLocalization({
	--Enabled	= "Show a warning on combat start if Masterloot is not enabled"
})

L:SetMiscLocalization({
	--WarningNoLootmaster	= "Lootmaster is currently disabled! - Please enable Lootmaster now!"
})

-- AutoInvite
L = DBM:GetModLocalization("AutoInvite")

L:SetOptionLocalization({
	Enabled				= "启用关键字",
	AllowGuildMates		= "允许公会成员的邀请",
	AllowFriends 		= "允许好友的邀请",
	AllowOthers 		= "允许所有人的邀请",
	PromoteEveryone		= "提升所有玩家为助理 (不推荐)",
	AOEbyGuildRank		= "邀请所有在此公会等级以上的会员",
	PromoteGuildRank	= "按公会等级提升",
	KeyWord 			= "密语关键字",
	PromoteByNameList	= "自动提升以下玩家为助理 (以空格隔开)",
	Button_AOE_Invite	= "开始集体邀请"
})

L:SetMiscLocalization({
	WarnMsg_NoRaid			= "请在使用集体邀请前创建团队",
	WarnMsg_NotLead			= "对不起, 只有团长和助理才能使用这个命令",
	WarnMsg_InviteIncoming	= "<DBM> 收到集体邀请! 请离开你当前队伍.",
	WhisperMsg_RaidIsFull 	= "对不起, 团队已满, 我无法邀请你.",
	WhisperMsg_NotLeader 	= "对不起, 我没有权限组你.",
	DontPromoteAnyRank		= "不自动提升所有公会等级",
	InviteFailed 			= "无法邀请玩家 %s",
	ConvertRaid 			= "转换为团队"
})

-- BidBot
L = DBM:GetModLocalization("BidBot")

L:SetOptionLocalization({
	Enabled				= "开启竞价助手 (!bid [item])",
	--ShowinRaidWarn		= "Show Item as Raid Warning",
	PublicBids			= "发布明拍出价到聊天频道",
	PayWhatYouBid		= "输入你出的价格, (否则为比第二位多1)",
	ChatChannel			= "输出频道",
	MinBid				= "最低出价",
	Duration			= "竞拍时间",
	OutputBids			= "通告最高出价者数量"
})

L:SetMiscLocalization({
	WarnMsg_ChanNotFound	= "没有找到频道: %s",
	Whisper_Queue 			= "另一个物品正在竞拍, 你的物品被自动加入到队列中.",
	Whisper_Bid_OK 			= "你的出价已经被接受: %d DKP.",
	--Whisper_Bid_DEL			= "Your bid has been removed!",
	--Whisper_Bid_DEL_failed	= "You can't delete bids in open bidding mode",
	Whisper_InUse 			= "<移除我>",
	--Message_StartRaidWarn	= "Bid now on %s - whisper to [%s]!",
	Message_StartBidding	= "对 %s 出价请密语 [%s]! 起拍: %d",
	Message_DoBidding		= "%s 竞拍剩余时间: %d 秒.",
	Message_ItemGoesTo		= "%2$s 赢得了 %1$s (%d DKP)!",
	Message_NoBidMade		= "没有人对 %s 出价.",
	Message_Biddings		= "%d. %s 出了 %d DKP.",
	Message_BiddingsVisible	= "%d 位玩家对此物品出价.",
	Message_BidPubMessage	= "新竞价: %s 出了 %d DKP",
	Disenchant				= "分解",
	PopUpAcceptDKP			= "保存 %s 的竞价. 分解请设置为 0 DKP.",
	Local_NoRaid			= "在团队中才能使用此功能",
	Prefix					= "[BidBot]: ",
	TabCategory_History		= "物品历史",
	AreaHistory				= "物品历史",
	Local					= "只在本地提示",
	Guild					= "工会频道",
	Raid					= "团队频道",
	Party					= "小队频道",
	Officer					= "工会官员频道"
})

-- DKP
L = DBM:GetModLocalization("DKP")

L:SetOptionLocalization({
	Enabled					= "开启DKP助手来追踪RAID记录",
	Button_StartDKPTracking	= "开启DKP追踪",
	Button_StopDKPTracking	= "关闭DKP追踪",
	Button_CreateEvent		= "创建特殊记录",
	Button_ResetHistory		= "清除历史记录",
	Enable_StartEvent		= "RAID开始时创建事件",
	Enable_TimeEvents		= "定时创建记录 (例如每小时创建一次记录)",
	Enable_BossEvents		= "BOSS击杀时创建记录",
	Enable_SB_Users			= "将待命列表中的玩家也保存到记录中",
	Enable_5ppl_tracking	= "5人小队副本中启用DKP追踪",
	CustomPoint				= "额外奖励",
	CustomDescription		= "说明",
	StartPoints				= "集合分",
	StartDescription		= "说明",
	BossPoints				= "击杀分",
	BossDescription			= "说明 (%s 表示BOSS名字)",
	TimePoints				= "时间分 (例如每小时10分)",
	TimeDescription			= "说明",
	TimeToCount				= "每隔 X 分钟",
	--CustomFor				= "Award points to"
})

L:SetMiscLocalization({
	Local_NoRaidPresent			= "请在使用DKP自动追踪前加入一个团队",
	Local_EventCreated			= "记录成功创建",
	Local_Debug_NoRaid			= "沒有玩家, 记录创建失败! 请手动创建!",
	Local_TimeReached 			= "一个新记录被创建",
	Local_StartRaid				= "开始一个新的RAID",
	Local_NoInformation			= "请指定分数和记录名字",
	LocalError_AddItemNoRaid	= "没有RIAD记录来添加这个物品",
	Local_RaidSaved				= "成功保存当前团队",
	CustomDefault				= "漂亮! 额外奖励!",
	AllPlayers					= "所有玩家",
	TabCategory_History			= "RAID历史",
	AreaHistory					= "RIAD历史",
	History_Line				= "[%s][%s]: %s (%d)" -- [date][zone] Hogger (playercount)
})

-- StandByBot
L = DBM:GetModLocalization("StandByBot")

L:SetOptionLocalization({
	Enabled				= "开启待命助手 (!sb)",
	SendWhispers		= "离开团队时密语玩家",
	Button_ResetHistory	= "显示客户端版本"
})

L:SetMiscLocalization({
	Local_NoRaid		= "你必须在团队中才能使用此功能",
	InRaidGroup			= "对不起, 你在待命前必须离开团队.",
	LeftRaidGroup 		= "你已经离开了团队. 如果你不想待命请密语我\"!sb\".",
	AddedSBUser			= "你现在在待命列表内. 请一直在线直到我们需要你或者将你从待命列表中移除.",
	UserIsAllreadySB	= "对不起, 你已在待命列表内. 密语我\"!sb off\".",
	NoLongerStandby		= "你已经不在待命列表中了. 你待命了 %d 小时 %d 分钟.",
	PostStandybyList	= "当前待命:",
	Local_AddedPlayer	= "[SB]: %s 在待命.",
	Local_RemovedPlayer	= "[SB]: %s 已不再待命.",
	Local_CantRemove	= "对不起, 不能移除玩家.",
	Local_CleanList		= "待命列表已清空 (%s 的请求)",
	Current_StandbyTime	= "%s 待命时间:",
	History_OnJoin		= "[%s]: %s 在待命",
	History_OnLeave		= "[%s]: %s 在 %s 分钟后离开了待命列表",
	SB_History_Saved	= "待命列表保存为 %s",
	SB_History_NotSaved	= "没有玩家在待命 --> 没有历史记录",
	SB_History_Line		= "[ID=%d] %s 的团队有 %d 名团员",
	SB_Documentation	= [[待命助手可以让RL管理当前不能参加活动的团员. 以下所有命令都可以用在工会频道中.

!sb                   - 显示待命玩家列表
!sb times             - 显示已待命时间
!sb add <玩家名字>    - 增加一个玩家到待命列表中
!sb del <玩家名字>    - 将一名玩家从待命列表中移除
!sb save              - 保存当前列表
!sb reset             - 清空待命列表
!sb history [id]      - 显示待命历史

想要待命的玩家需要向安装有本插件的玩家密语 '!sb'. 然后他会得到一些说明. 如果想离开列表可以直接密语 '!sb off'.]]
})
