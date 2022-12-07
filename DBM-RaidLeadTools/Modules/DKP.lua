local mod	= DBM:NewMod("DKP", "DBM-RaidLeadTools")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20200525192136")
mod:SetZone(DBM_DISABLE_ZONE_DETECTION)

local GetRaidList
do
	local insert = table.insert
	local GetNumGroupMembers, IsInRaid, UnitName, GetNumSubgroupMembers = GetNumGroupMembers, IsInRaid, UnitName, GetNumSubgroupMembers

	function GetRaidList()
		if GetNumGroupMembers() == 0 and not IsInRaid() then
			return false
		end
		local raidusers = {}
		for i = 1, GetNumGroupMembers(), 1 do
			if UnitName("raid" .. i) then
				insert(raidusers, (UnitName("raid" .. i)))
			end
		end
		if mod.Options.Enable_5ppl_tracking then
			insert(raidusers, (UnitName("player")) )
			for i = 1, GetNumSubgroupMembers(), 1 do
				if UnitName("party" .. i) then
					insert(raidusers, (UnitName("party" .. i)))
				end
			end
		end
		if mod.Options.Enable_SB_Users then
			for k, _ in pairs(mod:GetModByName("StandByBot").Options.sbUsers) do
				insert(raidusers, k)
			end
		end
		return raidusers
	end
end

local CreateExportString
do
	local type, date, pairs, ipairs, select, strsplit = type, date, pairs, ipairs, select, strsplit
	local GetItemInfo, StaticPopup_Show, ACCEPT, CANCEL = GetItemInfo, StaticPopup_Show, ACCEPT, CANCEL

	local text, raid, event

	StaticPopupDialogs["DBM_EXPORT_DKP_STRING"] = {
		text = "DKP String - %s",
		button1 = ACCEPT,
		button2 = CANCEL,
		hasEditBox = 1,
		OnShow = function(self)
			self.editBox:SetMaxLetters(text:len() + 10)
			self.editBox:SetText(text)
			self.editBox:SetFocus()
			self.editBox:HighlightText()
		end,
		timeout = 0,
		exclusive = 0,
		hideOnEscape = 1
	}

	function CreateExportString(raidID, eventID)
		if not raidID or type(raidID) ~= "number" then
			return "raid_id failed", 0, 0
		end
		if not eventID or type(eventID) ~= "number" then
			return "event_id failed", 0, 0
		end
		raid = mod.Options.history[raidID]
		event = raid.events[eventID]
		if not raid or not event then
			return "failed to find event"
		end
		local players, raidStart = "", date("%m/%d/%y %H:%M:%S", event.timestamp)
		text = "<RaidInfo><key>" .. raidStart .. "</key><start>" .. raidStart .. "</start><end>" .. raidStart .. "</end><zone>" .. (event.zone or "") .. "</zone><note>" .. (event.points or "") .. "</note><PlayerInfos>"
		for i, name in ipairs(event.members) do
			text = text .. "<key" .. i .. "><name>" .. name .. "</name></key" .. i .. ">"
			players = players .. "<key" .. i .. "><player>" .. name .. "</player><time>" .. raidStart .. "</time></key" .. i .. ">"
		end
		text = text.. "</PlayerInfos>"
		text = text.. "<BossKills><key1><name>" .. event.description .. "</name><time>" .. raidStart .. "</time><attendees/></key1></BossKills>"
		text = text.. "<note><![CDATA[" .. (event.zone or "") .. " - " .. (event.description or "") .. "]]></note>"
		text = text.. "<Join>" .. players .. "</Join><Leave>" .. players .. "</Leave>"
		text = text.. "<Loot>"
		for k, item in pairs(event.items or {}) do
			local itemName = GetItemInfo(item.item)
			local itemID = select(2, strsplit(":", item.item))
			local color = item.item:match("^|(%x+)|"):sub(2)
			text = text.. "<key" .. k .. "><ItemName>" .. (itemName or "?") .. "</ItemName><ItemID>" .. itemID .. "</ItemID>"
			text = text.. "<Icon></Icon><Class></Class><SubClass></SubClass><Color>" .. color .. "</Color><Count>1</Count>"
			text = text.. "<Player>" .. item.player .. "</Player><Costs>" .. item.points .. "</Costs><Time>" .. raidStart .. "</Time>"
			text = text.. "<Zone></Zone><Boss>" .. event.description .. "</Boss>"
			text = text.. "<Note><![CDATA[ - Zone: " .. (event.zone or "unknown") .. " - Boss: " .. (event.description or "unknown") .. " - " .. (item.points or 0) .. " DKP]]></Note>"
			text = text.. "</key" .. k .. ">"
		end
		text = text.."</Loot></RaidInfo>"
		StaticPopup_Show("DBM_EXPORT_DKP_STRING", "raid")
	end
end

local RaidEnd, RaidStart, CreateEvent

mod.Options.workingIn = mod.Options.workingIn or 0
do
	local GetNumGroupMembers = GetNumGroupMembers

	mod:AddButton("Button_" .. (mod.Options.workingIn == 0 and "Start" or "End") .. "DKPTracking", function(self)
		if mod.Options.workingIn > 0 then
			self:SetText(L.Button_StopDKPTracking)
			RaidEnd()
			mod.Options.workingIn = 0
		else
			self:SetText(L.Button_StartDKPTracking)
			if GetNumGroupMembers() == 0 then
				DBM:AddMsg(L.Local_NoRaidPresent)
			else
				RaidStart()
			end
		end
	end, "General")
end
mod:AddEditboxOption("CustomPoint", "", "General")
mod:AddEditboxOption("CustomDescription", L.CustomDefault, "General")
do
	local insert, pairs = table.insert, pairs
	local GetNumGroupMembers, IsInRaid = GetNumGroupMembers, IsInRaid

	local pltable = {
		{
			text	= L.AllPlayers,
			value	= "RAID"
		}
	}
	if GetNumGroupMembers() > 0 and IsInRaid() then
		for _, v in pairs(GetRaidList()) do
			insert(pltable, {
				text	= v,
				value	= v
			})
		end
	end
	mod:AddDropdownOption("CustomFor", pltable, "RAID", "General")
	-- TODO: OnShow
	--[[
	if GetNumGroupMembers() > 0 and IsInRaid() then
		wipe(pltable)
		insert(pltable, {
			text	= L.AllPlayers,
			value	= "RAID"
		})
		for _, v in pairs(GetRaidList()) do
			insert(pltable, {
				text	= v,
				value	= v
			})
		end
		self.values = pltable
	end
	]]--
end
do
	local time = time
	local GetRealZoneText = GetRealZoneText

	mod:AddButton("Button_CreateEvent", function()
		if mod.Options.CustomPoint <= 0 or mod.Options.CustomDescription == "" then
			DBM:AddMsg(L.Local_NoInformation)
		else
			local event = {
				event_type	= "custom",
				zone		= GetRealZoneText(),
				description	= mod.Options.CustomDescription,
				points		= mod.Options.CustomPoint,
				timestamp	= time()
			}
			if mod.Options.CustomFor == "RAID" then
				event.members = GetRaidList()
			else
				event.members = mod.Options.CustomFor
			end
			CreateEvent(event)
			DBM:AddMsg(L.Local_EventCreated)
			mod.Options.CustomPoint = 0
			mod.Options.CustomDescription = 0
		end
	end, "General")
end
mod:AddBoolOption("Enable_5ppl_tracking", false, "General")
--mod:AddBoolOption("Enable_SB_Users", true, "General")
mod:AddBoolOption("Enable_StartEvent", true, "General")
mod:AddSliderOption("StartPoints", 0, 100, 5, 10, "General")
mod:AddEditboxOption("StartDescription", "Raid Start", "General")
mod:AddBoolOption("Enable_BossEvents", true, "General")
mod:AddSliderOption("BossPoints", 0, 100, 5, 10, "General")
mod:AddEditboxOption("BossDescription", "%s", "General")
mod:AddBoolOption("Enable_TimeEvents", false, "General")
mod:AddSliderOption("TimePoints", 0, 100, 5, 10, "General")
mod:AddSliderOption("TimeToCount", 1, 300, 5, 60, "General")
mod:AddEditboxOption("TimeDescription", "Raid Attendance", "General")

do
	local type, tonumber, pairs, strsplit, date = type, tonumber, pairs, strsplit, date
	local GameFontNormalSmall = GameFontNormalSmall

	DBM:RegisterOnGuiLoadCallback(function()
		local historypanel = DBM_GUI:CreateNewPanel(L.TabCategory_History, "option")
		local area = historypanel:CreateArea(L.AreaHistory, nil, 360, true)
		local button = area:CreateButton(L.ResetHistory, 100, 16)
		button:SetPoint("BOTTOMRIGHT", area.frame, "BOTTOMRIGHT", -10, 10)
		button:SetNormalFontObject(GameFontNormalSmall)
		button:SetHighlightFontObject(GameFontNormalSmall)
		button:SetScript("OnClick", function()
			mod.Options.items = {}
			mod.Options.history = {}
		end)
		local history = area:CreateScrollingMessageFrame(area.frame:GetWidth() - 20, 220, nil, nil, GameFontHighlightSmall)
		history:ClearAllPoints()
		history:SetPoint("TOPLEFT", area.frame, "TOPLEFT", 5, -5)
		history:SetPoint("BOTTOMRIGHT", area.frame, "BOTTOMRIGHT", 5, 5)
		history:SetScript("OnShow", function(self)
			local historyz = mod.Options.history or {}
			if #historyz > 0 then
				local lastzone = ""
				self:SetMaxLines(100)
				for i = 1, #historyz, 1 do
					local raid = historyz[i]
					if #raid.events > 0 then
						for k, event in pairs(raid.events) do
							if event.zone ~= lastzone then
								self:AddMessage(" ")
							end
							if type(event.members) ~= "table" then
								event.members = {}
							end
							self:AddMessage("|HDBM:showdkp:"..i..":"..k.."|h|cff3588ff[show]|r|h" .. L.History_Line:format(date("%m/%d/%y %H:%M:%S", event.timestamp), event.zone, event.description, #event.members or 0))
							lastzone = event.zone
						end
					end
				end
			else
				self:SetMaxLines(2)
			end
		end)
		history:SetScript("OnHyperlinkClick", function(_, link)
			local linkType, arg1, historyz, event = strsplit(":", link)
			if linkType == "DBM" and arg1 == "showdkp" and historyz and event then
				historyz = tonumber(historyz)
				event = tonumber(event)
				CreateExportString(historyz, event)
			end
		end)
	end)
end

do
	local insert, time, type = table.insert, time, type
	local GetRealZoneText = GetRealZoneText
	local startTime = 0

	function RaidStart()
		local workingIn, history = mod.Options.workingIn, mod.Options.history
		mod.Options.lastevent = time()
		startTime = time()
		if workingIn == 0 or not history[workingIn] then
			local historyz = {
				timeStart	= startTime,
				timeEnd	= time(),
				events		= {}
			}
			insert(mod.Options.history, historyz)
			mod.Options.workingIn = #mod.Options.history
		end
		if mod.Options.Enable_StartEvent then
			CreateEvent({
				eventType	= "raidstart",
				zone		= GetRealZoneText(),
				description	= mod.Options.StartDescription,
				points		= mod.Options.StartPoints,
				timestamp	= time(),
			})
		end
		DBM:AddMsg(L.Local_StartRaid)
	end

	function RaidEnd()
		local workingIn, history = mod.Options.workingIn, mod.Options.history
		if workingIn == 0 or not history[workingIn] then
			return
		end
		local raid = history[workingIn]
		raid.timeEnd = time()
		DBM:AddMsg(L.Local_RaidSaved)
		startTime = 0
		mod.Options.lastevent = 0
	end

	function CreateEvent(event)
		local workingIn, history = mod.Options.workingIn, mod.Options.history
		if workingIn == 0 or not history[workingIn] then
			local historyz = {
				timeStart	= startTime,
				timeEnd		= time(),
				events		= {}
			}
			if mod.Options.history == nil then
				mod.Options.history = {}
			end
			insert(mod.Options.history, historyz)
			mod.Options.workingIn = #mod.Options.history
		end
		mod.Options.lastevent = time()
		if not event.items or type(event.items) ~= "table" then
			event.items = {}
		end
		if type(mod.Options.items) == "table" and #mod.Options.items > 0 then
			event.items = mod.Options.items
			mod.Options.items = {}
		end
		if not event.members then
			event.members = GetRaidList()
		end
		if type(event.members) ~= "table" then
			event.members = {}
		end
		if #event.members then
			if mod.Options.history[workingIn] ~= nil then
				insert(mod.Options.history[workingIn].events, event)
			end
		else
			DBM:AddMsg(L.Local_Debug_NoRaid)
		end
	end
end

do
	local time = time
	local GetRealZoneText = GetRealZoneText

	mod:RegisterOnUpdateHandler(function()
		if mod.Options.lastevent == 0 then
			return
		end
		if time() - (mod.Options.lastevent or time()) > (mod.Options.TimeToCount * 60) then
			DBM:AddMsg(L.Local_TimeReached)
			CreateEvent({
				eventType	= "",
				zone		= GetRealZoneText(),
				description	= mod.Options.TimeDescription,
				points		= mod.Options.TimePoints,
				timestamp	= time(),
			})
		end
	end)

	function mod:OnInitialize()
		DBM:RegisterCallback("kill", function(_, bossmod)
			if self.Options.Enable_BossEvents then
				CreateEvent({
					event_type	= "bosskill",
					zone		= GetRealZoneText(),
					description	= self.options.BossDescription:format(bossmod.localization.general.name),
					points		= self.options.BossPoints,
					timestamp	= time()
				})
			end
		end)
	end
end

DBM_AddItemToDKP = nil
do
	local insert, type, debugstack = table.insert, type, debugstack

	DBM_AddItemToDKP = function(itemtable)
		local workingIn, history = mod.Options.workingIn, mod.Options.history
		if not itemtable or type(itemtable) ~= "table" then
			DBM:AddMsg("Function DBM_AddItemToDKP(itemtable) call failed. Debugstack: " .. debugstack())
			return false
		elseif workingIn == 0 then
			DBM:AddMsg(L.LocalError_AddItemNoRaid)
			return false
		end
		if workingIn > 0 and history[workingIn] and #history[workingIn].events > 0 then
			local events = history[workingIn].events
			local event = events[#events]
			if not event.items or type(event.items) ~= "table" then
				event.items = {}
			end
			insert(event.items, itemtable)
		else
			insert(mod.Options.items, itemtable)
		end
	end
end
