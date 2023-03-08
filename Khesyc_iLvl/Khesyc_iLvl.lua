-- ****************************************************************************************************
-- Change Log:
-- Version 4.1.230128
--
-- 2023-01-28
-- Updated interface number for 10.0.5
-- Reworked logic on the tooltip's OnUpdate hook to prevent stack overflow errors.
--
-- 2022-12-25
-- Added logic to keep ilvl and spec info on the tooltip when it redraws if the target hasn't changed.
-- Added a bunch of round-about logic to make the redraw logic work properly.
-- Honestly, I lost track of all the changes that I had to make here in order to make this work - this
--   was NOT an easy problem do solve. Many thanks to the Astral Keys developers for their code
--   pointing me in the right direction to make this work.
-- Also added features to optionally disable use of class colors or showing the target's spec
--
-- 2022-11-17
-- Updated how the "Add Line" checkbox saves it's value to the variable.
--
-- 2022-11-15
-- Updated interface number for 10.0.2
-- Added support for Evoker
--
-- 2022-10-26
-- Updated interface number for 10.0.0
--
-- 2022-06-07
-- Updated interface number for 9.2.5 (sorry for never updating to 9.2.0 - life got the better of me
-- for a while there...)
--
-- 2021-11-02
-- Update interface number for 9.1.5
--
-- 2021-07-02
-- Updated version and interface numbers for 9.1
--
-- 2021-03-11
-- Updated version and interface numbers for 9.0.5
--
-- 2020-12-30
-- Updated the variables load logic to be based on the VARIABLES_LOADED event
-- Corrected tooltip on Interface > Addons page to show better explanation of the feature
--
-- 2020-12-29
-- Added Interface > Addons page for Khes'yc iLvl with toggle to add a blank line before
-- details added by Khes'yc iLvl
--
-- 2020-11-26
-- Updated KhesyciLvlGetClassColor to use classId instead of className to work in different
-- language versions of the game
--
-- 2020-11-18
-- Updated interface build number for 9.0.2
--
-- 2020-09-27
-- Initial build. Scans other players for spec and iLvl.
-- Limited distribution for personal use only.
-- ****************************************************************************************************

--slash commands
	local ki_debug = false;
	SLASH_KIDEBUG1 = "/kidebug";
	SlashCmdList["KIDEBUG"] = function(msg)
		if (ki_debug) then
			print("Khes'yc iLvl - Debug Mode: Disabled");
			ki_debug = false;
		else
			print("Khes'yc iLvl - Debug Mode: Enabled");
			ki_debug = true;
		end
	end

--declarations
	local addon = ...;
	local addonTitle = GetAddOnMetadata(addon, "Title");
	local addonVersion = GetAddOnMetadata(addon, "Version");
	local isWaiting = false;
	local name = "";
	local scanName = "";
	local realm = "";
	local scanRealm = "";
	local class = "";
	local spec = "";
	local iLvl = 0;

--GLOBALS
	local _G = _G;
	local InterfaceOptions_AddCategory = _G.InterfaceOptions_AddCategory;

--Create the Blizzard addon option frame
	local panel = CreateFrame("Frame", addonTitle .. "BlizzOptions");
	panel.name = addonTitle;
	InterfaceOptions_AddCategory(panel);

	local fs = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge");
	fs:SetPoint("TOPLEFT", 10, -15);
	fs:SetJustifyH("LEFT");
	fs:SetJustifyV("TOP");
	fs:SetText(addonTitle);

	local st = panel:CreateFontString(nil, "OVERLAY", "SystemFont_Outline");
	st:SetPoint("TOPLEFT", 10, -48);
	st:SetPoint("BOTTOMRIGHT", panel, "TOPRIGHT", 10, -80);
	st:SetJustifyH("LEFT");
	st:SetJustifyV("TOP");
	st:SetText("Please consider supporting this and our other projects at www.khesyc.com via Patreon at www.patreon.com/khesyc or Venmo at @Khesyc.");

	local chkAddLine = CreateFrame("CheckButton", "ki_chkAddLine", panel, "ChatConfigCheckButtonTemplate");
	chkAddLine:SetPoint("TOPLEFT", 10, -85);
	chkAddLine.tooltip = "Add a blank line before Khes'yc iLvl details?";
	chkAddLine:SetScript("OnClick", function(self)
		ki_addLine = chkAddLine:GetChecked();
	end)
	local lblAddLine = panel:CreateFontString(nil, "OVERLAY", "GameFontNormal");
	lblAddLine:SetPoint("TOPLEFT", 35, -90);
	lblAddLine:SetJustifyH("LEFT");
	lblAddLine:SetJustifyV("TOP");
	lblAddLine:SetText("Add Blank Line?");

	local chkShowSpec = CreateFrame("CheckButton", "ki_chkShowSpec", panel, "ChatConfigCheckButtonTemplate");
	chkShowSpec:SetPoint("TOPLEFT", 10, -110);
	chkShowSpec.tooltip = "Show taget specialization on tooltip?";
	chkShowSpec:SetScript("OnClick", function(self)
		ki_showSpec = chkShowSpec:GetChecked();
	end)
	local lblAddLine = panel:CreateFontString(nil, "OVERLAY", "GameFontNormal");
	lblAddLine:SetPoint("TOPLEFT", 35, -115);
	lblAddLine:SetJustifyH("LEFT");
	lblAddLine:SetJustifyV("TOP");
	lblAddLine:SetText("Show Specialization?");

	local chkUseClassColors = CreateFrame("CheckButton", "ki_chkUseClassColors", panel, "ChatConfigCheckButtonTemplate");
	chkUseClassColors:SetPoint("TOPLEFT", 35, -135);
	chkUseClassColors.tooltip = "Use class colors in toolip?";
	chkUseClassColors:SetScript("OnClick", function(self)
		ki_useClassColors = chkUseClassColors:GetChecked();
	end)
	local lblAddLine = panel:CreateFontString(nil, "OVERLAY", "GameFontNormal");
	lblAddLine:SetPoint("TOPLEFT", 60, -140);
	lblAddLine:SetJustifyH("LEFT");
	lblAddLine:SetJustifyV("TOP");
	lblAddLine:SetText("Use Class Colors?");

--Create event handler frame
	local ki_Event = CreateFrame("frame", "ki_Event");
	ki_Event:RegisterEvent("VARIABLES_LOADED");

	ki_Event:SetScript("OnEvent", function(self, event, ...)
		if (event == "VARIABLES_LOADED") then
			KhesyciLvlInit();
			ki_Event:UnregisterEvent("VARIABLES_LOADED");
			ki_Event:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
		elseif (event == "UPDATE_MOUSEOVER_UNIT") then
			if not isWaiting then
				KhesyciLvlCheckName();
			end
		elseif (event == "INSPECT_READY") then
			KhesyciLvlInspect(...);
			ki_Event:UnregisterEvent("INSPECT_READY");
			ki_Event:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
		end
	end);

--Initialize
function KhesyciLvlInit()
	if (ki_addLine == nil) then ki_addLine = true end
	if (ki_showSpec == nil) then ki_showSpec = true end
	if (ki_useClassColors == nil) then ki_useClassColors = true end

	chkAddLine:SetChecked(ki_addLine);
	chkShowSpec:SetChecked(ki_showSpec);
	chkUseClassColors:SetChecked(ki_useClassColors);

	--begin loop to keep the mouseover event registered if there's a failure in the event registration logic
	KhesyciLvlRegisterMouseover();
end

function KhesyciLvlRegisterMouseover()
	ki_Event:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
	C_Timer.After(5, function() KhesyciLvlRegisterMouseover() end);
end

function KhesyciLvlGetClassColor(classId)
	if (classId == 1) then --Warrior
		return 0.78, 0.61, 0.43;
	elseif (classId == 3) then --Hunter
		return 0.67, 0.83, 0.45;
	elseif (classId == 8) then --Mage
		return 0.25, 0.78, 00.92;
	elseif (classId == 4) then --Rogue
		return 1.00, 0.96, 0.41;
	elseif (classId == 5) then --Priest
		return 1.00, 1.00, 1.00;
	elseif (classId == 9) then --Warlock
		return 0.53, 0.53, 0.93;
	elseif (classId == 2) then --Paladin
		return 0.96, 0.55, 0.73;
	elseif (classId == 11) then --Druid
		return 1.00, 0.49, 0.04;
	elseif (classId == 7) then --Shaman
		return 0.00, 0.44, 0.87;
	elseif (classId == 10) then --Monk
		return 0.00, 1.00, 0.59;
	elseif (classId == 12) then --Demon Hunter
		return 0.64, 0.19, 0.79;
	elseif (classId == 6) then --Death Knight
		return 0.77, 0.12, 0.23;
	elseif (classId == 13) then --Evoker
		return 0.20, 0.58, 0.50;
	end
end

function KhesyciLvlGetMouseoverName()
	local mouseName, mouseRealm = UnitName("mouseover");
	if (mouseRealm == nil or mouseRealm == '') then
		mouseRealm = GetRealmName();
	end
	return mouseName, mouseRealm;
end

function KhesyciLvlVerifyScanned(scannedName, scannedRealm)
	--if (ki_debug) then print("Khes'yc iLvl VerifyScanned()") end
	if (scannedName == scanName and scannedRealm == scanRealm) then
		--scanned target is the same, validation passes
		return true;
	else
		--target has changed, snapshot the new target and reset any scanned data
		scanName = scannedName;
		scanRealm = scannedRealm;

		name = "";
		realm = "";
		class = "";
		spec = "";
		iLvl = 0;

		return false;
	end
end

function KhesyciLvlSetWaiting()
	isWaiting = true;
	C_Timer.After(0.1, function() KhesyciLvlClearWaiting() end);
end

function KhesyciLvlClearWaiting()
	isWaiting = false;
	KhesyciLvlCheckName();
end

function KhesyciLvlCheckName()
	if (UnitIsPlayer("mouseover") and isWaiting == false) then
		local newName, newRealm = KhesyciLvlGetMouseoverName();
		if not KhesyciLvlVerifyScanned(newName, newRealm) then
			--target is a new player - initiate wait to verify if cursor is just "passing over" target
			if (ki_debug) then print("Khes'yc iLvl: Check Name - New Target") end
			KhesyciLvlSetWaiting();
		else
			--we still have the same target - initiate inspect and get spec and item level information
			if (scanName ~= name or scanRealm ~= realm) then
				if (ki_debug) then print("Khes'yc iLvl: Check Name - New Inspect") end
				--submit for inspect and register for return
				NotifyInspect("mouseover");
				ki_Event:RegisterEvent("INSPECT_READY");
				ki_Event:UnregisterEvent("UPDATE_MOUSEOVER_UNIT");
			else
				if (ki_debug) then print("Khes'yc iLvl: Check Name - Existing Inspect") end
			end
		end
	end
end

function KhesyciLvlInspect(guid)
	if (ki_debug) then print("Khes'yc iLvl Inspect()") end
	if UnitIsPlayer("mouseover") then
		--get the current mouseover target
		local newName, newRealm = KhesyciLvlGetMouseoverName();

		--make sure that our mouseover target still matches our inspect target
		if KhesyciLvlVerifyScanned(newName, newRealm) then
			--snapshot current name, class, spec, iLvl into global variables
			name = newName;
			realm = newRealm;

			_, _, class = UnitClass("mouseover");
			_, spec = GetSpecializationInfoByID(GetInspectSpecialization("mouseover"));
			iLvl = C_PaperDollInfo.GetInspectItemLevel("mouseover");
		end
	end
end

GameTooltip:HookScript("OnUpdate", function(self)
	KhesyciLvlAddLineToTooltip(self);
end);

function KhesyciLvlAddLineToTooltip(self)
	if UnitIsPlayer("mouseover") and iLvl > 0 then
		if KhesyciLvlVerifyScanned(KhesyciLvlGetMouseoverName()) then
			local addLine = true;

			for i = 1, self:NumLines(), 1 do
				local line = _G[self:GetName().."TextLeft"..i]:GetText()
				if line == nil then line = "" end
				if strlen(line) > 4 then
					if (strsub(line, 1, 4) == "iLvl") then addLine = false end
				end
			end

			if (addLine == true) then
				if (ki_addLine) then
					self:AddLine(" ");
				end

				local r, g, b;
				if ki_useClassColors then
					r, g, b = KhesyciLvlGetClassColor(class);
				else
					r = 1;
					g = 1;
					b = 1;
				end
				
				if ki_showSpec then self:AddLine(spec, r, g, b, 1); end
				self:AddLine("iLvl: " .. iLvl);
				self:Show();
			end
		end
	end
end