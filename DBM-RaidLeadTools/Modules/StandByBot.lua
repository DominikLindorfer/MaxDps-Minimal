local mod	= DBM:NewMod("StandByBot", "DBM-RaidLeadTools")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20200407001547")
mod:SetZone(DBM_DISABLE_ZONE_DETECTION)

mod:AddBoolOption("SendWhispers", false, "General")
do
	local GameFontHighlightSmall = GameFontHighlightSmall

	DBM:RegisterOnGuiLoadCallback(function()
		local docpanel = DBM_GUI:CreateNewPanel(L.TabCategory_Docs, "option")
		docpanel:CreateText(L.SB_Documentation, nil, nil, GameFontHighlightSmall, "LEFT")
	end)
end

do
	local pairs = pairs
	local GameFontNormalSmall, GameFontHighlightSmall = GameFontNormalSmall, GameFontHighlightSmall

	DBM:RegisterOnGuiLoadCallback(function()
		local historypanel = DBM_GUI:CreateNewPanel(L.TabCategory_History, "option")
		local area = historypanel:CreateArea(L.AreaStandbyHistory, nil, 260, true)
		local resetdkphistory = area:CreateButton(L.Button_ResetHistory, 100, 16)
		resetdkphistory:SetPoint('BOTTOMRIGHT', area.frame, "TOPRIGHT", 0, 0)
		resetdkphistory:SetNormalFontObject(GameFontNormalSmall)
		resetdkphistory:SetHighlightFontObject(GameFontNormalSmall)
		resetdkphistory:SetScript("OnClick", function()
			mod.Options.log = {}
			mod.Options.history = {}
			mod.Options.sbUsers = {}
			mod.Options.sbTimes = {}
		end)
		local history = area:CreateScrollingMessageFrame(area.frame:GetWidth() - 20, 220, nil, nil, GameFontHighlightSmall)
		history:ClearAllPoints()
		history:SetPoint("TOPLEFT", area.frame, "TOPLEFT", 5, -5)
		history:SetPoint("BOTTOMRIGHT", area.frame, "BOTTOMRIGHT", 5, 5)
		history:SetScript("OnShow", function(self)
			local log = mod.Options.log
			self:SetMaxLines(#log + 1)
			for _, v in pairs(log) do
				self:AddMessage(v)
			end
		end)
	end)
end
mod.Options.sbUsers = mod.Options.sbUsers or {}
mod.Options.sbTimes = mod.Options.sbTimes or {}
mod.Options.history = mod.Options.history or {}
mod.Options.log = mod.Options.log or {}

mod:RegisterEvents(
	"CHAT_MSG_GUILD",
	"CHAT_MSG_RAID",
	"CHAT_MSG_PARTY",
	"CHAT_MSG_OFFICER",
	"CHAT_MSG_RAID_LEADER",
	"CHAT_MSG_WHISPER"
)

local Raidtime, UpdateTimes, AddStandbyMember, RemoveStandbyMember, SetStandby, FormatPlayerName, SaveTimeHistory
do
	local insert, floor, pairs, time, date, band = table.insert, math.floor, pairs, time, date, bit.band
	local SendChatMessage = SendChatMessage

	function Raidtime(minutes)
		local hours = floor(minutes / 60)
		return minutes - (hours * 60), hours
	end

	function UpdateTimes()
		for name, starttime in pairs(mod.Options.sbUsers) do
			mod.Options.sbTimes[name] = floor(0.5 + (mod.Options.sbTimes[name] or 0) + ((time() - starttime) / 60))
			mod.Options.sbUsers[name] = time()
		end
	end

	function SetStandby(name, nowsb)
		if nowsb then
			if mod.Options.sbUsers[name] then
				return false
			end
			insert(mod.Options.log, L.History_OnJoin:format(date("%c"), name))
			mod.Options.sbUsers[name] = time()
			mod:SendSync("add", name)
			return true
		else
			if not mod.Options.sbUsers[name] then
				return false
			end
			local sbtime = floor((time() - mod.Options.sbUsers[name]) / 60)
			insert(mod.Options.log, L.History_OnLeave:format(date("%c"), name, sbtime))
			mod.Options.sbTimes[name] = (mod.Options.sbTimes[name] or 0) + sbtime
			mod:SendSync("del", name)
			mod.Options.sbUsers[name] = nil
			return mod.Options.sbTimes[name]
		end
	end

	function AddStandbyMember(name, quiet)
		if not name or name:len() < 2 then
			return false
		end
		if not mod.Options.sbUsers[name] then
			if not quiet then
				DBM:AddMsg(L.Local_AddedPlayer:format(name))
				SendChatMessage("<DBM> " .. L.AddedSBUser, "WHISPER", nil, name)
			end
			SetStandby(name, true)
		else
			if not quiet then
				SendChatMessage("<DBM> " .. L.UserIsAllreadySB, "WHISPER", nil, name)
			end
		end
	end

	function RemoveStandbyMember(name, quiet)
		if not name or not mod.Options.sbUsers[name] then
			return false
		end
		local sbtime = SetStandby(name, false)
		if not quiet then
			DBM:AddMsg(L.Local_RemovedPlayer:format(name))
			local minutes, hours = Raidtime(sbtime)
			SendChatMessage("<DBM> " .. L.NoLongerStandby:format(hours or 0, minutes or 0), "WHISPER", nil, name)
		end
		return true
	end

	function FormatPlayerName(name)
		if name:len() < 2 then
			return name
		end
		if band(name:sub(0, 1):byte(), 128) == 128 then
			name = name:sub(0, 2):upper() .. name:sub(3):lower()
		else
			name = name:sub(0, 1):upper() .. name:sub(2):lower()
		end
		return name
	end

	function SaveTimeHistory()
		UpdateTimes()
		if #mod.Options.sbTimes > 0 then
			mod.Options.sbUsers = {}
			insert(mod.Options.history, {
				date	= date("%c"),
				member	= mod.Options.sbTimes
			})
			mod.Options.sbTimes = {}
			DBM:AddMsg(L.SB_History_Saved:format(#mod.Options.history))
		else
			DBM:AddMsg(L.SB_History_NotSaved)
		end
	end
end

do
	local UnitName, SendChatMessage, IsInRaid, ChatFrame_AddMessageEventFilter = UnitName, SendChatMessage, IsInRaid, ChatFrame_AddMessageEventFilter

	function mod:OnInitialize()
		ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", function(_, _, msg, ...)
			return msg:find("^!sb"), ...
		end)
		DBM:RegisterCallback("raidLeave", function(_, name)
			if name and IsInRaid() then
				if name == UnitName("player") then
					SaveTimeHistory()
				elseif self.Options.SendWhispers then
					SendChatMessage("<DBM> " .. L.LeftRaidGroup, "WHISPER", nil, name)
				end
			end
		end)
		DBM:RegisterCallback("raidJoin", function(_, ...)
			return RemoveStandbyMember(...)
		end)
	end
end

do
	local strtrim = strtrim

	function mod:OnSync(msg, name)
		name = FormatPlayerName(strtrim(name))
		if msg == "add" then
			AddStandbyMember(name, true)
		elseif msg == "del" then
			RemoveStandbyMember(name, true)
		end
	end
end

do
	local SendChatMessage = SendChatMessage

	function mod:CHAT_MSG_WHISPER(msg, author)
		if msg == "!sb" then
			if not DBM:GetRaidUnitId(author) then
				AddStandbyMember(author)
			else
				SendChatMessage("<DBM> " .. L.InRaidGroup, "WHISPER", nil, author)
			end
		elseif msg == "!sb off" then
			RemoveStandbyMember(author)
		end
	end
end

do
	local pairs, date, tonumber, strtrim = pairs, date, tonumber, strtrim
	local SendChatMessage = SendChatMessage

	local function OnMsgRecived(_, msg, author)
		if msg == "!sb" then
			local output = ""
			for k, _ in pairs(mod.Options.sbUsers) do
				output = output .. ", " .. k
			end
			output = output:sub(2)
			if output == "" then
				output = "none"
			end
			SendChatMessage("<DBM> " .. L.PostStandybyList .. " " .. output, "WHISPER", nil, author)
		elseif msg == "!sb time" or msg == "!sb times" then
			UpdateTimes()
			if #mod.Options.sbTimes > 0 then
				SendChatMessage(L.Current_StandbyTime:format(date("%c")), "GUILD")
				local users, count = "", 0
				for k, v in pairs(mod.Options.sbTimes) do
					count = count + 1
					local minutes, hours = Raidtime(v)
					users = users .. k .. "(" .. ("%02d"):format(hours) .. ":" .. ("%02d"):format(minutes) .. "), "
					if count >= 3 then
						count = 0
						SendChatMessage(users:sub(0, -2), "GUILD")
						users = ""
					end
				end
				if count > 0 then
					SendChatMessage(users:sub(0, -2), "GUILD")
				end
			end
		elseif msg == "!sb history" then
			for i = #mod.Options.history, 1, -1 do
				local raid = mod.Options.history[i]
				SendChatMessage(L.SB_History_Line:format(i, raid.date, #raid.member), "GUILD")
				if #mod.Options.history - i > 3 then
					return
				end
			end
		elseif msg:find("^!sb history") then
			local id = tonumber(strtrim(msg:sub(13))) or 0
			if id > 0 and mod.Options.history[id] then
				local raid = mod.Options.history[id]
				SendChatMessage(L.Current_StandbyTime:format(raid.date), "GUILD")
				local users, count = "", 0
				for k, v in pairs(raid.member) do
					count = count + 1
					local minutes, hours = Raidtime(v)
					users = users .. k .. "(" .. ("%02d"):format(hours) .. ":" .. ("%02d"):format(minutes) .. "), "
					if count >= 3 then
						count = 0
						SendChatMessage(users:sub(0, -2), "GUILD")
						users = ""
					end
				end
				if count > 0 then
					SendChatMessage(users:sub(0, -2), "GUILD")
				end
			end
		elseif msg:find("^!sb add") then
			local name = FormatPlayerName( strtrim(msg:sub(8)) )
			AddStandbyMember(name)
		elseif msg:find("^!sb del") then
			local name = FormatPlayerName( strtrim(msg:sub(8)) )
			if not RemoveStandbyMember(name) then
				DBM:AddMsg(L.Local_CantRemove)
			end
		elseif msg == "!sb reset" and author == UnitName("player") then
			mod.Options.sbTimes = {}
			mod.Options.sbUsers = {}
		elseif msg == "!sb save" and author == UnitName("player") then
			SaveTimeHistory()
		end
	end
	mod.CHAT_MSG_GUILD			= OnMsgRecived
	mod.CHAT_MSG_RAID			= OnMsgRecived
	mod.CHAT_MSG_PARTY			= OnMsgRecived
	mod.CHAT_MSG_OFFICER		= OnMsgRecived
	mod.CHAT_MSG_RAID_LEADER	= OnMsgRecived
end
