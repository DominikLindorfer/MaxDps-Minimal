local addonName, MaxDps = ...;

LibStub('AceAddon-3.0'):NewAddon(MaxDps, 'MaxDps', 'AceConsole-3.0', 'AceEvent-3.0', 'AceTimer-3.0');

--- @class MaxDps
_G[addonName] = MaxDps;

local TableInsert = tinsert;
local TableRemove = tremove;
local TableContains = tContains;
local TableIndexOf = tIndexOf;

local UnitIsFriend = UnitIsFriend;
local IsPlayerSpell = IsPlayerSpell;
local UnitClass = UnitClass;
local GetSpecialization = GetSpecialization;
local CreateFrame = CreateFrame;
local GetAddOnInfo = GetAddOnInfo;
local IsAddOnLoaded = IsAddOnLoaded;
local LoadAddOn = LoadAddOn;

local spellHistoryBlacklist = {
	[75] = true; -- Auto shot
};

MaxDps.Textures = {
	{text = 'Ping', value = 'Interface\\Cooldown\\ping4'},
	{text = 'Star', value = 'Interface\\Cooldown\\star4'},
	{text = 'Starburst', value = 'Interface\\Cooldown\\starburst'},
};
MaxDps.FinalTexture = nil;

MaxDps.Colors = {
	Info = '|cFF1394CC',
	Error = '|cFFF0563D',
	Success = '|cFFBCCF02',
}

MaxDps.Classes = {
	[1] = 'Warrior',
	[2] = 'Paladin',
	[3] = 'Hunter',
	[4] = 'Rogue',
	[5] = 'Priest',
	[6] = 'DeathKnight',
	[7] = 'Shaman',
	[8] = 'Mage',
	[9] = 'Warlock',
	[10] = 'Monk',
	[11] = 'Druid',
	[12] = 'DemonHunter',
}

function MaxDps:OnInitialize()
	print("OnInitialize() activated!")
	self.db = LibStub('AceDB-3.0'):New('MaxDpsOptions', self.defaultOptions);
	-- self:RegisterChatCommand('maxdps', 'ShowMainWindow');
end

function MaxDps:ShowMainWindow()
	if not self.Window then
		self.Window = self:GetModule('Window');
	end

	self.Window:ShowWindow();
end

function MaxDps:GetTexture()
	if self.db.global.customTexture ~= '' and self.db.global.customTexture ~= nil then
		self.FinalTexture = self.db.global.customTexture;
		return self.FinalTexture;
	end

	self.FinalTexture = self.db.global.texture;
	if self.FinalTexture == '' or self.FinalTexture == nil then
		self.FinalTexture = 'Interface\\Cooldown\\ping4';
	end

	return self.FinalTexture;
end

MaxDps.DefaultPrint = MaxDps.Print;
function MaxDps:Print(...)
	if self.db.global.disabledInfo then
		return
	end

	MaxDps:DefaultPrint(...);
end

function MaxDps:EnableRotation()
	print("EnableRotation() activated!")
	
	self:CheckTalents();
	self:GetCovenantInfo();
	self:CheckIsPlayerMelee();
	self:EnableRotationTimer();
	self.rotationEnabled = true;
end

function MaxDps:EnableRotationTimer()
	self.RotationTimer = self:ScheduleRepeatingTimer('InvokeNextSpell', self.db.global.interval);
  	-- self.timerCount = 0
	-- self.RotationTimer = self:ScheduleRepeatingTimer("TimerFeedback", 0.1)
end

-- function MaxDps:TimerFeedback()
--   self.timerCount = self.timerCount + 1
--   print(("%d seconds passed"):format(5 * self.timerCount))
--   -- run 30 seconds in total
--   if self.timerCount == 6 then
--     self:CancelTimer(self.testTimer)
--   end
-- end

function MaxDps:DisableRotation()
	if not self.rotationEnabled then
		return
	end

	self:DisableRotationTimer();

	self:DestroyAllOverlays();
	self:Print(self.Colors.Info .. 'Disabling');

	self.Spell = nil;
	self.rotationEnabled = false;
end

function MaxDps:DisableRotationTimer()
	if self.RotationTimer then
		self:CancelTimer(self.RotationTimer);
	end
end

function MaxDps:OnEnable()
	print("OnEnable() activated!")

	if not self.rotationEnabled then
		self:Print(self.Colors.Success .. 'Auto enable on combat!');
		print("Enable Rotations on OnEnable()!")
		self:InitRotations();
		self:EnableRotation();
	end

	-- self:RegisterEvent('PLAYER_TARGET_CHANGED');
	self:RegisterEvent('NAME_PLATE_UNIT_ADDED');
	self:RegisterEvent('NAME_PLATE_UNIT_REMOVED');

	if not self.playerUnitFrame then
		self.spellHistory = {};

		self.playerUnitFrame = CreateFrame('Frame');
		self.playerUnitFrame:RegisterUnitEvent('UNIT_SPELLCAST_SUCCEEDED', 'player');
		self.playerUnitFrame:SetScript('OnEvent', function(_, _, _, _, spellId)
			-- event, unit, lineId
			if IsPlayerSpell(spellId) and not spellHistoryBlacklist[spellId] then
				TableInsert(self.spellHistory, 1, spellId);

				if #self.spellHistory > 5 then
					TableRemove(self.spellHistory);
				end
			end
		end);
	end

	print("Enabling Done!")

	self:Print(self.Colors.Info .. 'Initialized');
end

MaxDps.visibleNameplates = {};
function MaxDps:NAME_PLATE_UNIT_ADDED(_, nameplateUnit)
	if not TableContains(self.visibleNameplates, nameplateUnit) then
		TableInsert(self.visibleNameplates, nameplateUnit);
	end
end

function MaxDps:NAME_PLATE_UNIT_REMOVED(_, nameplateUnit)
	local index = TableIndexOf(self.visibleNameplates, nameplateUnit);
	if index ~= nil then
		TableRemove(self.visibleNameplates, index)
	end
end

function MaxDps:PLAYER_TARGET_CHANGED()
	if self.rotationEnabled then
		if UnitIsFriend('player', 'target') then
			return
		else
			self:InvokeNextSpell();
		end
	end
end

function MaxDps:PrepareFrameData()
	if not self.FrameData then
		self.FrameData = {
			cooldown  = self.PlayerCooldowns,
			activeDot = self.ActiveDots
		};
	end

	self.FrameData.timeShift, self.FrameData.currentSpell, self.FrameData.gcdRemains = MaxDps:EndCast();
	self.FrameData.gcd = self:GlobalCooldown();
	self.FrameData.buff, self.FrameData.debuff = MaxDps:CollectAuras();
	self.FrameData.talents = self.PlayerTalents;
	self.FrameData.azerite = self.AzeriteTraits;
	self.FrameData.essences = self.AzeriteEssences;
	self.FrameData.covenant = self.CovenantInfo;
	self.FrameData.runeforge = self.LegendaryBonusIds;
	self.FrameData.spellHistory = self.spellHistory;
	self.FrameData.timeToDie = self:GetTimeToDie();
end

function MaxDps:InvokeNextSpell()
	local oldSkill = self.Spell;
	local oldCD = self.Cooldown;

	self:PrepareFrameData();

	-- Function Alias set in MaxDps Submodules
	self.Spell = self:NextSpell();
	self.Cooldown = self:NextCooldown();
	-- print(self.Spell)
	-- print(self.Cooldown)

	if WeakAuras then
			WeakAuras.ScanEvents('MAXDPS_SPELL_UPDATE', self.Spell);
			WeakAuras.ScanEvents('MAXDPS_COOLDOWN_UPDATE2', self.Cooldown);
	end
end

function MaxDps:InitRotations()
	print("InitRotations() activated!")
	self:Print(self.Colors.Info .. 'Initializing rotations');

	local _, _, classId = UnitClass('player');
	local spec = GetSpecialization();
	self.ClassId = classId;
	self.Spec = spec;


	self:LoadModule();
end

function MaxDps:LoadModule()

	print("LoadModule() activated!")
	print(self.ClassId, self.Spec, self.Classes[self.ClassId])

	if self.Classes[self.ClassId] == nil then
		self:Print(self.Colors.Error .. 'Invalid player class, please contact author of addon.');
		return
	end

	local className = self.Classes[self.ClassId];
	local module = 'MaxDps_' .. className;
	local _, _, _, _, reason = GetAddOnInfo(module);

	if IsAddOnLoaded(module) then
		self:EnableRotationModule(className);
		return
	end

	if reason == 'MISSING' or reason == 'DISABLED' then
		self:Print(self.Colors.Error .. 'Could not find class module ' .. module .. ', reason: ' .. reason);
		self:Print(self.Colors.Error .. 'Make sure to install class module or create custom rotation');
		self:Print(self.Colors.Error .. 'Missing addon: ' .. module);
		return
	end

	LoadAddOn(module);

	self:InitTTD();
	self:EnableRotationModule(className);
end

function MaxDps:EnableRotationModule(className)
	local loaded = self:EnableModule(className);

	if not loaded then
		self:Print(self.Colors.Error .. 'Could not find load module ' .. className .. ', reason: OUTDATED');
	else
		self:Print(self.Colors.Info .. 'Finished Loading class module');
	end
end
