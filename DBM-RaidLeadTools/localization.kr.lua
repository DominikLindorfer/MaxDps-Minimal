if GetLocale() ~= "koKR" then
	return
end
local L

-- StickyIcons
L = DBM:GetModLocalization("StickyIcons")

L:SetOptionLocalization({
	Enabled			= "항상 전술 목표 아이콘 설정을 전투 시작 직전에 설정했던 대로 복원하기",
	--IconsUpdateTime	= "How frequent should it check for icon updates?"
})

-- WarnForLootmaster
L = DBM:GetModLocalization("WarnForLootmaster")

L:SetOptionLocalization({
	Enabled	= "전투 시작시 전리품 획득 설정이 담당자 획득이 아닌경우 경고 보기"
})

L:SetMiscLocalization({
	WarningNoLootmaster	= "담당자 획득 설정이 꺼져있습니다! - 전리품 획득 설정을을 담당자 획득으로 바꾸세요!"
})

-- AutoInvite
L = DBM:GetModLocalization("AutoInvite")

L:SetOptionLocalization({
	Enabled				= "특정 단어로 된 귓속말을 받을 때 자동 초대",
	AllowGuildMates		= "길드원을 자동 초대",
	AllowFriends 		= "친구를 자동 초대",
	AllowOthers 		= "모든 사람을 자동 초대",
	PromoteEveryone		= "공격대 초대시 자동 승급 (권장하지 않음)",
	AOEbyGuildRank		= "지정된 등급 이하의 모든 길드원 초대",
	PromoteGuildRank	= "길드 등급에 따른 자동 승급",
	KeyWord 			= "자동 초대를 위한 귓속말 단어",
	PromoteByNameList	= "다음 목록의 공격대원은 자동으로 승급 (띄어쓰기로 구분)",
	Button_AOE_Invite	= "전체 초대"
})

L:SetMiscLocalization({
	WarnMsg_NoRaid			= "전체 초대를 하기전에 먼저 공격대를 구성해 주세요.",
	WarnMsg_NotLead			= "공격대 초대 권한이 없습니다.",
	WarnMsg_InviteIncoming	= "<DBM> 전체 초대 중입니다! 현재 파티를 탈퇴해주세요.",
	WhisperMsg_RaidIsFull 	= "죄송합니다. 공격대 인원이 꽉차서 당신을 초대할 수 없습니다.",
	WhisperMsg_NotLeader 	= "죄송합니다. 저에게 초대 권한이 없어서 당신을 초대할 수 없습니다.",
	DontPromoteAnyRank		= "사용하지 않음",
	InviteFailed 			= "%s 님을 초대 할 수 없습니다.",
	ConvertRaid 			= "공격대 구성"
})

-- BidBot
L = DBM:GetModLocalization("BidBot")

L:SetOptionLocalization({
	Enabled				= "Bidbot 사용 (!bid [item])",
	ShowinRaidWarn		= "공격대 경보로 아이템 보이기",
	PublicBids			= "공개 경매 진행하기 (입찰에 채널 사용)",
	PayWhatYouBid		= "입찰가 대로 지불하기, (설정하지 않으면 2등 입찰가 + 1)",
	ChatChannel			= "경매 진행에 사용할 채널",
	MinBid				= "최소 입찰가",
	Duration			= "경매 진행 시간",
	OutputBids			= "경매 최고 입찰자 출력"
})

L:SetMiscLocalization({
	WarnMsg_ChanNotFound	= "알 수 없는 채널: %s",
	Whisper_Queue 			= "다른 경매가 진행 중입니다. 당신의 요청은 예약 되었습니다.",
	Whisper_Bid_OK 			= "당신은 %d DKP로 입찰하였습니다.",
	Whisper_Bid_DEL			= "당신이 입찰이 취소되었습니다!",
	Whisper_Bid_DEL_failed	= "공개 경매에서는 입찰을 취소할 수 없습니다.",
	Whisper_InUse 			= "<취소>",
	Message_StartRaidWarn	= "%s 경매를 진행합니다 - [%s] 에게 귓말하세요!",
	Message_StartBidding	= "지금부터 %s 경매를 진행합니다. [%s] 에게 귓말하세요! 최저 DKP: %d",
	Message_DoBidding		= "%s 경매 종료까지 남은 시간: %d 초",
	Message_ItemGoesTo		= "%1$s 경매에서 %2$s 님이 %3$d DKP 로 낙찰되었습니다!",
	Message_NoBidMade		= "%s 입찰 없음.",
	Message_Biddings		= "%d. %s 입찰가 : %d DKP",
	Message_BiddingsVisible	= "%d 명이 현재 아이템에 입찰하였습니다.",
	Message_BidPubMessage	= "새로운 경매: %s 입찰가 : %d DKP",
	Disenchant				= "마력추출",
	PopUpAcceptDKP			= "%s 경매를 저장합니다. 마력추출인 경우 0 DKP를 입력해 주세요.",
	Local_NoRaid			= "이 기능을 사용하기 위해서는 공격대에 참여 해야 합니다.",
	Prefix					= "[BidBot]: ",
	TabCategory_History		= "아이템 기록",
	AreaHistory				= "아이템 기록",
	Local					= "나 자신만 보기",
	Guild					= "길드",
	Raid					= "공격대",
	Party					= "파티",
	Officer					= "길드 관리자"
})

-- DKP
L = DBM:GetModLocalization("DKP")

L:SetOptionLocalization({
	Enabled					= "DKP System 사용하기",
	Button_StartDKPTracking	= "DKP 추적 시작",
	Button_StopDKPTracking	= "DKP 추적 중지",
	Button_CreateEvent		= "특별 이벤트 만들기",
	Button_ResetHistory		= "기록 초기화",
	Enable_StartEvent		= "레이드 시작 이벤트 만들기",
	Enable_TimeEvents		= "시간 기반 이벤트 만들기(예 : 시간당 1 이벤트)",
	Enable_BossEvents		= "보스 킬 이벤트 만들기",
	Enable_SB_Users			= "대기 중인 공격대원도 공격대 멤버로 간주하기",
	Enable_5ppl_tracking	= "5인 던전에서 DKP 추적 허용",
	CustomPoint				= "이벤트 포인트",
	CustomDescription		= "현재 이벤트에 대한 설명",
	StartPoints				= "레이드 시작 포인트",
	StartDescription		= "레이드 시작 이벤트 설명",
	BossPoints				= "보스 킬 포인트",
	BossDescription			= "보스 킬 이벤트 설명 (%s 는 보스의 이름)",
	TimePoints				= "시간 포인트(예 : 시간당 10 DKP)",
	TimeDescription			= "시간 이벤트 설명",
	TimeToCount				= "X 분 마다",
	--CustomFor				= "Award points to"
})

L:SetMiscLocalization({
	Local_NoRaidPresent			= "DKP 추적기를 사용하기 전에 공격대에 먼저 참여해주세요.",
	Local_EventCreated			= "이벤트가 성공적으로 만들어졌습니다.",
	Local_Debug_NoRaid			= "플레이어가 없으므로 이벤트를 만들수 없습니다! 이벤트를 수동으로 만들어주세요.",
	Local_TimeReached 			= "새로운 시간 기반 이벤트를 만들었습니다.",
	Local_StartRaid				= "새로운 레이드가 시작됐습니다.",
	Local_NoInformation			= "이벤트의 이름과 포인트를 지정해주세요.",
	LocalError_AddItemNoRaid	= "레이드가 진행중이지 않으므로, 이 아이템을 저장할 수가 없습니다.",
	Local_RaidSaved				= "현재 레이드를 정상적으로 종료하였습니다.",
	CustomDefault				= "업적 달성, 빠른 진행 기념, 보너스 포인트 등등..",
	AllPlayers					= "모든 플레이어",
	TabCategory_History			= "레이드 기록",
	AreaHistory					= "이벤트 기록",
	History_Line				= "[%s][%s]: %s (%d)" -- [date][zone] Hogger (playercount)
})

-- StandByBot
L = DBM:GetModLocalization("StandByBot")

L:SetOptionLocalization({
	Enabled				= "Standby-bot 사용 (!sb)",
	SendWhispers		= "공격대를 떠난 공격대원에게 정보 귓속말 보내기",
	Button_ResetHistory	=  "초기화"
})

L:SetMiscLocalization({
	Local_NoRaid		= "이 기능을 사용하기 위해서는 공격대에 참여 해야 합니다.",
	InRaidGroup			= "대기하기 전에 먼저 공격대를 떠나야 합니다.",
	LeftRaidGroup 		= "당신은 공격대를 떠났습니다. 포인트를 받고 싶으시다면 \"!sb\" 라고 저에게 귓속말 하는 것을 잊지 마세요!",
	AddedSBUser			= "대기자 명단에 들어갔습니다. 대기자 명단에서 제외되거나 레이드에 다시 합류 할때까지 기다려 주세요.",
	UserIsAllreadySB	= "이미 대기 중입니다. 대기자 명단에서 삭제를 원하시면 \"!sb off\" 라고 다시 귓속말 해주세요.",
	NoLongerStandby		= "당신은 이제 대기자가 아닙니다. %d시간 %d분 동안 대기하셨습니다. 고생하셨습니다.",
	PostStandybyList	= "현재 대기자 명단:",
	Local_AddedPlayer	= "[SB]: %s 님이 대기자 명단에 추가되었습니다.",
	Local_RemovedPlayer	= "[SB]: %s 님은 이제 대기자가 아닙니다.",
	Local_CantRemove	= "해당 플레이어를 삭제할 수 없습니다.",
	Local_CleanList		= "대기자 명단이 삭제되었습니다 (%s 의 요청)",
	Current_StandbyTime	= "%s 부터 대기한 시간:",
	History_OnJoin		= "[%s]: %s 대기 시작",
	History_OnLeave		= "[%s]: %s 대기 종료 (%s 분 경과)",
	SB_History_Saved	= "대기자 목록이 ID %s 로 저장되었습니다.",
	SB_History_NotSaved	= "대기자 명단이 없습니다 --> 대기자 목록 저장 실패",
	SB_History_Line		= "[ID=%d] %s 레이드 : %d 명 참여",
	SB_Documentation	= [[Standby 모듈은 공격대장에게 공격대가 가득 찼거나 유사한 사유로 인해 현재 레이드를 할 수 없는 플레이어를 관리하는데 도움을 줍니다. 아래 나열된 모든 명령어는 길드 대화로 사용 가능합니다.

!sb               - 대기자 명단 출력
!sb times         - 현재 대기 시간 보기
!sb add <nick>    - <nick>을 대기자에 추가
!sb del <nick>    - <nick>을 대기자에서 삭제
!sb save          - 현재 상태 저장
!sb reset         - 대기자 목록 삭제
!sb history [id]  - 대기자 기록 보기

대기자는 이 모드를 실행중인 플레이어에게 반드시 '!sb' 라고 귓속말을 보내야 합니다. 확인 메세지가 대기자에게 보내질 것입니다. 대기를 종료하려면 '!sb off'라고 귓속말을 하면 됩니다.]]
})
