local mod	= DBM:NewMod("BidBot", "DBM-RaidLeadTools")
local L		= mod:GetLocalizedStrings()

DBM_BidBot_ItemHistory = {}

mod:SetRevision("20200525192136")
mod:SetZone(DBM_DISABLE_ZONE_DETECTION)

mod:AddBoolOption("ShowinRaidWarn", false, "General")
mod:AddBoolOption("PublicBids", false, "General")
mod:AddBoolOption("PayWhatYouBid", false, "General")
do
	local select, insert = select, table.insert
	local GetChannelList = GetChannelList

	local channels = {
		{
			text	= L.Local,
			value	= "LOCAL"
		},
		{
			text	= L.Officer,
			value	= "OFFICER"
		},
		{
			text	= L.Guild,
			value	= "GUILD"
		},
		{
			text	= L.Raid,
			value	= "RAID"
		},
		{
			text	= L.Party,
			value	= "PARTY"
		}
	}
	for i = 1, select("#", GetChannelList()), 3 do
		local chanid, channame = select(i, GetChannelList())
		if chanid > 3 then
			insert(channels, {
				text	= channame,
				value	= channame
			})
		end
	end
	mod:AddDropdownOption("ChatChannel", channels, "GUILD")
end
mod:AddSliderOption("MinBid", 1, 100, 5, 10, "General")
mod:AddSliderOption("Duration", 1, 300, 5, 30, "General")
mod:AddSliderOption("OutputBids", 1, 10, 1, 3, "General")

do
	local pairs, date = pairs, date
	local GameFontHighlightSmall = GameFontHighlightSmall

	DBM:RegisterOnGuiLoadCallback(function()
		local historypanel = DBM_GUI:CreateNewPanel(L.TabCategory_History, "option")
		local area = historypanel:CreateArea(L.AreaHistory, nil, 360, true)
		local button = area:CreateButton(L.ResetHistory, 100, 16)
		button:SetPoint("BOTTOMRIGHT", area.frame, "BOTTOMRIGHT", -10, 10)
		button:SetNormalFontObject(GameFontNormalSmall)
		button:SetHighlightFontObject(GameFontNormalSmall)
		button:SetScript("OnClick", function()
			mod.Options.DBM_BidBot_ItemHistory = {}
		end)
		local history = area:CreateScrollingMessageFrame(area.frame:GetWidth() - 20, 220, nil, nil, GameFontHighlightSmall)
		history:SetScript("OnShow", function(self)
			local historyz = DBM_BidBot_ItemHistory
			if #historyz > 0 then
				self:SetMaxLines((#historyz * 4) + 1)
				for _,itembid in pairs(historyz) do
					if itembid and itembid.item and itembid.points then
						if #itembid.bids > 0 then
							self:AddMessage("[" .. date("%m/%d/%y %H:%M:%S", itembid.time) .. "]: " .. itembid.item .. " " .. itembid.points .. " DKP ")
							for i = 1, 3, 1 do
								if itembid.bids[i] then
									self:AddMessage("               -> " .. i .. ". " .. itembid.bids[i].name .. "(" .. itembid.bids[i].points .. ")")
								end
							end
							self:AddMessage(" ")
						else
							self:AddMessage("[" .. date("%m/%d/%y %H:%M:%S", itembid.time) .. "]: " .. itembid.item .. " " .. L.Disenchant)
						end
					end
				end
			end
		end)
	end)
end

mod:RegisterEvents(
	"CHAT_MSG_GUILD",
	"CHAT_MSG_RAID",
	"CHAT_MSG_SAY",
	"CHAT_MSG_PARTY",
	"CHAT_MSG_OFFICER",
	"CHAT_MSG_RAID_LEADER",
	"CHAT_MSG_WHISPER"
)

local inProgress, biddings = false, {}

local sendchatmsg
do
	local SendChatMessage, GetChannelName = SendChatMessage, GetChannelName

	function sendchatmsg(msg)
		local chatchannel = mod.Options.ChatChannel
		if chatchannel == "LOCAL" then
			DBM:AddMsg(msg)
		elseif chatchannel == "GUILD" or chatchannel == "RAID" or chatchannel == "PARTY" or chatchannel == "OFFICER" then
			SendChatMessage(msg, chatchannel)
		else
			local chanid = GetChannelName(chatchannel)
			if chanid > 4 then
				SendChatMessage(msg, "CHANNEL", nil, chanid)
			else
				DBM:AddMsg(L.Error_ChanNotFound:format(msg))
			end
		end
	end
end

do
	local ChatFrame_AddMessageEventFilter = ChatFrame_AddMessageEventFilter

	function mod:OnInitialize()
		DBM_BidBot_ItemHistory = DBM_BidBot_ItemHistory or {}
		ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", function(_, _, msg, ...)
			return inProgress and msg:find("^%d+$"), ...
		end)
	end
end

do
	local tonumber, pairs, insert = tonumber, pairs, table.insert
	local SendChatMessage = SendChatMessage

	local function AddBid(bidder, bid)
		for k, v in pairs(biddings) do
			if v.name == bidder then
				biddings[k] = nil
			end
		end
		insert(biddings, {
			name	= bidder,
			bid		= bid
		})
		if mod.Options.PublicBids then
			sendchatmsg(L.Prefix .. L.Message_BidPubMessage:format(bidder, bid))
		else
			SendChatMessage("<DBM> " .. L.Prefix .. L.Whisper_Bid_OK:format(bid), "WHISPER", nil, bidder)
		end
	end

	local function DelBid(bidder)
		if mod.Options.PublicBids then
			sendchatmsg(L.Prefix .. L.Whisper_Bid_DEL_failed)
			return
		end
		for k, v in pairs(biddings) do
			if v.name == bidder then
				biddings[k] = nil
			end
		end
		SendChatMessage("<DBM> " .. L.Prefix .. L.Whisper_Bid_DEL, "WHISPER", nil, bidder)
	end

	function mod:CHAT_MSG_WHISPER(arg1, arg2)
		if inProgress then
			if arg1:find("^%d+$") then
				local biddkp = tonumber(arg1)
				if biddkp > 0 and biddkp < 50000 then
					AddBid(arg2, biddkp)
				elseif biddkp == 0 then
					DelBid(arg2)
				end
			end
		end
	end
end

local DoInjectToDKPSystem
do
	local tonumber = tonumber
	local CreateFrame, StaticPopup_Show, UIParent, ACCEPT, CANCEL = CreateFrame, StaticPopup_Show, UIParent, ACCEPT, CANCEL

	local hiddenedit = CreateFrame('EditBox', "DBM_DKP_PopupExtension", UIParent)
	hiddenedit:SetWidth(40)
	hiddenedit:SetHeight(20)
	hiddenedit:ClearFocus()
	hiddenedit:SetAutoFocus(false)
	hiddenedit:SetScript("OnEscapePressed", function(self)
		self:ClearFocus()
	end)
	hiddenedit:SetFontObject('GameFontHighlightSmall')
	hiddenedit:SetMaxLetters(5)
	hiddenedit:Hide()
	hiddenedit.left = hiddenedit:CreateTexture(nil, "BACKGROUND")
	hiddenedit.left:SetPoint("LEFT", hiddenedit, "LEFT", -10, 0)
	hiddenedit.left:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorder-Left")
	hiddenedit.left:SetWidth(40)
	hiddenedit.left:SetHorizTile(true)
	hiddenedit.left:SetTexCoord(0, .15, 0, 1)
	hiddenedit.right = hiddenedit:CreateTexture(nil, "BACKGROUND")
	hiddenedit.right:SetPoint("RIGHT", hiddenedit, "RIGHT", 5, 0)
	hiddenedit.right:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorder-Right")
	hiddenedit.right:SetWidth(20)
	hiddenedit.right:SetHorizTile(true)
	hiddenedit.right:SetVertTile(true)
	hiddenedit.right:SetTexCoord(0.92, 1, 0, 1)
	StaticPopupDialogs["DBM_DKP_ACCEPT"] = {
		text = "bitte Item %s bestätigen", -- TODO: Locale this
		button1 = ACCEPT,
		button2 = CANCEL,
		hasEditBox = 1,
		maxLetters = 32,
		timeout = 0,
		exclusive = 0,
		hideOnEscape = 0,
		OnShow = function(self)
			hiddenedit:ClearAllPoints()
			hiddenedit:SetParent(self)
			hiddenedit:SetPoint("TOPRIGHT", self.editBox, "TOPLEFT", -20, -6)
			hiddenedit:SetText(hiddenedit.itemtable.points)
			hiddenedit:Show()
			self.editBox:SetText(hiddenedit.itemtable.player)
		end,
		OnAccept = function(self)
			hiddenedit.itemtable.points = tonumber(hiddenedit:GetNumber())
			hiddenedit.itemtable.player = self.editBox:GetText()
			if hiddenedit.itemtable.points and hiddenedit.itemtable.points > 0 then
				DBM_AddItemToDKP(hiddenedit.itemtable)
			end
			hiddenedit.itemtable = nil
		end,
		OnHide = function(self)
			hiddenedit:SetParent(UIParent)
			hiddenedit:Hide()
			hiddenedit:SetText("")
			self.editBox:SetText("")
		end
	}

	function DoInjectToDKPSystem(itemtable)
		hiddenedit.itemtable = {
			item	= itemtable.item,
			points	= itemtable.points,
			time	= itemtable.time,
			player	= itemtable.bids[1].name
		}
		StaticPopup_Show("DBM_DKP_ACCEPT", itemtable.item)
	end
end

do
	local time, insert = time, table.insert
	local GetItemInfo = GetItemInfo

	function mod:OnSync(itemid, dkp, savedbids)
		local itembid = {
			time	= time(),
			item	= select(2, GetItemInfo(itemid)),
			points	= dkp,
			bids	= {}
		}
		for bidder, biddkp in savedbids:gmatch("(%a+)%((%d+)%)") do
			insert(itembid.bids, {
				points	= biddkp,
				name	= bidder
			})
		end
		insert(DBM_BidBot_ItemHistory, itembid)
		if itembid.bids[1] and itembid.bids[1].name then
			DoInjectToDKPSystem(itembid)
		end
	end
end

do
	local insert, remove, wipe, sort, floor, time, pairs, select, strsplit = table.insert, table.remove, table.wipe, table.sort, math.floor, time, pairs, select, strsplit
	local IsInRaid, UnitName, SendChatMessage = IsInRaid, UnitName, SendChatMessage
	local currentItem, queue, myname = nil, {}, UnitName("player")
	local AuctionEnd, StartBidding

	function AuctionEnd()
		inProgress = false
		local itembid = {
			time	= time(),
			item	= currentItem,
			points	= 0,
			bids	= {}
		}
		local tmp = {}
		for _, v in pairs(biddings) do
			insert(tmp, v)
		end
		biddings = tmp
		if biddings[1] and biddings[2] then
			sort(biddings, function(a, b)
				return a.bid > b.bid
			end)
			if mod.Options.PayWhatYouBid then
				itembid.points = biddings[1].bid
			else
				if biddings[1]["Bid"] == biddings[2].bid then
					itembid.points = biddings[1].bid
				else
					itembid.points = biddings[2].bid + 1
				end
			end
			sendchatmsg(L.Prefix .. L.Message_ItemGoesTo:format(itembid.item, biddings[1].name, itembid.points))
		elseif biddings[1] then
			if mod.Options.PayWhatYouBid then
				itembid.points = biddings[1].bid
			else
				itembid.points = mod.Options.MinBid
			end
			sendchatmsg(L.Prefix .. L.Message_ItemGoesTo:format(itembid.item, biddings[1].name, itembid.points))
		else
			sendchatmsg(L.Prefix .. L.Message_NoBidMade:format(itembid.item))
		end

		local counter, max, msg = 0, false, ""
		for posi, werte in pairs(biddings) do
			counter = counter + 1
			insert(itembid.bids, {
				["points"]	= werte.bid,
				["name"]	= werte.name
			})
			msg = msg .. werte.name .. "(" .. werte.bid .. ")"
			if posi <= mod.Options.OutputBids then
				sendchatmsg(L.Prefix .. L.Message_Biddings:format(posi, werte.name, werte.bid))
			elseif not max then
				max = true
			end
		end
		insert(DBM_BidBot_ItemHistory, itembid)
		if counter > 0 then
			DoInjectToDKPSystem(itembid)
		end
		mod.SendSync(select(2, strsplit(":", itembid.item)), itembid.points, "(" .. msg .. ")")
		if max then
			sendchatmsg(L.Prefix .. L.Message_BiddingsVisible:format(counter))
		end
		currentItem = ""
		wipe(biddings)
		if #queue then
			sendchatmsg("--- --- --- --- ---")
			DBM:Schedule(1.5, StartBidding)
		end
	end

	function StartBidding()
		if inProgress then
			DBM:AddMsg(L.Prefix .. L.Whisper_InUse:format(currentItem))
		else
			local itemLink
			if queue[1] then
				itemLink = remove(queue)
			end
			if not itemLink then
				return
			end
			inProgress = true
			currentItem = itemLink
			for i = select("#", biddings), 1, -1 do
				biddings[i] = nil
			end
			if mod.Options.ShowinRaidWarn then
				SendChatMessage(L.Prefix .. L.Message_StartRaidWarn:format(itemLink, myname), "RAID_WARNING")
			end
			local duration = mod.Options.Duration
			sendchatmsg(L.Prefix .. L.Message_StartBidding:format(itemLink, myname, mod.Options.MinBid))
			sendchatmsg(L.Prefix .. L.Message_DoBidding:format(itemLink, duration))
			DBM:Schedule((duration / 6) * 5, function()
				sendchatmsg(L.Prefix .. L.Message_DoBidding:format(itemLink, floor(duration / 6)))
			end)
			DBM:Schedule(duration / 2, function()
				sendchatmsg(L.Prefix .. L.Message_DoBidding:format(itemLink, floor(duration / 2)))
			end)
			DBM:Schedule(duration, AuctionEnd)
		end
	end

	local function AddItem(itemLink)
		local newID = select(4, itemLink:find("|c(%x+)|Hitem:(.-)|h%[(.-)%]|h|r"))
		for _, v in pairs(queue) do
			if newID == select(4, v:find("|c(%x+)|Hitem:(.-)|h%[(.-)%]|h|r")) then
				return
			end
		end
		insert(queue, itemLink)
	end

	local function OnMsgRecived(_, msg, name)
		if IsInRaid() and msg ~= nil and msg:find("^![bB][iI][dD] ") then
			if name ~= myname and not DBM:GetRaidUnitId(name) then
				return false
			end
			local itemLink = msg:gsub("^![bB][iI][dD] ", "")
			if itemLink:find("|c(%x+)|Hitem:(.-)|h%[(.-)%]|h|r") then
				for link in itemLink:gmatch("(|c(%x+)|Hitem:(.-)|h%[(.-)%]|h|r)") do
					AddItem(link)
				end
				if inProgress then
					SendChatMessage("<DBM>" .. L.Prefix .. L.Whisper_Queue, "WHISPER", nil, name)
				else
					DBM:Schedule(1.5, StartBidding)
				end
			end
		end
	end
	mod.CHAT_MSG_GUILD			= OnMsgRecived
	mod.CHAT_MSG_RAID			= OnMsgRecived
	mod.CHAT_MSG_SAY			= OnMsgRecived
	mod.CHAT_MSG_PARTY			= OnMsgRecived
	mod.CHAT_MSG_OFFICER		= OnMsgRecived
	mod.CHAT_MSG_RAID_LEADER	= OnMsgRecived
end
