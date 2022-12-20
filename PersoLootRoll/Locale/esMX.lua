local Name, Addon = ...
local Locale = Addon.Locale
local lang = "esMX"

-- Chat messages
local L = {lang = lang}
setmetatable(L, Locale.MT)
Locale[lang] = L

-- Messages
--[[Translation missing --]]
L["MSG_BID_1"] = "Do you need that %s?"
--[[Translation missing --]]
L["MSG_BID_2"] = "May I have %s, if you don't need it?"
--[[Translation missing --]]
L["MSG_BID_3"] = "I could use %s if you don't want it."
--[[Translation missing --]]
L["MSG_BID_4"] = "I would take %s if you want to get rid of it."
--[[Translation missing --]]
L["MSG_BID_5"] = "Do you need %s, or may I have it?"
--[[Translation missing --]]
L["MSG_HER"] = "her"
--[[Translation missing --]]
L["MSG_HIM"] = "him"
--[[Translation missing --]]
L["MSG_ITEM"] = "item"
--[[Translation missing --]]
L["MSG_NEED"] = "need,yes"
--[[Translation missing --]]
L["MSG_PASS"] = "pass,no,nope"
--[[Translation missing --]]
L["MSG_ROLL"] = "roll,share,give away"
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_AMBIGUOUS"] = "I am giving away multiple items right now, please send me the link of the item you want."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_BID"] = "Ok, I registered your bid for %s."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_NO"] = "Sorry, you can't bid for that item anymore."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_NO_OTHER"] = "Sorry, I already gave it to someone else."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_NO_SELF"] = "Sorry, I need that myself."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_NOT_ELIGIBLE"] = "Sorry, you aren't eligible for that item."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Sorry, I can't trade it."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_STARTED"] = "Ok, I'll start a roll for it."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_YES"] = "You can have it, just trade me."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "You can have it, just trade <%s>."
--[[Translation missing --]]
L["MSG_ROLL_DISENCHANT"] = "<%s> will disenchant %s -> Trade me!"
--[[Translation missing --]]
L["MSG_ROLL_DISENCHANT_MASTERLOOT"] = "<%s> will disenchant %s from <%s> -> Trade him/her!"
--[[Translation missing --]]
L["MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "<%s> will disenchant his/her own %s!"
--[[Translation missing --]]
L["MSG_ROLL_DISENCHANT_WHISPER"] = "You were picked to disenchant %s, please trade me."
--[[Translation missing --]]
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "You were picked to disenchant %s from <%s>, please trade him/her."
--[[Translation missing --]]
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "You were picked to disenchant your own %s!"
--[[Translation missing --]]
L["MSG_ROLL_START"] = "Giving away %s -> /w me or /roll %d!"
--[[Translation missing --]]
L["MSG_ROLL_START_CONCISE"] = "%s someone need?"
--[[Translation missing --]]
L["MSG_ROLL_START_MASTERLOOT"] = "Giving away %s from <%s> -> /w me or /roll %d!"
--[[Translation missing --]]
L["MSG_ROLL_WINNER"] = "<%s> has won %s -> Trade me!"
--[[Translation missing --]]
L["MSG_ROLL_WINNER_CONCISE"] = "%s trade me!"
--[[Translation missing --]]
L["MSG_ROLL_WINNER_MASTERLOOT"] = "<%s> has won %s from <%s> -> Trade him/her!"
--[[Translation missing --]]
L["MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "<%s> has won his/her own %s!"
--[[Translation missing --]]
L["MSG_ROLL_WINNER_WHISPER"] = "You have won %s! Please trade me."
--[[Translation missing --]]
L["MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Please trade me."
--[[Translation missing --]]
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "You have won %s from <%s>! Please trade him/her."
--[[Translation missing --]]
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "You have won your own %s!"


-- Addon
local L = LibStub("AceLocale-3.0"):NewLocale(Name, lang, lang == Locale.FALLBACK)
if not L then return end

--[[Translation missing --]]
L["ACTION"] = "Action"
--[[Translation missing --]]
L["ACTIONS"] = "Actions"
--[[Translation missing --]]
L["ADVERTISE"] = "Advertise in chat"
--[[Translation missing --]]
L["ANSWER"] = "Answer"
--[[Translation missing --]]
L["ASK"] = "Ask"
--[[Translation missing --]]
L["AWARD"] = "Award"
--[[Translation missing --]]
L["AWARD_LOOT"] = "Award loot"
--[[Translation missing --]]
L["AWARD_RANDOMLY"] = "Award randomly"
--[[Translation missing --]]
L["BID"] = "Bid"
--[[Translation missing --]]
L["COMMUNITY_GROUP"] = "Community Group"
--[[Translation missing --]]
L["COMMUNITY_MEMBER"] = "Community Member"
--[[Translation missing --]]
L["CONFIRM"] = "Confirm"
--[[Translation missing --]]
L["DISABLED"] = "Disabled"
--[[Translation missing --]]
L["DOWN"] = "down"
--[[Translation missing --]]
L["ENABLED"] = "Enabled"
--[[Translation missing --]]
L["EQUIPPED"] = "Equipped"
--[[Translation missing --]]
L["GET_FROM"] = "Get from"
--[[Translation missing --]]
L["GIVE_AWAY"] = "Give away"
--[[Translation missing --]]
L["GIVE_TO"] = "Give to"
--[[Translation missing --]]
L["GUILD_MASTER"] = "Guild Master"
--[[Translation missing --]]
L["GUILD_OFFICER"] = "Guild Officer"
--[[Translation missing --]]
L["HIDE"] = "Hide"
--[[Translation missing --]]
L["HIDE_ALL"] = "Hide all"
--[[Translation missing --]]
L["ITEM"] = "item"
--[[Translation missing --]]
L["ITEM_LEVEL"] = "Item-Level"
--[[Translation missing --]]
L["KEEP"] = "Keep"
--[[Translation missing --]]
L["LEFT"] = "left"
--[[Translation missing --]]
L["MASTERLOOTER"] = "Masterlooter"
--[[Translation missing --]]
L["MESSAGE"] = "Message"
--[[Translation missing --]]
L["ML"] = "ML"
--[[Translation missing --]]
L["OPEN_ROLLS"] = "Open rolls window"
--[[Translation missing --]]
L["OWNER"] = "Owner"
--[[Translation missing --]]
L["PLAYER"] = "Player"
--[[Translation missing --]]
L["PRIVATE"] = "Private"
--[[Translation missing --]]
L["PUBLIC"] = "Public"
--[[Translation missing --]]
L["RAID_ASSISTANT"] = "Raid assistant"
--[[Translation missing --]]
L["RAID_LEADER"] = "Raid leader"
--[[Translation missing --]]
L["RESTART"] = "Restart"
--[[Translation missing --]]
L["RIGHT"] = "right"
--[[Translation missing --]]
L["RINGS"] = "Rings"
--[[Translation missing --]]
L["ROLL"] = "Roll"
--[[Translation missing --]]
L["ROLLS"] = "Rolls"
--[[Translation missing --]]
L["SECONDS"] = "%ds"
--[[Translation missing --]]
L["SET_ANCHOR"] = "Set anchor: Grow %s and %s"
--[[Translation missing --]]
L["SHOW"] = "Show"
--[[Translation missing --]]
L["SHOW_ALL"] = "Show all"
--[[Translation missing --]]
L["SHOW_HIDE"] = "Show/Hide"
--[[Translation missing --]]
L["TRADE"] = "Trade"
--[[Translation missing --]]
L["TRINKETS"] = "Trinkets"
--[[Translation missing --]]
L["UP"] = "up"
--[[Translation missing --]]
L["VERSION_NOTICE"] = "There's a new version of this addon available. Please update to stay compatible with everyone and not miss out on any loot!"
--[[Translation missing --]]
L["VOTE"] = "Vote"
--[[Translation missing --]]
L["VOTE_WITHDRAW"] = "Withdraw"
--[[Translation missing --]]
L["VOTES"] = "Votes"
--[[Translation missing --]]
L["WAIT"] = "Wait"
--[[Translation missing --]]
L["WINNER"] = "Winner"
--[[Translation missing --]]
L["WON"] = "Won"
--[[Translation missing --]]
L["YOUR_BID"] = "Your bid"

-- Commands
--[[Translation missing --]]
L["HELP"] = [=[Start rolls and bid for items (/PersoLootRoll or /plr).
Usage:
/plr: Open roll window
/plr help: Print this help message
/plr roll [item]* (<owner> <timeout>): Start a roll for one or more item(s)
/plr bid [item] (<owner> <bid>): Bid for an item from another player
/plr trade (<player>): Trade with the given player or your current target
/plr test: Start a test roll (only you will see it)
/plr options: Open options window
/plr config: Change settings through the command line
/plr debug: Toggle debug mode

Legend: [..] = item link, * = one or more times, (..) = optional]=]
--[[Translation missing --]]
L["USAGE_BID"] = "Usage: /plr bid [item] (<owner> <bid>)"
--[[Translation missing --]]
L["USAGE_ROLL"] = "Usage: /plr roll [item]* (<owner> <timeout>)"

-- Errors
--[[Translation missing --]]
L["ERROR_CMD_UNKNOWN"] = "Unknown command '%s'"
--[[Translation missing --]]
L["ERROR_COLLECTION_FILTERS_DISABLED"] = "All collection filters are disabled. If you want to roll on missing collection items make sure to enable them in the item filter options."
--[[Translation missing --]]
L["ERROR_ITEM_NOT_TRADABLE"] = "You cannot trade that item."
--[[Translation missing --]]
L["ERROR_NOT_IN_GROUP"] = "You are not in a group or raid."
--[[Translation missing --]]
L["ERROR_NOT_MASTERLOOTER_OTHER_OWNER"] = "You need to become masterlooter to create rolls for other player's items."
--[[Translation missing --]]
L["ERROR_NOT_MASTERLOOTER_TIMEOUT"] = "You cannot change the timeout while having a masterlooter other than yourself."
--[[Translation missing --]]
L["ERROR_OPT_MASTERLOOT_EXPORT_FAILED"] = "Exporting masterloot settings to <%s> failed!"
--[[Translation missing --]]
L["ERROR_PLAYER_NOT_FOUND"] = "Cannot find player %q."
--[[Translation missing --]]
L["ERROR_ROLL_BID_IMPOSSIBLE_OTHER"] = "%s has send a bid for %s but is not allowed to do so right now."
--[[Translation missing --]]
L["ERROR_ROLL_BID_IMPOSSIBLE_SELF"] = "You cannot bid on that item right now."
--[[Translation missing --]]
L["ERROR_ROLL_BID_UNKNOWN_OTHER"] = "%s has send an invalid bid for %s."
--[[Translation missing --]]
L["ERROR_ROLL_BID_UNKNOWN_SELF"] = "That's not a valid bid."
--[[Translation missing --]]
L["ERROR_ROLL_STATUS_NOT_0"] = "The roll has already been started or finished."
--[[Translation missing --]]
L["ERROR_ROLL_STATUS_NOT_1"] = "The roll is not running."
--[[Translation missing --]]
L["ERROR_ROLL_UNKNOWN"] = "That roll doesn't exist."
--[[Translation missing --]]
L["ERROR_ROLL_VOTE_IMPOSSIBLE_OTHER"] = "%s has send a vote for %s but is not allowed to do so right now."
--[[Translation missing --]]
L["ERROR_ROLL_VOTE_IMPOSSIBLE_SELF"] = "You cannot vote on that item right now."

-- GUI
--[[Translation missing --]]
L["DIALOG_MASTERLOOT_ASK"] = "<%s> wants to become your masterlooter."
--[[Translation missing --]]
L["DIALOG_OPT_MASTERLOOT_LOAD"] = "This will replace your current masterloot settings with those stored in the guild/community info, are you sure you want to proceed?"
--[[Translation missing --]]
L["DIALOG_OPT_MASTERLOOT_SAVE"] = "This will replace any masterloot settings in the guild/community info with your current settings, are you sure you want to proceed?"
--[[Translation missing --]]
L["DIALOG_ROLL_CANCEL"] = "Do you want to cancel this roll?"
--[[Translation missing --]]
L["DIALOG_ROLL_RESTART"] = "Do you want to restart this roll?"
--[[Translation missing --]]
L["DIALOG_ROLL_WHISPER_ASK"] = "Do you want to automatically whisper other players to ask for loot? You can change this anytime in the \"Messages\" options."
--[[Translation missing --]]
L["FILTER"] = "Filter"
--[[Translation missing --]]
L["FILTER_ALL"] = "For all players"
--[[Translation missing --]]
L["FILTER_ALL_DESC"] = "Include rolls for all players, not just yours or those with items that might interest you."
--[[Translation missing --]]
L["FILTER_AWARDED"] = "Awarded"
--[[Translation missing --]]
L["FILTER_AWARDED_DESC"] = "Include rolls that have been won by someone."
--[[Translation missing --]]
L["FILTER_DONE"] = "Done"
--[[Translation missing --]]
L["FILTER_DONE_DESC"] = "Include rolls that have ended."
--[[Translation missing --]]
L["FILTER_HIDDEN"] = "Hidden"
--[[Translation missing --]]
L["FILTER_HIDDEN_DESC"] = "Include canceled, pending, passed and hidden rolls."
--[[Translation missing --]]
L["FILTER_TRADED"] = "Traded"
--[[Translation missing --]]
L["FILTER_TRADED_DESC"] = "Include rolls whose items have been traded."
--[[Translation missing --]]
L["MENU_MASTERLOOT_SEARCH"] = "Search group for a masterlooter"
--[[Translation missing --]]
L["MENU_MASTERLOOT_SETTINGS"] = "Masterloot settings"
--[[Translation missing --]]
L["MENU_MASTERLOOT_START"] = "Become masterlooter"
--[[Translation missing --]]
L["TIP_ADDON_MISSING"] = "Addon missing:"
--[[Translation missing --]]
L["TIP_ADDON_VERSIONS"] = "Addon versions:"
--[[Translation missing --]]
L["TIP_CHAT_TO_TRADE"] = "Please ask the owner first before trading"
--[[Translation missing --]]
L["TIP_COMP_ADDON_USERS"] = "Compatible addon users:"
--[[Translation missing --]]
L["TIP_ENABLE_WHISPER_ASK"] = "Tip: Right-Click to enable asking for loot automatically"
--[[Translation missing --]]
L["TIP_MASTERLOOT"] = "Masterloot is active"
--[[Translation missing --]]
L["TIP_MASTERLOOT_INFO"] = [=[|cffffff78Masterlooter:|r %s
|cffffff78Roll time:|r %ds (+ %ds per item)
|cffffff78Council:|r %s
|cffffff78Bids:|r %s
|cffffff78Votes:|r %s]=]
--[[Translation missing --]]
L["TIP_MASTERLOOT_START"] = "Become or search for a masterlooter"
--[[Translation missing --]]
L["TIP_MASTERLOOT_STOP"] = "Remove masterlooter"
--[[Translation missing --]]
L["TIP_MASTERLOOTING"] = "Masterlooting group (%d):"
--[[Translation missing --]]
L["TIP_MINIMAP_ICON"] = [=[|cffffff78Left-Click:|r Toggle rolls window
|cffffff78Right-Click:|r Show Options]=]
--[[Translation missing --]]
L["TIP_SUPPRESS_CHAT"] = "|cffffff78Tip:|r You can suppress a single chat message by shift-clicking the bid/pass button."
--[[Translation missing --]]
L["TIP_TEST"] = "Show a test roll"
--[[Translation missing --]]
L["TIP_VOTES"] = "Votes from:"

-- Options-Home
--[[Translation missing --]]
L["OPT_ACTIONS_WINDOW"] = "Show actions window"
--[[Translation missing --]]
L["OPT_ACTIONS_WINDOW_DESC"] = "Show the actions window when there are pending actions, e.g. when you won an item and need to trade someone to get it."
--[[Translation missing --]]
L["OPT_ACTIONS_WINDOW_MOVE"] = "Move"
--[[Translation missing --]]
L["OPT_ACTIONS_WINDOW_MOVE_DESC"] = "Move the actions window around."
--[[Translation missing --]]
L["OPT_ACTIVE_GROUPS"] = "Activate by group type"
--[[Translation missing --]]
L["OPT_ACTIVE_GROUPS_DESC"] = [=[Activate only when you are in one of these group types.

|cffffff78Guild Group:|r The members of one guild make up %d%% or more of the group.
|cffffff78Community Group:|r The members of one of your WoW-Communities make up %d%% or more of the group.]=]
--[[Translation missing --]]
L["OPT_ALLOW_DISENCHANT"] = "Allow \"Disenchant\" bids"
--[[Translation missing --]]
L["OPT_ALLOW_DISENCHANT_DESC"] = "Allow others to bid \"Disenchant\" on your own items."
--[[Translation missing --]]
L["OPT_AUTHOR"] = "|cffffd100Author:|r Shrugal (EU-Mal'Ganis)"
--[[Translation missing --]]
L["OPT_AWARD_SELF"] = "Choose winner of your items yourself"
--[[Translation missing --]]
L["OPT_AWARD_SELF_DESC"] = "Choose for yourself who should get your loot, instead of letting the addon randomly pick someone. This is always enabled when you are a masterlooter."
--[[Translation missing --]]
L["OPT_BID_PUBLIC"] = "Bids public"
--[[Translation missing --]]
L["OPT_BID_PUBLIC_DESC"] = "Bids on your rolls are public, so everyone with the addon can see them."
--[[Translation missing --]]
L["OPT_CHILL_MODE"] = "Chill mode"
--[[Translation missing --]]
L["OPT_CHILL_MODE_DESC"] = [=[The intent of chill mode is to take the pressure out of sharing the loot, even if that means that things will take a bit longer. If you enable it the following things will change:

|cffffff781.|r Rolls from you won't start until you actually decided to share them, so you have as much time as you want to choose, and other addon users won't see your items until you did.
|cffffff782.|r Rolls from you have double the normal run-time, or no run-time at all if you enabled to choose winners of your own items yourself (see next option).
|cffffff783.|r Rolls from non-addon users in your group also stay open until you decided if you want them or not.

|cffff0000IMPORTANT:|r Rolls from other addon users without chill mode active will still have a normal timeout. Make sure that everyone in your group enables this option if you want a chill run.]=]
--[[Translation missing --]]
L["OPT_COLLECTIONS"] = "Always show missing collectible items from these collections, regardless of the other rules."
--[[Translation missing --]]
L["OPT_DISENCHANT"] = "Disenchant"
--[[Translation missing --]]
L["OPT_DISENCHANT_DESC"] = "Bid \"Disenchant\" on items you can't use if you have the profession and the item owner has allowed it."
--[[Translation missing --]]
L["OPT_DONT_SHARE"] = "Don't share loot"
--[[Translation missing --]]
L["OPT_DONT_SHARE_DESC"] = "Don't roll on loot from others and don't share your own loot. The addon will deny incoming requests for your loot (if enabled), and you can still be masterlooter and loot council member."
--[[Translation missing --]]
L["OPT_ENABLE"] = "Enable"
--[[Translation missing --]]
L["OPT_ENABLE_DESC"] = "Enable or disable the addon"
--[[Translation missing --]]
L["OPT_ENABLE_MODULE_DESC"] = "Enable or disable this module"
--[[Translation missing --]]
L["OPT_ILVL_THRESHOLD"] = "Item-level threshold"
--[[Translation missing --]]
L["OPT_ILVL_THRESHOLD_DESC"] = [=[Ignore items based on their item-level compared to what you have currently equipped or in your bags for the slot.

|cffffff78Negative:|r An item's level can be at most this much lower than yours.
|cffffff78Positive:|r An item's level must be at least this much higher than yours.]=]
--[[Translation missing --]]
L["OPT_ILVL_THRESHOLD_DOUBLE"] = "Double threshold for ..."
--[[Translation missing --]]
L["OPT_ILVL_THRESHOLD_DOUBLE_DESC"] = "Some items should have double the normal item-level threshold value, because procs etc. can make their value vary by a large amount."
--[[Translation missing --]]
L["OPT_ILVL_THRESHOLD_RINGS"] = "Double threshold for rings"
--[[Translation missing --]]
L["OPT_ILVL_THRESHOLD_RINGS_DESC"] = "Rings should have double the normal threshold because their value may vary by a large amount due to missing primary stats."
--[[Translation missing --]]
L["OPT_ILVL_THRESHOLD_TRINKETS"] = "Double threshold for trinkets"
--[[Translation missing --]]
L["OPT_ILVL_THRESHOLD_TRINKETS_DESC"] = "Trinkets should have double the normal threshold because proc effects can make their value vary by a large amount."
--[[Translation missing --]]
L["OPT_INFO"] = "Information"
--[[Translation missing --]]
L["OPT_INFO_DESC"] = "Some information about this addon."
--[[Translation missing --]]
L["OPT_ITEM_FILTER"] = "Item Filter"
--[[Translation missing --]]
L["OPT_ITEM_FILTER_DESC"] = "Change which items you are asked to roll on."
--[[Translation missing --]]
L["OPT_ITEM_FILTER_ENABLE"] = "Enable additional rules"
--[[Translation missing --]]
L["OPT_ITEM_FILTER_ENABLE_DESC"] = "Items you can't use or send to an alt will always be filtered out. Below you can set additional conditions that items must fulfill in order to be shown to you."
--[[Translation missing --]]
L["OPT_LVL_THRESHOLD"] = "Character-level threshold"
--[[Translation missing --]]
L["OPT_LVL_THRESHOLD_DESC"] = "Ignore items that require your character's level to be more than this much higher than it currently is. Set to -1 to disable this filter."
--[[Translation missing --]]
L["OPT_MINIMAP_ICON"] = "Show minimap icon"
--[[Translation missing --]]
L["OPT_MINIMAP_ICON_DESC"] = "Show or hide the minimap icon."
--[[Translation missing --]]
L["OPT_MISSING_PETS"] = "Missing pets"
--[[Translation missing --]]
L["OPT_MISSING_TRANSMOG"] = "Missing transmog appearances"
--[[Translation missing --]]
L["OPT_MISSING_TRANSMOG_ITEM"] = "Check transmog item"
--[[Translation missing --]]
L["OPT_MISSING_TRANSMOG_ITEM_DESC"] = "Check if you've collected a specific item, and not just its appearance"
--[[Translation missing --]]
L["OPT_ONLY_MASTERLOOT"] = "Only masterloot"
--[[Translation missing --]]
L["OPT_ONLY_MASTERLOOT_DESC"] = "Only activate the addon when using masterloot (e.g. with your guild)"
--[[Translation missing --]]
L["OPT_PAWN"] = "Check \"Pawn\""
--[[Translation missing --]]
L["OPT_PAWN_DESC"] = "Only roll on items that are an upgrade according to the \"Pawn\" addon."
--[[Translation missing --]]
L["OPT_ROLL_FRAMES"] = "Show roll frames"
--[[Translation missing --]]
L["OPT_ROLL_FRAMES_DESC"] = "Show the roll frames when someone loots something you might be interested in, so you can roll for it."
--[[Translation missing --]]
L["OPT_ROLLS_WINDOW"] = "Show rolls window"
--[[Translation missing --]]
L["OPT_ROLLS_WINDOW_DESC"] = "Always show the rolls window (with all rolls on it) when someone loots something you might be interested in. This is always enabled when you are a masterlooter."
--[[Translation missing --]]
L["OPT_SPECS"] = "Specializations"
--[[Translation missing --]]
L["OPT_SPECS_DESC"] = "Only suggest loot for these class specializations."
--[[Translation missing --]]
L["OPT_TRANSLATION"] = "|cffffd100Translation:|r Shrugal (EU-Mal'Ganis)"
--[[Translation missing --]]
L["OPT_TRANSMOG"] = "Check transmog appearance"
--[[Translation missing --]]
L["OPT_TRANSMOG_DESC"] = "Roll on items that you don't have the appearance of yet."
--[[Translation missing --]]
L["OPT_UI"] = "User interface"
--[[Translation missing --]]
L["OPT_UI_DESC"] = "Customize %s's look and feel to your liking."
--[[Translation missing --]]
L["OPT_VERSION"] = "|cffffd100Version:|r %s"

-- Options-Masterloot
--[[Translation missing --]]
L["OPT_MASTERLOOT"] = "Masterloot"
--[[Translation missing --]]
L["OPT_MASTERLOOT_APPROVAL"] = "Approval"
--[[Translation missing --]]
L["OPT_MASTERLOOT_APPROVAL_ACCEPT"] = "Automatically accept masterlooter"
--[[Translation missing --]]
L["OPT_MASTERLOOT_APPROVAL_ACCEPT_DESC"] = "Automatically accept masterlooter requests from these players."
--[[Translation missing --]]
L["OPT_MASTERLOOT_APPROVAL_ALLOW"] = "Allow becoming masterlooter"
--[[Translation missing --]]
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL"] = "Allow everybody"
--[[Translation missing --]]
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL_DESC"] = "|cffff0000WARNING:|r This will allow everybody to request becoming your masterlooter and potentially scam you into giving away your loot! Only activate it if you know what you are doing."
--[[Translation missing --]]
L["OPT_MASTERLOOT_APPROVAL_ALLOW_DESC"] = [=[Choose who can request to become your masterlooter. You will still get a popup message asking you to confirm it, so you can decline a masterlooter request when it happens.

|cffffff78Guild Group:|r Someone from a guild whose members make up %d%% or more of the group.]=]
--[[Translation missing --]]
L["OPT_MASTERLOOT_APPROVAL_DESC"] = "Here you can define who can become your masterlooter."
--[[Translation missing --]]
L["OPT_MASTERLOOT_APPROVAL_WHITELIST"] = "Masterlooter Whitelist"
--[[Translation missing --]]
L["OPT_MASTERLOOT_APPROVAL_WHITELIST_DESC"] = "You can also name specific players who should be able to become your masterlooter. Separate multiple names with spaces or commas."
--[[Translation missing --]]
L["OPT_MASTERLOOT_AWARD"] = "Awarding"
--[[Translation missing --]]
L["OPT_MASTERLOOT_BIDS_AND_VOTES"] = "Bids and votes"
--[[Translation missing --]]
L["OPT_MASTERLOOT_CLUB"] = "Guild/Community"
--[[Translation missing --]]
L["OPT_MASTERLOOT_CLUB_DESC"] = "Select the Guild/Community to import/export settings from."
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL"] = "Council"
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK"] = "Council guild/community rank"
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK_DESC"] = "Add members of this guild/community rank to you council, in addition to the options above."
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_DESC"] = "Players on your loot council can vote on who should get the loot."
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_ROLES"] = "Council roles"
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_ROLES_DESC"] = "Which players should automatically become part of your council."
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_WHITELIST"] = "Council whitelist"
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_WHITELIST_DESC"] = "You can also name specific players to be on your council. Separate multiple names with spaces or commas."
--[[Translation missing --]]
L["OPT_MASTERLOOT_DESC"] = "When you (or someone else) becomes masterlooter, all loot will be distributed by that person. You will get a notice about who's items you won or who won your items, so you can trade them to the right person."
--[[Translation missing --]]
L["OPT_MASTERLOOT_EXPORT_DONE"] = "Masterloot settings successfully exported to <%s>."
--[[Translation missing --]]
L["OPT_MASTERLOOT_EXPORT_GUILD_ONLY"] = "Please replace the community's current info with this text, because automatically replacing it is only possible for guilds."
--[[Translation missing --]]
L["OPT_MASTERLOOT_EXPORT_NO_PRIV"] = "Please ask a leader to replace the guild's info with this text, because you don't have the right to do so yourself."
--[[Translation missing --]]
L["OPT_MASTERLOOT_EXPORT_WINDOW"] = "Export masterloot settings"
--[[Translation missing --]]
L["OPT_MASTERLOOT_LOAD"] = "Load"
--[[Translation missing --]]
L["OPT_MASTERLOOT_LOAD_DESC"] = "Load masterloot settings from your guild/community's description."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES"] = "Rules"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_ALLOW_DISENCHANT_DESC"] = "Allow group members to roll \"Disenchant\" on items."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP"] = "Allow keeping loot"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP_DESC"] = "Allow item owners to keep their loot, and only give it away if they choose not to keep it."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_AUTO_AWARD"] = "Award loot automatically"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_DESC"] = "Let the addon decide who should get the loot, based on factors like council votes, bids and equipped ilvl."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT"] = "Auto award time (base)"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_DESC"] = "The base time to wait before auto-awarding loot, so you have time to collect votes and maybe decide for yourself."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM"] = "Auto award time (per item)"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM_DESC"] = "Will be added to the base auto award time for each item that dropped."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_BID_PUBLIC"] = "Bids public"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_BID_PUBLIC_DESC"] = "You can make bids public, so everybody can see who bid on what."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_DESC"] = "These rules apply to everybody when you are the masterlooter"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_DISENCHANTER"] = "Disenchanter"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_DISENCHANTER_DESC"] = "Give loot nobody wants to these players for disenchanting. Separate multiple names with spaces or commas."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS"] = "Custom 'Greed' answers"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS_DESC"] = [=[Specify up to 9 custom answers when rolling 'Greed', with decreasing priority. You can also insert '%s' itself to lower its priority below the prior answers. Separate multiple entries with Commas.

They can be accessed by right-clicking on the 'Greed' button when rolling on loot.]=]
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS"] = "Custom 'Need' answers"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS_DESC"] = [=[Specify up to 9 custom answers when rolling 'Need', with decreasing priority. You can also insert '%s' itself to lower its priority below the prior answers. Separate multiple entries with Commas.

They can be accessed by right-clicking on the 'Need' button when rolling on loot.]=]
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_ALL"] = "Start rolls for everyone"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_ALL_DESC"] = "Start rolls for all suitable items that group members without the addon loot."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_LIMIT"] = "Concurrent rolls limit"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_LIMIT_DESC"] = [=[Maximum number of rolls to run simultaneously. Subsequent rolls will automatically start after the previous ones have ended, even if you chose to start rolls manually.

Disable by setting it to 0.]=]
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_MANUALLY"] = "Start rolls manually"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_MANUALLY_DESC"] = "Don't start new rolls automatically, but manually through the main rolls window."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_WHISPER"] = "Start rolls by whisper"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_WHISPER_DESC"] = "Allow group members without the addon to whisper you an item-link and the word \"%s\" to make you start a roll for their items."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE"] = "Roll time (base)"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE_DESC"] = "The base running time for rolls, regardless of how many items have dropped."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM"] = "Roll time (per item)"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM_DESC"] = "Will be added to the base roll running time for each item that dropped."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC"] = "Vote public"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC_DESC"] = "You can make council votes public, so everybody can see who has how many votes."
--[[Translation missing --]]
L["OPT_MASTERLOOT_SAVE"] = "Save"
--[[Translation missing --]]
L["OPT_MASTERLOOT_SAVE_DESC"] = "Save your current masterloot settings to your guild/community's description."

-- Options-Messages
--[[Translation missing --]]
L["OPT_CUSTOM_MESSAGES"] = "Custom messages"
--[[Translation missing --]]
L["OPT_CUSTOM_MESSAGES_DEFAULT"] = "Default language (%s)"
--[[Translation missing --]]
L["OPT_CUSTOM_MESSAGES_DEFAULT_DESC"] = "These messages will be used when the recipient speaks %s or something other than your realm's default language (%s)."
--[[Translation missing --]]
L["OPT_CUSTOM_MESSAGES_DESC"] = "You can reorder placeholders (|cffffff78%s|r, |cffffff78%d|r) by adding their position and a $ sign in the middle, so e.g. |cffffff78%2$s|r instead of |cffffff78%s|r for the 2nd placeholder. See tooltips for details."
--[[Translation missing --]]
L["OPT_CUSTOM_MESSAGES_LOCALIZED"] = "Realm language (%s)"
--[[Translation missing --]]
L["OPT_CUSTOM_MESSAGES_LOCALIZED_DESC"] = "These messages will be used when the recipient speaks your realm's default language (%s)."
--[[Translation missing --]]
L["OPT_ECHO"] = "Chat information"
--[[Translation missing --]]
L["OPT_ECHO_DEBUG"] = "Debug"
--[[Translation missing --]]
L["OPT_ECHO_DESC"] = [=[How much information do you want to see from the addon in chat?

|cffffff78None:|r No info in chat.
|cffffff78Error:|r Only error messages.
|cffffff78Info:|r Errors and useful info that you probably want to act on.
|cffffff78Verbose:|r Get notices about pretty much anything the addon does.
|cffffff78Debug:|r Same as verbose, plus additional debug info.]=]
--[[Translation missing --]]
L["OPT_ECHO_ERROR"] = "Error"
--[[Translation missing --]]
L["OPT_ECHO_INFO"] = "Info"
--[[Translation missing --]]
L["OPT_ECHO_NONE"] = "None"
--[[Translation missing --]]
L["OPT_ECHO_VERBOSE"] = "Verbose"
--[[Translation missing --]]
L["OPT_GROUPCHAT"] = "Group Chat"
--[[Translation missing --]]
L["OPT_GROUPCHAT_ANNOUNCE"] = "Announce rolls and winners"
--[[Translation missing --]]
L["OPT_GROUPCHAT_ANNOUNCE_DESC"] = "Announce your rolls and winners of your rolls in group chat."
--[[Translation missing --]]
L["OPT_GROUPCHAT_CONCISE"] = "Concise announcements if possible"
--[[Translation missing --]]
L["OPT_GROUPCHAT_CONCISE_DESC"] = [=[Use more concise announcements when bosses only drop one item at a time (e.g. in 5-man dungeons).

The addon will post item links in chat, and group members can just answer something like "%s", "%s" or "+" to roll on them.]=]
--[[Translation missing --]]
L["OPT_GROUPCHAT_DESC"] = "Change whether or not the addon will post things to the group chat."
--[[Translation missing --]]
L["OPT_GROUPCHAT_GROUP_TYPE"] = "Announce by group type"
--[[Translation missing --]]
L["OPT_GROUPCHAT_GROUP_TYPE_DESC"] = [=[Post to group chat only if you are in one of these group types.

|cffffff78Guild Group:|r The members of one guild make up %d%% or more of the group.
|cffffff78Community Group:|r The members of one of your WoW-Communities make up %d%% or more of the group.]=]
--[[Translation missing --]]
L["OPT_GROUPCHAT_ROLL"] = "Roll on loot in chat"
--[[Translation missing --]]
L["OPT_GROUPCHAT_ROLL_DESC"] = "Roll on loot you want (/roll) if others post links in group chat."
--[[Translation missing --]]
L["OPT_MESSAGES"] = "Messages"
--[[Translation missing --]]
L["OPT_MSG_BID"] = "Ask for loot: Variant %d"
--[[Translation missing --]]
L["OPT_MSG_BID_DESC"] = "1: Item link"
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS"] = "Answer: Send me the item link"
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS_DESC"] = ""
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_BID"] = "Answer: Bid registered"
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_BID_DESC"] = "1: Item link"
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_NO_OTHER"] = "Answer: I gave it to someone else"
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_NO_OTHER_DESC"] = ""
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_NO_SELF"] = "Answer: I need it myself"
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_NO_SELF_DESC"] = ""
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Answer: It's not tradable"
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE_DESC"] = ""
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_STARTED"] = "Answer: I started a roll for you"
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_STARTED_DESC"] = "After someone without the addon whispered us to start a roll for them while being masterlooter."
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_YES"] = "Answer: You can have it"
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_YES_DESC"] = ""
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "Answer: You can have it (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT_DESC"] = "1: Item owner"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT"] = "Announcing a disenchanter"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_DESC"] = [=[1: Disenchanter
2: Item link]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT"] = "Announcing a disenchanter (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_DESC"] = [=[1: Disenchanter
2: Item link
3: Item owner
4: him/her]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "Announcing an item owner disenchants his/her item (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN_DESC"] = [=[1: Item owner
2: Item link]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER"] = "Whispering the disenchanter"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_DESC"] = "1: Item link"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "Whispering the disenchanter (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_DESC"] = [=[1: Item link
2: Item owner
3: him/her]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "Whispering an item owner to disenchant his/her item (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Item link"
--[[Translation missing --]]
L["OPT_MSG_ROLL_START"] = "Announcing a new roll"
--[[Translation missing --]]
L["OPT_MSG_ROLL_START_CONCISE"] = "Announcing a new roll (concise)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_START_CONCISE_DESC"] = "1: Item link"
--[[Translation missing --]]
L["OPT_MSG_ROLL_START_DESC"] = [=[1: Item link
2: Roll number]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_START_MASTERLOOT"] = "Announcing a new roll (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_START_MASTERLOOT_DESC"] = [=[1: Item link
2: Item owner
3: Roll number]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER"] = "Announcing a roll winner"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_CONCISE"] = "Announcing a roll winner (concise)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_CONCISE_DESC"] = "1: Winner"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_DESC"] = [=[1: Winner
2: Item link]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT"] = "Announcing a roll winner (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_DESC"] = [=[1: Winner
2: Item link
3: Item owner
4: him/her]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "Announcing an item owner keeps his/her item (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN_DESC"] = [=[1: Item owner
2: Item link]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_WHISPER"] = "Whispering the roll winner"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Whispering the roll winner (concise)"
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE_DESC"] = ""
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_WHISPER_DESC"] = "1: Item link"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "Whispering the roll winner (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_DESC"] = [=[1: Item link
2: Item owner
3: him/her]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "Whispering an item owner to keep his/her item (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Item link"
--[[Translation missing --]]
L["OPT_SHOULD_CHAT"] = "Enable/Disable"
--[[Translation missing --]]
L["OPT_SHOULD_CHAT_DESC"] = "Define when the addon will post to party/raid chat and whisper other players."
--[[Translation missing --]]
L["OPT_WHISPER"] = "Whisper Chat"
--[[Translation missing --]]
L["OPT_WHISPER_ANSWER"] = "Answer requests"
--[[Translation missing --]]
L["OPT_WHISPER_ANSWER_DESC"] = "Let the addon answer whispers from group members about items you looted."
--[[Translation missing --]]
L["OPT_WHISPER_ASK"] = "Ask for loot"
--[[Translation missing --]]
L["OPT_WHISPER_ASK_DESC"] = "Whisper others if they got loot you want."
--[[Translation missing --]]
L["OPT_WHISPER_ASK_VARIANTS"] = "Enable ask variants"
--[[Translation missing --]]
L["OPT_WHISPER_ASK_VARIANTS_DESC"] = "Use different lines (see below) when asking for loot, to make it less repetitive."
--[[Translation missing --]]
L["OPT_WHISPER_DESC"] = "Change whether or not the addon will whisper other players and/or answer incoming messages."
--[[Translation missing --]]
L["OPT_WHISPER_GROUP"] = "Whisper by group type"
--[[Translation missing --]]
L["OPT_WHISPER_GROUP_DESC"] = "Whisper others if they got loot you want, depending on the type of group you are currently in."
--[[Translation missing --]]
L["OPT_WHISPER_GROUP_TYPE"] = "Ask by group type"
--[[Translation missing --]]
L["OPT_WHISPER_GROUP_TYPE_DESC"] = [=[Ask for loot only if you are in one of these group types.

|cffffff78Guild Group:|r The members of one guild make up %d%% or more of the group.
|cffffff78Community Group:|r The members of one of your WoW-Communities make up %d%% or more of the group.]=]
--[[Translation missing --]]
L["OPT_WHISPER_SUPPRESS"] = "Suppress requests"
--[[Translation missing --]]
L["OPT_WHISPER_SUPPRESS_DESC"] = "Suppress incoming whisper messages from eligible players when giving away your loot."
--[[Translation missing --]]
L["OPT_WHISPER_TARGET"] = "Ask by target"
--[[Translation missing --]]
L["OPT_WHISPER_TARGET_DESC"] = "Ask for loot depending on whether the target is in your guild, in one of your WoW-Communities or on your friend list."

-- Plugins-EPGP
--[[Translation missing --]]
L["EPGP"] = "EPGP"
--[[Translation missing --]]
L["EPGP_CREDIT_GP"] = "Crediting %d GP to <%s> for %s."
--[[Translation missing --]]
L["EPGP_EP"] = "EP"
--[[Translation missing --]]
L["EPGP_ERROR_CREDIT_GP_FAILED"] = "Crediting %d GP to <%s> for %s failed!"
--[[Translation missing --]]
L["EPGP_GP"] = "GP"
--[[Translation missing --]]
L["EPGP_OPT_AWARD_BEFORE"] = "Awarding precedence"
--[[Translation missing --]]
L["EPGP_OPT_AWARD_BEFORE_DESC"] = "Pick before which default awarding method the EPGP PR value should be concidered when determining a winner."
--[[Translation missing --]]
L["EPGP_OPT_BID_WEIGHTS"] = "Bid GP weights"
--[[Translation missing --]]
L["EPGP_OPT_BID_WEIGHTS_DESC"] = "Assign different weights to roll bids. The GPs an item winner gets are multiplied by this value, and it can also be 0 or negative."
--[[Translation missing --]]
L["EPGP_OPT_DESC"] = "Use EPGP for your loot distribution when masterloot mode is active. This includes showing and sorting by the player's PR value, as well as crediting GP when loot is awarded."
--[[Translation missing --]]
L["EPGP_OPT_ONLY_GUILD_RAID"] = "Only in guild raids"
--[[Translation missing --]]
L["EPGP_OPT_ONLY_GUILD_RAID_DESC"] = "Only activate when in a raid and at least %d%% of the group are from your guild."
--[[Translation missing --]]
L["EPGP_OPT_WARNING_NO_ADDON"] = "|cffff0000WARNING:|r You need the \"EPGP Next\" addon installed and activated for this module to work."
--[[Translation missing --]]
L["EPGP_OPT_WARNING_NO_OFFICER"] = "|cffff0000WARNING:|r You don't have the permission to edit officer notes in your guild, so EPGP won't be able to credit GP for loot when you are the masterlooter."
--[[Translation missing --]]
L["EPGP_PR"] = "PR"

-- Roll
--[[Translation missing --]]
L["BID_CHAT"] = "Asking %s for %s -> %s."
--[[Translation missing --]]
L["BID_MAX_WHISPERS"] = "Won't ask %s for %s, because %d players in your group already asked -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT"] = "Can't ask or announce roll for %s."
--[[Translation missing --]]
L["BID_NO_CHAT_ADDONS"] = "Won't announce roll for %s because everyone uses loot addons."
--[[Translation missing --]]
L["BID_NO_CHAT_ANNOUNCE"] = "Won't announce roll for %s because it's disabled."
--[[Translation missing --]]
L["BID_NO_CHAT_ASK"] = "Won't ask %s for %s because it's disabled -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_CLUB"] = "Won't ask %s for %s because he/she is in one of your communitys -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_DND"] = "Won't ask %s for %s because he/she has DND enabled -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_FRIEND"] = "Won't ask %s for %s because he/she is your friend -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_GRP"] = "Won't announce roll for %s because it's a '%s' group."
--[[Translation missing --]]
L["BID_NO_CHAT_GRP_ASK"] = "Won't ask %s for %s because it's a '%s' group. -> %s"
--[[Translation missing --]]
L["BID_NO_CHAT_GUILD"] = "Won't ask %s for %s because he/she is in your guild -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_OTHER"] = "Won't ask %s for %s because he/she is a random -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_SELF"] = "Won't ask %s for %s because it's yourself -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_TRACKING"] = "Won't ask %s for %s because he/she also uses a loot addon -> %s."
--[[Translation missing --]]
L["BID_PASS"] = "Passing on %s from %s."
--[[Translation missing --]]
L["BID_START"] = "Bidding with %q for %s from %s."
--[[Translation missing --]]
L["MASTERLOOTER_OTHER"] = "%s is now your masterlooter."
--[[Translation missing --]]
L["MASTERLOOTER_REJECT"] = "%s wants to become your masterlooter, but needs to be allowed in the \"Masterloot\" options."
--[[Translation missing --]]
L["MASTERLOOTER_SELF"] = "You are now the masterlooter."
--[[Translation missing --]]
L["ROLL_AWARD_BIDS"] = "Bids"
--[[Translation missing --]]
L["ROLL_AWARD_RANDOM"] = "Random"
--[[Translation missing --]]
L["ROLL_AWARD_ROLLS"] = "Roll results"
--[[Translation missing --]]
L["ROLL_AWARD_VOTES"] = "Votes"
--[[Translation missing --]]
L["ROLL_AWARDED"] = "Awarded"
--[[Translation missing --]]
L["ROLL_AWARDING"] = "Awading"
--[[Translation missing --]]
L["ROLL_CANCEL"] = "Canceling roll for %s from %s."
--[[Translation missing --]]
L["ROLL_END"] = "Ending roll for %s from %s."
--[[Translation missing --]]
L["ROLL_IGNORING_BID"] = "Ignoring bid from %s for %s, because you chatted before -> Bid: %s or %s."
--[[Translation missing --]]
L["ROLL_LIST_EMPTY"] = "Active rolls will be shown here"
--[[Translation missing --]]
L["ROLL_START"] = "Starting roll for %s from %s."
--[[Translation missing --]]
L["ROLL_STATUS_0"] = "Pending"
--[[Translation missing --]]
L["ROLL_STATUS_1"] = "Running"
--[[Translation missing --]]
L["ROLL_STATUS_-1"] = "Canceled"
--[[Translation missing --]]
L["ROLL_STATUS_2"] = "Done"
--[[Translation missing --]]
L["ROLL_TRADED"] = "Traded"
--[[Translation missing --]]
L["ROLL_WHISPER_SUPPRESSED"] = "Bid from %s for %s -> %s / %s."
--[[Translation missing --]]
L["ROLL_WINNER_MASTERLOOT"] = "%s has won %s from %s."
--[[Translation missing --]]
L["ROLL_WINNER_OTHER"] = "%s has won %s from you -> %s."
--[[Translation missing --]]
L["ROLL_WINNER_OWN"] = "You have won your own %s."
--[[Translation missing --]]
L["ROLL_WINNER_SELF"] = "You have won %s from %s -> %s."
--[[Translation missing --]]
L["TRADE_CANCEL"] = "Canceling trade with %s."
--[[Translation missing --]]
L["TRADE_START"] = "Starting trade with %s."

-- Globals
--[[Translation missing --]]
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_ADDON"] = "The owner of this item doesn't use the PersoLootRoll addon."
--[[Translation missing --]]
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_DISENCHANT"] = "The owner of this item has not allowed \"Disenchant\" bids."
--[[Translation missing --]]
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NOT_ENCHANTER"] = "Your character doesn't have the \"Enchanting\" profession."


-- Other
L["ID"] = ID
L["ITEMS"] = ITEMS
L["LEVEL"] = LEVEL
L["STATUS"] = STATUS
L["TARGET"] = TARGET
L["ROLL_BID_1"] = NEED
L["ROLL_BID_2"] = GREED
L["ROLL_BID_3"] = ROLL_DISENCHANT
L["ROLL_BID_4"] = PASS
L[""] = ""
