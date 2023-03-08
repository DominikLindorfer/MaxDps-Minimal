local E = select(2, ...):unpack()
local P, CM = E.Party, E.Comm

local pairs, next, concat, tonumber, strmatch, strsplit, format, gsub, floor, abs = pairs, next, table.concat, tonumber, string.match, string.split, string.format, string.gsub, math.floor, math.abs
local GetTime, GetSpellCooldown, GetSpellCharges = GetTime, GetSpellCooldown, GetSpellCharges
local LibDeflate = LibStub("LibDeflate")
local CooldownSyncFrame = CreateFrame("Frame")
local COOLDOWN_SYNC_INTERVAL = 2
local MSG_DESYNC = "DESYNC"
local MSG_INFO = "INF"
local MSG_INFO_REQUEST = "REQ"
local MSG_INFO_UPDATE = "UPD"
local MSG_STRIVE_PVP = "STRIVE"
local MSG_COOLDOWN_SYNC = "CD"
local NULL = ""

CM.syncedGroupMembers = {}
CM.cooldownSyncIDs = {}
CM.serializedSyncData = NULL

function CM:SendComm(...)
	local message = strjoin(",", ...)
	if strlen(message) > 255 then
		error("Message length exceeds 255 bytes")
	end
	if IsInRaid() then
		C_ChatInfo.SendAddonMessage(self.AddonPrefix, message, (not IsInRaid(LE_PARTY_CATEGORY_HOME) and IsInRaid(LE_PARTY_CATEGORY_INSTANCE)) and "INSTANCE_CHAT" or "RAID")
	elseif IsInGroup() then
		C_ChatInfo.SendAddonMessage(self.AddonPrefix, message, (not IsInGroup(LE_PARTY_CATEGORY_HOME) and IsInGroup(LE_PARTY_CATEGORY_INSTANCE)) and "INSTANCE_CHAT" or "PARTY")
	end
end

function CM:RequestSync()
	self:SendComm(MSG_INFO_REQUEST, E.userGUID, self.serializedSyncData)
end

function CM:SendUserSyncData(sender)
	if self.serializedSyncData == NULL then
		self:InspectUser()
	end
	self:SendComm(sender or MSG_INFO_UPDATE, E.userGUID, self.serializedSyncData)
end

function CM:DesyncFromGroup()
	wipe(self.syncedGroupMembers)
	CooldownSyncFrame:Hide()
	self:SendComm(MSG_DESYNC, E.userGUID, 1)
end

function CM:IsVersionIncompatible(serializationVersion)
	return serializationVersion ~= self.SERIALIZATION_VERSION
end

local aceUserNameFix = CM.isAceComm and E.userName or gsub(E.userNameWithRealm, " ", "")

local CLASS_TREE_IDS = {
	["WARRIOR"] = 850,
	["DEATHKNIGHT"] = 750,
	["PALADIN"] = 790,
	["MONK"] = 781,
	["PRIEST"] = 795,
	["SHAMAN"] = 786,
	["DRUID"] = 793,
	["ROGUE"] = 852,
	["MAGE"] = 658,
	["WARLOCK"] = 720,
	["HUNTER"] = 774,
	["DEMONHUNTER"] = 854,
	["EVOKER"] = 701,
}

local treeNodeIndices = {
	[850] = { 772,845,871,1160,1161,1719,3411,5246,6343,6544,6572,7384,12294,12323,12950,12975,18499,23881,23920,29725,29725,29838,46968,64382,81099,85288,97462,103827,107570,107574,118038,152278,152278,152278,167105,184364,184367,184783,190456,202095,202163,202168,202316,202560,202603,202743,203177,203201,206315,208154,215568,215571,227847,228920,228920,236279,248621,260643,260708,262150,262161,262231,275334,275336,275338,275339,280001,280392,280721,281001,281001,315720,316402,316405,316440,316733,334779,335077,346002,376079,382258,382260,382310,382461,382549,382764,382764,382767,382895,382896,382900,382939,382940,382940,382946,382948,382953,382953,382954,382956,383082,383103,383103,383115,383115,383115,383154,383219,383287,383292,383293,383295,383297,383317,383338,383341,383430,383442,383459,383468,383486,383605,383703,383762,383848,383852,383854,383877,383885,383916,383922,383959,384036,384041,384042,384063,384067,384072,384090,384100,384110,384124,384124,384277,384318,384361,384361,384404,384404,384404,384969,385008,385059,385512,385571,385573,385703,385704,385840,385843,385888,385952,386011,386027,386030,386034,386071,386164,386164,386196,386208,386285,386328,386357,386394,386477,386628,386630,386634,388004,388049,388807,388903,388933,389306,389308,389603,390123,390135,390138,390140,390354,390563,390563,390642,390674,390675,390713,390725,391270,391271,391572,391683,391997,392536,392777,392790,392792,392931,392936,392966,393950,393965,393967,394062,394307,394311,394312,394329,394855,396719,396719,396749,397103,400205,400314,400803,401150, },
	[852] = { 1776,1966,2094,2823,5277,5761,5938,6770,13750,13877,14062,14161,14190,14983,31224,31230,35551,36554,36554,36554,51667,51690,57934,58423,61329,79008,79096,79134,91023,108208,108209,108216,121411,121471,131511,137619,152152,185313,185314,193531,193537,193539,193546,193640,195457,196861,196922,196924,196937,196938,196976,200733,200758,200806,231691,231719,235484,245687,255544,255989,256165,256170,256188,257505,271877,272026,277925,277953,279876,280716,280719,315508,319032,319066,319175,319949,319951,328085,343142,343160,344363,354897,360194,378427,378436,378803,378807,378813,378996,379005,381542,381543,381619,381620,381621,381622,381623,381624,381626,381627,381629,381630,381631,381632,381634,381637,381640,381652,381664,381669,381673,381797,381798,381799,381800,381801,381802,381822,381828,381839,381845,381846,381877,381878,381885,381894,381982,381985,381988,381989,381990,382015,382017,382238,382245,382503,382504,382505,382506,382507,382508,382509,382511,382512,382513,382514,382515,382517,382518,382523,382524,382525,382528,382742,382746,383281,384631,385408,385408,385408,385424,385478,385616,385627,385722,386823,392384,393970,393972,394023,394309,394320,394321,394332,394983,395422,400804, },
	[854] = { 179057,183782,196555,196718,198013,198793,202137,202138,203550,203555,204021,204596,204909,205411,206416,206476,206477,206478,207347,207387,207407,207548,207666,207684,207697,207739,209258,209281,211881,212084,213010,213410,217832,218612,227174,232893,235893,247454,258860,258876,258881,258887,258925,263642,263648,268175,278326,320313,320331,320341,320361,320374,320386,320387,320412,320413,320415,320416,320418,320421,320635,320654,320770,321028,326853,328725,336639,342817,343014,343017,343206,343207,343311,347461,370965,388106,388107,388108,388109,388110,388111,388112,388113,388114,388116,388118,389220,389687,389688,389693,389694,389695,389696,389697,389705,389708,389711,389715,389718,389720,389721,389724,389729,389732,389763,389781,389783,389799,389811,389819,389824,389846,389849,389958,389976,389977,389978,389985,389997,390142,390152,390154,390158,390163,390163,390213,390808,391165,391178,391189,391275,391397,391409,391429,391429,393029,393822,393827,395446, },
	[781] = { 101545,101643,107428,113656,115008,115069,115078,115098,115151,115173,115175,115176,115181,115203,115310,115313,115315,115396,115399,116095,116645,116645,116680,116705,116841,116844,116847,116847,116849,119582,121253,121817,122278,122281,122281,122470,122783,123904,123986,124081,124502,124682,132578,137639,152173,152175,157411,191837,195243,195300,196607,196725,196730,196736,196737,196740,197895,197900,197908,197915,198898,210802,218164,218164,220357,231602,264348,274586,274909,274963,280197,280515,281231,322113,322118,322120,322507,322510,322740,322960,323999,324312,325093,325153,325177,325197,325201,328669,328670,337209,343655,343743,344359,383695,383697,383698,383700,383707,383714,383785,383994,399491,386276,386276,386937,400089,386941,386941,400053,386949,386965,387035,387046,387184,387219,387230,387256,387276,387625,387638,387765,387991,388020,388023,388031,388038,388047,388193,388193,388212,388218,388477,388491,388505,388509,388511,388517,388548,388551,388564,388593,388604,388615,388661,388661,388664,388674,388681,388682,388686,388701,388740,388779,388809,388811,388812,388813,388814,388846,388847,388848,388849,388854,388856,388874,389574,389575,389577,389578,389579,389942,391330,391370,391383,391412,392900,392910,392958,392970,392979,392982,392983,392985,392986,392989,392991,392993,392994,393098,393357,393400,393460,393516,394093,394110,394123,394923,396166,397251,400629,399226, },
	[750] = { 42650,45524,46584,46585,47528,47568,47568,48263,48707,48743,48792,49020,49028,49143,49184,49206,49530,49998,50842,51052,51128,51271,55090,55233,57330,59057,63560,77575,81136,81333,85948,108199,111673,114556,115989,152279,152280,194662,194679,194844,194878,194912,194913,194916,194917,195182,195292,195679,196770,205723,205727,206930,206931,206940,206967,206970,206974,207057,207061,207104,207126,207142,207167,207200,207230,207264,207269,207272,207289,207311,207317,212552,219786,219809,221536,221562,221699,253593,273946,273952,273953,274156,275699,276023,276079,276837,277234,279302,281208,281238,305392,316803,316838,316867,316916,316941,317133,317198,317214,317610,319230,327574,343294,356367,373923,373926,373930,374030,374049,374111,374261,374265,374277,374383,374504,374574,374598,374715,374717,374737,374747,376251,376905,376938,377047,377056,377073,377076,377083,377092,377098,377190,377226,377351,377376,377440,377514,377537,377580,377585,377587,377590,377592,377629,377637,377640,377655,377668,378848,383269,389679,389682,390161,390166,390175,390196,390236,390259,390268,390270,390275,390279,390283,391386,391395,391398,391458,391477,391517,391546,391566,391571,392566,392950, },
	[774] = { 1513,2643,5116,19434,19574,19577,19801,34026,34026,34477,53351,53351,56315,109215,109248,115939,120360,120679,131894,147362,147362,155228,162488,185789,186270,186289,186387,187698,187707,187708,190852,190925,191384,193455,193530,193532,193533,194595,199483,199528,199530,199532,199921,201430,203415,204089,212431,212436,213691,217200,231548,236776,257044,257620,257621,257944,259387,259489,259495,260228,260240,260241,260243,260248,260285,260309,260331,260367,260393,260402,260404,263186,264332,264735,265895,266921,267116,268501,269737,269751,270581,271014,271788,273887,288613,294029,320976,321014,321018,321287,321290,321293,321460,321468,321530,342049,343242,343244,343247,343248,359844,360952,360966,375891,378002,378004,378007,378010,378014,378205,378207,378209,378210,378244,378442,378739,378740,378743,378745,378750,378765,378766,378767,378769,378771,378880,378888,378905,378907,378910,378913,378916,378934,378937,378940,378948,378950,378951,378953,378955,378961,378962,384790,384791,384799,385539,385695,385709,385718,385737,385739,385810,386870,386878,388039,388042,388045,388056,388057,389019,389449,389654,389660,389865,389866,389880,389882,390231,391559,392053,392060,392060,393344,393933,400472, },
	[701] = { 351338,355936,357170,357211,358385,359073,359793,359816,360806,360995,362874,363534,363916,364343,365585,365933,365937,366155,367226,368412,368432,368838,368847,369089,369297,369375,369459,369846,369908,369908,369909,369913,369939,369990,370062,370452,370455,370537,370553,370665,370781,370783,370819,370821,370837,370839,370845,370867,370886,370888,370897,370960,370962,371016,371032,371034,371038,371257,371270,371426,371806,371832,372048,372233,372469,372527,373270,373834,373861,374227,374251,374346,374348,374968,375087,375406,375443,375507,375510,375517,375520,375528,375542,375544,375554,375556,375561,375574,375577,375618,375721,375722,375722,375725,375757,375777,375783,375783,375796,375797,375801,376138,376150,376164,376166,376179,376204,376207,376210,376236,376237,376239,376240,376872,376888,376930,377082,377086,377099,377100,378196,381921,381922,385696,386272,386283,386336,386342,386348,386405,387341,387761,387787, },
	[658] = { 66,475,759,1463,2120,2948,5143,11366,11426,12051,12472,12982,30449,30455,31589,31661,31687,44425,44457,44614,45438,55342,56377,79684,84714,86949,108839,108853,110959,112965,113724,114923,116011,117216,153561,153595,153626,155148,155149,157642,157980,157981,157997,190319,190356,190447,199786,203275,205020,205021,205022,205023,205024,205025,205026,205027,205028,205029,205030,205036,205037,212653,231564,235219,235224,235313,235450,235711,235870,236457,236628,236662,257537,257541,264354,269644,269650,270233,278309,281482,321387,321420,321507,321526,321739,321745,321752,342231,342245,342249,342344,343183,343222,343230,365350,376103,378198,378406,378433,378448,378749,378756,378901,378919,378947,379049,379993,380154,381244,381706,382103,382110,382144,382268,382270,382289,382292,382293,382297,382424,382440,382481,382490,382493,382569,382800,382820,382826,383092,383121,383243,383391,383476,383489,383499,383604,383634,383659,383661,383665,383669,383676,383782,383810,383860,383886,383967,383980,384033,384060,384174,384187,384276,384374,384452,384581,384612,384651,384683,384858,384861,385167,386539,386763,386828,387044,387807,389627,389713,390218,391102, },
	[720] = { 603,710,1122,5484,5740,6353,6789,17877,17962,27243,30283,32388,48181,63106,80240,104316,108415,108416,108503,108503,108558,111400,111771,111898,116858,152108,171975,196102,196103,196226,196277,196406,196408,196412,196447,198590,199471,201424,205145,205148,205179,205180,205184,215941,219272,231793,264000,264057,264078,264119,264130,264178,264874,265187,266086,266134,267170,267171,267211,267214,267216,267217,268358,270545,278350,288843,316099,317031,317138,324536,328774,333889,334319,334585,384069,385881,385899,386105,386110,386113,386124,386174,386185,386194,386200,386256,386344,386613,386617,386619,386620,386646,386648,386651,386659,386664,386686,386689,386759,386833,386858,386864,386922,386951,386976,386986,386997,387016,387065,387073,387075,387084,387084,387084,387093,387095,387103,387108,387153,387156,387159,387165,387166,387173,387176,387250,387252,387259,387273,387275,387279,387301,387322,387338,387349,387355,387384,387391,387396,387399,387400,387432,387445,387475,387483,387485,387488,387494,387506,387509,387522,387526,387541,387549,387569,387578,387600,387602,387972,387976,388827,388832,389359,389367,389576,389590,389609,389623,389630,389761,389764,389775,389992,390173,399668, },
	[795] = { 139,528,596,605,2050,9484,10060,15286,15487,32375,32379,33076,33206,34433,34861,47515,47536,47585,47788,48045,62618,64044,64129,64843,64901,73325,73510,81749,88625,108920,108942,108945,108968,109186,110744,120517,120644,121536,122121,123040,129250,132157,155271,162448,193063,193134,193155,193157,194509,196437,196489,196704,196707,196985,197045,197419,198068,199484,199855,200128,200174,200183,200199,200209,204197,204883,205364,205385,213634,214621,215768,228260,235587,238063,238100,238135,238136,238558,246287,263165,263346,263716,265202,280749,288733,314867,321291,321377,322115,335467,341167,341240,341273,341374,341491,341997,368275,372307,372309,372354,372370,372611,372616,372760,372835,372969,372972,372985,372991,373003,373035,373042,373049,373054,373065,373178,373180,373202,373212,373221,373223,373273,373280,373310,373427,373427,373446,373450,373456,373457,373466,373481,375767,375888,375901,375994,377065,377349,377387,377422,377438,390615,390620,390622,390632,390667,390668,390670,390676,390684,390685,390686,390689,390691,390693,390705,390765,390767,390770,390781,390786,390832,390881,390919,390947,390954,390967,390972,390977,390980,390992,390994,390996,391079,391090,391095,391109,391112,391124,391137,391154,391161,391186,391208,391209,391228,391233,391235,391242,391284,391288,391296,391339,391368,391381,391387,391399,392507,392988,393870,55676,373218, },
	[790] = { 498,498,633,1022,1044,6940,10326,20066,20473,24275,31821,31850,31884,31884,31884,31884,31884,31935,53385,53595,82326,85043,85222,85804,86659,96231,105809,114154,114158,114165,115750,148039,152261,152262,156910,157047,183218,183778,183998,184575,184662,190784,196926,200025,200430,200474,200482,200652,203316,204018,204019,204023,204054,204054,204074,204077,205191,209389,210294,213644,214202,215661,216331,223306,223817,230332,231642,231644,231663,231667,231832,231895,234299,248033,255937,267344,267610,269569,280373,315924,321136,325966,326732,326734,327193,343527,343721,375576,375576,375576,376996,377016,377043,377053,377128,378279,378285,378405,378425,378457,378762,378845,378974,379008,379017,379021,379022,379043,379391,380188,382275,382430,382536,383185,383228,383254,383263,383271,383274,383276,383300,383304,383314,383328,383334,383342,383344,383350,383388,383388,383388,383396,383876,384027,384052,384162,384815,384820,384897,384909,384914,385125,385129,385349,385414,385416,385422,385425,385427,385450,385464,385515,385633,385639,385726,385728,386568,386653,386738,386901,386967,387170,387170,387174,387196,387479,387640,387781,387786,387791,387801,387805,387808,387814,387879,387893,387993,387998,388005,388007,388018,389539,391142,392902,392907,392911,392914,392928,392938,392951,392961,393022,393024,393027,393030,393071,393114, },
	[786] = { 370,974,1064,5394,5394,8042,8143,8512,16166,16166,16191,16196,17364,30884,33757,51485,51490,51505,51514,51533,51564,51886,51886,52127,57994,58875,60103,60188,61295,61882,73685,73920,77472,77756,77756,79206,98008,108271,108280,108281,108285,108287,114050,114051,114052,117013,117014,117014,157153,157154,187874,187880,188443,191634,191634,191861,192058,192063,192077,192088,192222,192249,196840,196884,197214,197995,198067,198103,198434,198838,200071,200072,200076,201900,204268,207399,207401,207778,210689,210714,210853,260878,262303,262624,262647,265046,273221,280614,305483,319930,333919,333919,333974,334033,334046,334195,334308,342240,344357,375982,375982,375982,377933,378075,378077,378079,378081,378094,378193,378211,378211,378241,378241,378255,378266,378268,378270,378270,378270,378271,378310,378443,378773,378776,378779,381647,381650,381655,381666,381674,381678,381689,381707,381708,381726,381743,381764,381776,381782,381785,381787,381819,381867,381930,381932,381936,381946,382019,382020,382021,382027,382029,382030,382032,382033,382039,382040,382042,382042,382045,382046,382086,382191,382194,382197,382197,382197,382201,382215,382309,382315,382482,382685,382732,382886,382888,382947,383009,383010,383011,383012,383013,383016,383017,383019,383222,383303,384087,384143,384149,384352,384355,384359,384363,384405,384411,384444,384447,384450,385923,386443,386474,390288,390370,392352,393905, },
	[793] = { 99,740,774,1079,1822,2637,2782,2782,2782,2908,5211,5217,6807,16864,16931,16974,18562,22570,22842,24858,29166,33763,33786,33873,33891,48438,48484,50334,50334,50334,50464,61336,61336,78674,78675,79577,80313,88747,93402,102342,102351,102359,102401,102543,102558,102793,106832,106839,106898,106951,108238,108299,113043,114107,124974,131768,132158,132469,135288,145108,145205,155578,155580,155675,155835,158476,158477,158478,159286,191034,192081,194153,194223,197061,197073,197524,197625,197625,197625,197626,197628,197628,197628,197721,200390,200851,200854,202021,202028,202031,202342,202345,202347,400636,202425,202430,202770,202918,203651,203953,203962,203964,203965,203974,204053,205636,207383,207385,210706,213764,231032,231040,231050,231063,231064,236068,238049,252216,274281,274837,274902,278515,279620,285381,288826,300346,301768,319439,319454,326228,327541,327993,328025,328767,343647,345208,370586,370695,371905,371999,372119,372567,372618,372943,372945,377210,377796,377801,377811,377835,377842,377847,378986,378988,382550,382552,382559,383191,383192,383195,383197,383352,384665,384667,384668,384721,385786,386318,390378,390772,390864,390902,391037,391045,391078,391174,391347,391528,391528,391528,391528,391548,391700,391709,391785,391872,391875,391881,391888,391888,391947,391951,391951,391969,391969,391969,391969,391972,391978,392099,392116,392124,392160,392162,392167,392220,392221,392256,392288,392301,392302,392315,392325,392356,392378,392410,392999,393371,393414,393427,393611,393618,393760,393771,393868,393940,393954,393956,393958,393960,393991,394013,394046,394048,394058,394065,394081,394094,394115,394121,400140,400158,400129,400142,400059,400222,400254,400278,204066,400531,400533, },
}

function CM:CHAT_MSG_ADDON(prefix, message, _, sender)
	if prefix ~= self.AddonPrefix or sender == aceUserNameFix then
		return
	end

	local header, guid, body = strmatch(message, "(.-),(.-),(.+)")
	local info = P.groupInfo[guid]
	if not info then
		return
	end

	local isSyncedUnit = self.syncedGroupMembers[guid]
	if header == MSG_COOLDOWN_SYNC then
		if isSyncedUnit then
			self.SyncCooldowns(guid, body)
		end
		return
	elseif header == MSG_INFO_REQUEST then
		self:SendUserSyncData(guid)
	elseif header == MSG_INFO_UPDATE then
		if not isSyncedUnit then
			return
		end
	elseif header == MSG_DESYNC then
		if isSyncedUnit then
			self.syncedGroupMembers[guid] = nil
		end
		self:ToggleCooldownSync()
		return
	elseif header == MSG_STRIVE_PVP then
		if isSyncedUnit and (not P.loginsessionData[guid] or not P.loginsessionData[guid]["strivedPvpCD"]) then
			self:SyncStrivePvpTalentCD(guid, body)
		end
		return
	elseif header ~= E.userGUID then
		return
	end

	local decodedData = LibDeflate:DecodeForWoWAddonChannel(body)
	if not decodedData then
		error("Error decoding sync message from " .. info.name)
	end
	local decompressedData = LibDeflate:DecompressDeflate(decodedData)
	if not decompressedData then
		error("Error decompressing sync message from " .. info.name)
	end

	local treeID = CLASS_TREE_IDS[info.class]
	local nodeIndices = treeNodeIndices[treeID]

	while ( decompressedData ) do
		local t, rest = strsplit("^", decompressedData, 2)
		decompressedData = rest

		local k, v = strsplit(",", t, 2)
		if ( k == "T" ) then
			while ( v ) do
				local id, idlist = strsplit(",", v, 2)
				v = idlist
				local spellID, rank = strsplit(":", id)
				spellID = tonumber(spellID)
				if ( spellID ) then
					if ( spellID > 0 ) then
						spellID = nodeIndices[spellID] or spellID
						info.talentData[spellID] = tonumber(rank) or 1
					else
						info.talentData[-spellID] = "PVP"
					end
				end
			end
		elseif ( k == "M" ) then
			while ( v ) do
				local id, idlist = strsplit(",", v, 2)
				v = idlist
				local key, src = strsplit(":", id)
				local spellID = tonumber(key)
				local value = tonumber(src) or src or true
				if ( not spellID ) then
					info.talentData[key] = value
				elseif ( spellID > 0 ) then
					if ( src == "AE" ) then
						local rank1 = CM.essencePowerIDs[spellID]
						if ( rank1 ) then
							info.talentData[rank1] = src
							info.talentData["essMajorRank1"] = rank1
							info.talentData["essMajorID"] = spellID
						end
					elseif ( src == "ae" ) then
						info.talentData["essStriveMult"] = spellID
					else
						info.talentData[spellID] = value
					end
				else
					info.talentData[-spellID] = value
				end
			end
		elseif ( k == "E" ) then
			while ( v ) do
				local id, idlist = strsplit(",", v, 2)
				v = idlist
				id = tonumber(id)
				if ( id ) then
					if ( id > 0 ) then
						info.itemData[id] = true
					else
						info.rangedWeaponSpeed = -id
					end
				end
			end
		elseif ( k == "C" ) then
			wipe(info.shadowlandsData)
			local covenantID, soulbindID, conduits = strsplit(",", v, 3)
			covenantID = tonumber(covenantID)
			soulbindID = tonumber(soulbindID)
			local covenantSpellID = E.covenant_to_spellid[covenantID]
			info.shadowlandsData.covenantID = covenantSpellID
			info.shadowlandsData.soulbindID = soulbindID
			info.talentData[covenantSpellID] = "C"
			while ( conduits ) do
				local id, idlist = strsplit(",", conduits, 2)
				conduits = idlist
				local conduitSpellID, rankValue = strsplit(":", id)
				conduitSpellID = tonumber(conduitSpellID)
				rankValue = tonumber(rankValue)
				if ( rankValue ) then
					info.talentData[conduitSpellID] = rankValue
				elseif ( conduitSpellID ) then
					info.talentData[conduitSpellID] = 0
				end
			end
		else
			k = tonumber(k)
			if ( self:IsVersionIncompatible(k) ) then
				return
			end
			info.spec = tonumber(v)
			wipe(info.talentData)
			wipe(info.itemData)
		end
	end

	local unit = info.unit
	if info.name == "" or info.name == "Unknown" then
		info.name = GetUnitName(unit, true)
	end
	if info.level == 200 then
		local lvl = UnitLevel(unit)
		if lvl > 0 then
			info.level = lvl
		end
	end

	self.syncedGroupMembers[guid] = true
	self:DequeueInspect(guid)
	P:UpdateUnitBar(guid)

	self:ToggleCooldownSync()
end

local function SendUpdatedUserSyncData()
	CM:InspectUser()
	CM:SendUserSyncData()
end

function CM:CHARACTER_POINTS_CHANGED(change)
	if change == -1 then
		SendUpdatedUserSyncData()
	end
end

local equipmentTimer

local SendUserSyncData_OnTimerEnd = function()
	SendUpdatedUserSyncData()
	equipmentTimer = nil
end

function CM:PLAYER_EQUIPMENT_CHANGED(slotID)
	if equipmentTimer or slotID > 16 then
		return
	end
	equipmentTimer = C_Timer.NewTicker(0.1, SendUserSyncData_OnTimerEnd, 1)
end

CM.PLAYER_TALENT_UPDATE = SendUpdatedUserSyncData
CM.PLAYER_SPECIALIZATION_CHANGED = SendUpdatedUserSyncData
CM.COVENANT_CHOSEN = SendUpdatedUserSyncData
CM.SOULBIND_ACTIVATED = SendUpdatedUserSyncData
CM.SOULBIND_NODE_LEARNED = SendUpdatedUserSyncData
CM.SOULBIND_NODE_UNLEARNED = SendUpdatedUserSyncData
CM.SOULBIND_NODE_UPDATED = SendUpdatedUserSyncData
CM.SOULBIND_CONDUIT_INSTALLED = SendUpdatedUserSyncData
CM.SOULBIND_PATH_CHANGED = SendUpdatedUserSyncData
CM.COVENANT_SANCTUM_RENOWN_LEVEL_CHANGED = SendUpdatedUserSyncData
CM.TRAIT_CONFIG_UPDATED = SendUpdatedUserSyncData



CM.PLAYER_LEAVING_WORLD = CM.DesyncFromGroup

function CM:SyncStrivePvpTalentCD(guid, serializedstriveData)
	local info = P.groupInfo[guid]
	if not info then
		return
	end
	local elapsed, cd = strsplit(":", serializedstriveData, 3)
	cd = tonumber(cd)
	local spellID = info.talentData["essStrivedPvpID"]
	local icon = info.spellIcons[spellID]
	if icon then
		local active = info.active[spellID]
		if active then
			local modRate = active.iconModRate or 1
			local newTime = GetTime() - elapsed * modRate
			local newCd = cd * modRate
			icon.cooldown:SetCooldown(newTime, newCd, modRate)
			active.startTime = newTime
			active.duration = newCd
		end
		icon.duration = cd
	end
	P.loginsessionData[guid] = P.loginsessionData[guid] or {}
	P.loginsessionData[guid]["strivedPvpCD"] = cd
end

function CM.SendStrivePvpTalentCD(spellID)
	local st, cd, _, modRate = GetSpellCooldown(spellID)
	if cd < 2 then
		return
	end

	local elapsed = GetTime() - st/modRate
	cd = cd/modRate
	if not P.isUserDisabled then
		SyncStrivePvpTalentCD(E.userGUID, elapsed, cd)
	end
	CM:SendComm(MSG_STRIVE_PVP, E.userGUID, elapsed, cd)
end














function CM.SyncCooldowns(guid, serializedCooldownData)
	local info = P.groupInfo[guid]
	if not info then return end

	local now = GetTime()
	while ( serializedCooldownData ) do
		local spellID, duration, remainingTime, modRate, charges, rest = strsplit(",", serializedCooldownData, 6)
		serializedCooldownData = rest
		spellID = tonumber(spellID)
		if ( spellID ) then
			local mergedID = E.spell_merged[spellID]
			local icon = info.spellIcons[spellID] or info.spellIcons[mergedID]
			if ( icon ) then
				duration = tonumber(duration)
				remainingTime = tonumber(remainingTime)
				modRate = tonumber(modRate)
				charges = tonumber(charges)

				charges = icon.maxcharges and charges ~= -1 and charges or nil
				local elapsed = duration - remainingTime
				local startTime = now - elapsed
				local active = icon.active and info.active[spellID]


				if ( active and duration == 0 ) then
					P:ResetCooldown(icon)


				elseif ( active and abs(active.startTime - startTime) > 1 ) or ( not active and duration > 0 and E.sync_periodic[spellID] ) then
					icon.cooldown:SetCooldown(startTime, duration, modRate)
					P:SetCooldownElements(icon, charges)

					if ( not active ) then
						info.active[spellID] = {}
						active = info.active[spellID]
					end
					active.startTime = startTime
					active.duration = duration
					active.iconModRate = modRate
					if ( charges ) then
						active.charges = charges
						icon.count:SetText(charges)
					end

					local statusBar = icon.statusBar
					if ( statusBar ) then
						P.OmniCDCastingBarFrame_OnEvent(statusBar.CastingBar, E.db.extraBars[statusBar.key].reverseFill and 'UNIT_SPELLCAST_CHANNEL_UPDATE' or 'UNIT_SPELLCAST_CAST_UPDATE')
					end
				end
			end
		end
	end
end

local nullTime = 2^32 / 1000

local function GetCooldownFix(spellID)
	local start, duration, enabled, modRate = GetSpellCooldown(spellID)
	local currentCharges, maxCharges, cooldownStart, cooldownDuration, chargeModRate = GetSpellCharges(spellID)
	local charges = maxCharges and maxCharges > 1 and currentCharges or -1
	if enabled == 1 then
		if start and start > 0 then
			if duration < 1.5 or (currentCharges and currentCharges > 0) then
				return nil
			end
			return start, duration, modRate, charges
		elseif maxCharges and maxCharges > currentCharges then
			return cooldownStart, cooldownDuration, chargeModRate, charges
		end
	end
	return 0, 0, 1, charges
end

local cooldownData = {}
local elapsedTime = 0
local OFF_CD, FIRST_DECIMAL, THIRD_DECIMAL, TRUNCATE_ZEROS = "0,0,1", "%.1f", "%.3f", "%.?0+$"

local function CooldownSyncFrame_OnUpdate(_, elapsed)
	elapsedTime = elapsedTime + elapsed
	if elapsedTime < COOLDOWN_SYNC_INTERVAL then
		return
	end

	local c = 0
	local now = GetTime()
	local userActive = not P.isUserDisabled and P.userInfo.active

	for id, cooldownInfo in pairs(CM.cooldownSyncIDs) do
		local start, duration, modRate, charges = GetCooldownFix(id)
		if start then
			local prevStart, prevCharges
			local active = userActive and userActive[id]
			if active then
				prevStart, prevCharges = active.startTime, active.charges or 0
			else
				prevStart, prevCharges = cooldownInfo[1], cooldownInfo[2]
			end
			local periodicSync = E.sync_periodic[id]
			if duration == 0 then
				if periodicSync then
					cooldownInfo[1] = start
					cooldownInfo[2] = charges
					cooldownData[c + 1] = id
					cooldownData[c + 2] = OFF_CD
					cooldownData[c + 3] = charges
					c = c + 3
				end
			else
				if periodicSync or abs(start - prevStart) > 1 or charges > prevCharges then
					cooldownInfo[1] = start
					cooldownInfo[2] = charges
					local remainingTime = start + duration - now
					if modRate == 1 then
						remainingTime = floor(remainingTime)
					else
						duration = format(THIRD_DECIMAL, duration):gsub(TRUNCATE_ZEROS, NULL)
						modRate = format(THIRD_DECIMAL, modRate):gsub(TRUNCATE_ZEROS, NULL)
						remainingTime = format(THIRD_DECIMAL, remainingTime):gsub(TRUNCATE_ZEROS, NULL)
					end
					cooldownData[c + 1] = id
					cooldownData[c + 2] = duration
					cooldownData[c + 3] = remainingTime
					cooldownData[c + 4] = modRate
					cooldownData[c + 5] = charges
					c = c + 5
				elseif start == prevStart and charges > -1 and charges < prevCharges then
					cooldownInfo[2] = charges
				end
			end
		end
		if c >= 35 then
			break
		end
	end

	elapsedTime = 0

	if c == 0 then
		return
	end

	for i = #cooldownData, c + 1, -1 do
		cooldownData[i] = nil
	end

	local serializedCooldownData = concat(cooldownData, ",")
	if not P.isUserDisabled then
		CM.SyncCooldowns(E.userGUID, serializedCooldownData)
	end
	if next(CM.syncedGroupMembers) then
		CM:SendComm(MSG_COOLDOWN_SYNC, E.userGUID, serializedCooldownData)
	end
end

function CM:ForceSyncCooldowns()
	elapsedTime = 100
end

function CM:ToggleCooldownSync()
	if E.preCata then
		return
	end
	if next(self.cooldownSyncIDs) and P.disabled == false and (not P.isUserDisabled or next(self.syncedGroupMembers)) then
		CooldownSyncFrame:Show()
	else
		CooldownSyncFrame:Hide()
	end
end

local CooldownSyncFrame_OnShow = function(self)
	self.isShown = true
end

local CooldownSyncFrame_OnHide = function(self)
	self.isShown = false
end

function CM:InitCooldownSync()
	if self.initCooldownSync or E.preCata then
		return
	end
	CooldownSyncFrame:Hide()

	CooldownSyncFrame:SetScript("OnShow", CooldownSyncFrame_OnShow)
	CooldownSyncFrame:SetScript("OnHide", CooldownSyncFrame_OnHide)
	CooldownSyncFrame:SetScript("OnUpdate", CooldownSyncFrame_OnUpdate)

	self.initCooldownSync = true
end
