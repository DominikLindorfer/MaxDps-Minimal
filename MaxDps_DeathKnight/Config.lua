local _, addonTable = ...;
local StdUi = LibStub('StdUi');

--- @type MaxDps
if not MaxDps then return end
local MaxDps = MaxDps;
local DeathKnight = addonTable.DeathKnight;

local defaultOptions = {
	alwaysGlowCooldowns = true,
	abominationLimbAsCooldown = true,
	bloodDancingRuneWeaponAsCooldown = false,
	unholyArmyOfTheDeadAsCooldown = true,
	unholySummonGargoyleAsCooldown = false,
	frostFrostwyrmsFuryAsCooldown = true,
};

function DeathKnight:GetConfig()
	local config = {
		layoutConfig = { padding = { top = 30 } },
		database     = self.db,
		rows         = {
			[1] = {
				covenant = {
					type = 'header',
					label = 'Covenant options'
				}
			},
			[2] = {
				abominationLimbAsCooldown = {
					type   = 'checkbox',
					label  = 'Abomination Limb as cooldown',
					column = 12
				},
			},
			[3] = {
				blood = {
					type = 'header',
					label = 'Blood options'
				}
			},
			[4] = {
				bloodDancingRuneWeaponAsCooldown = {
					type   = 'checkbox',
					label  = 'Dancing Rune Weapon as cooldown',
					column = 12
				},
			},
			[5] = {
				frost = {
					type = 'header',
					label = 'Frost options'
				}
			},
			[6] = {
				frostFrostwyrmsFuryAsCooldown = {
					type   = 'checkbox',
					label  = 'Frostwyrm\'s Fury as cooldown',
					column = 12
				},
			},
			[7] = {
				unholy = {
					type = 'header',
					label = 'Unholy options'
				}
			},
			[8] = {
				unholyArmyOfTheDeadAsCooldown = {
					type   = 'checkbox',
					label  = 'Army of the Dead as cooldown',
					column = 12
				},
			},
			[9] = {
				unholySummonGargoyleAsCooldown = {
					type   = 'checkbox',
					label  = 'Summon Gargoyle as cooldown',
					column = 12
				},
			},
			[10] = {
				advanced = {
					type = 'header',
					label = 'Advanced options'
				}
			},
			[11] = {
				alwaysGlowCooldowns = {
					type = 'checkbox',
					label = 'Always glow "X as Cooldown" abilities'
				}
			},
			[12] = {
				infoText = {
					type  = 'label',
					label = 'LEAVE THIS CHECKED UNLESS YOU\'VE READ AND UNDERSTOOD THIS DISCLAIMER! ' ..
						'There are some abilities that have a set place in your rotation, but you may ' ..
						'still want to use as if they were cooldowns.  You can accomplish this ' ..
						'using the "X as Cooldown" options on this page. In that case, you likely ' ..
						'want the abilities to always be highlighted as available when off cooldown. ' ..
						'By unchecking the above option, you\'re choosing to ONLY glow these cooldowns ' ..
						'in situations where they\'d normally be suggested as part of your rotation. ' ..
						'This means that, for abilities that require setup (such as pooling Runic ' ..
						'Power for Summon Gargoyle), the cooldown will only be highlighted once ' ..
						'you\'ve manually met the requirements, and MaxDps might not suggest actions ' ..
						'that build toward those requirements. If you don\'t want to ignore MaxDps ' ..
						'to manually set up your cooldowns, leave the above checkbox checked.'
				},
			},
		},
	};

	return config;
end


function DeathKnight:InitializeDatabase()
	if self.db then return end;

	if not MaxDpsDeathKnightOptions then
		MaxDpsDeathKnightOptions = defaultOptions;
	end

	for k, v in pairs(defaultOptions) do
		if MaxDpsDeathKnightOptions[k] == nil then
			MaxDpsDeathKnightOptions[k] = v;
		end
	end

	self.db = MaxDpsDeathKnightOptions;
end

function DeathKnight:CreateConfig()
	if self.optionsFrame then
		return;
	end

	local optionsFrame = StdUi:PanelWithTitle(nil, 100, 100, 'Death Knight Options');
	self.optionsFrame = optionsFrame;
	optionsFrame:Hide();
	optionsFrame.name = 'Death Knight';
	optionsFrame.parent = 'MaxDps';

	StdUi:BuildWindow(self.optionsFrame, self:GetConfig());

	StdUi:EasyLayout(optionsFrame, { padding = { top = 40 } });

	optionsFrame:SetScript('OnShow', function(of)
		of:DoLayout();
	end);

	InterfaceOptions_AddCategory(optionsFrame);
	InterfaceCategoryList_Update();
	InterfaceOptionsOptionsFrame_RefreshCategories();
	InterfaceAddOnsList_Update();
end