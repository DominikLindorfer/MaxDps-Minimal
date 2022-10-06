-- WoW Addon to mimic DataToColor Addon

--Tutorial
local f = CreateFrame("Frame")

function f:OnEvent(event, ...)
	self[event](self, event, ...)
end

function f:ADDON_LOADED(event, addOnName)
	print(event, addOnName)
end

function f:PLAYER_ENTERING_WORLD(event, isLogin, isReload)
	print(event, isLogin, isReload)
end

-- function f:CHAT_MSG_CHANNEL(event, text, playerName, _, channelName)
-- 	print(event, text, playerName, channelName)
-- end

f:RegisterEvent("ADDON_LOADED")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("CHAT_MSG_CHANNEL")
f:SetScript("OnEvent", f.OnEvent)

local name = UnitName("player")
local health = UnitHealth("player")
local enemyhealth = UnitHealth("target")

print(name, health, enemyhealth)


-- Automatic Modulo function for Lua 5 and earlier
function Modulo(val, by)
    return val - math.floor(val / by) * by
end

-- Create a Frame with no Background
local f1 = CreateFrame("Frame",nil,UIParent)
f1:SetWidth(1) 
f1:SetHeight(1) 
f1:SetAlpha(.90);
f1:SetPoint("CENTER",650,-100)
f1.text = f1:CreateFontString(nil,"ARTWORK") 
f1.text:SetFont("Fonts\\ARIALN.ttf", 13, "OUTLINE")
f1.text:SetPoint("CENTER",0,0)
f1:Show()

-- -- Create a Frame with Background
-- local frameXCoord = CreateFrame("Frame",nil,UIParent)
-- frameXCoord:SetFrameStrata("HIGH")
-- frameXCoord:SetWidth(64) 
-- frameXCoord:SetHeight(64) 

-- local t = frameXCoord:CreateTexture(nil,"BACKGROUND")
-- frameXCoord:SetBackdrop({
--     bgFile = "Interface\\AddOns\\HelloWorld\\white.tga",
--     insets = {top = 0, left = 0, bottom = 0, right = 0},
-- })
-- t:SetAllPoints(frameXCoord)
-- frameXCoord.texture = t
-- -- frameXCoord:SetBackdropColor(0,0,0.2352941,1)
-- frameXCoord:SetPoint("CENTER",550,-50)
-- frameXCoord:Show()

-- local frameYCoord = CreateFrame("Frame",nil,UIParent)
-- frameYCoord:SetFrameStrata("HIGH")
-- frameYCoord:SetWidth(64) 
-- frameYCoord:SetHeight(64) 

-- local t = frameYCoord:CreateTexture(nil,"BACKGROUND")
-- frameYCoord:SetBackdrop({
--     bgFile = "Interface\\AddOns\\HelloWorld\\white.tga",
--     insets = {top = 0, left = 0, bottom = 0, right = 0},
-- })
-- t:SetAllPoints(frameXCoord)
-- frameYCoord.texture = t
-- frameYCoord:SetPoint("CENTER",550+64,-50)
-- frameYCoord:Show()

-- local frameDir = CreateFrame("Frame",nil,UIParent)
-- frameDir:SetFrameStrata("HIGH")
-- frameDir:SetWidth(64) 
-- frameDir:SetHeight(64) 

-- local t = frameDir:CreateTexture(nil,"BACKGROUND")
-- frameDir:SetBackdrop({
--     bgFile = "Interface\\AddOns\\HelloWorld\\white.tga",
--     insets = {top = 0, left = 0, bottom = 0, right = 0},
-- })
-- t:SetAllPoints(frameXCoord)
-- frameDir.texture = t
-- frameDir:SetPoint("CENTER",550+64+64,-50)
-- frameDir:Show()

-- Display xy Coordinates and Player + Target Health as Strings in the Frame f1
local p,f,col,col2, x,y,h,eh="player",MyL or CreateFrame("Frame","MyL",PlayerFrame) f.t=0 

f:SetScript("OnUpdate",

function(s,e) 
    f.t=f.t+e 
    if f.t>.025 then 
        f.t=0 

        x,y = GetPlayerMapPosition(p) 
        facing = GetPlayerFacing()

        h = UnitHealth("player")
        eh = UnitHealth("target")
        
        f1.text:SetText(format("(%d,%d) %s %d %d %d",x*1000,y*1000, name, h, eh, facing*1000))
        -- f.text:SetText(format("(%d,%d) %s %d %d",x*1000,y*1000, name, h, eh))
        -- print(format("(%d,%d) %s %d %d",x*1000,y*1000, name, h, eh)) 

        col1 = fixedDecimalToColor(x)
        col2 = fixedDecimalToColor(y)
        col3 = fixedDecimalToColor(facing)

        print(col1[1], col1[2], col1[3]) 
        print(col2[1], col2[2], col2[3]) 
        print(col3[1], col3[2], col3[3]) 
        -- frameXCoord:SetBackdropColor(0,0,0.2352941,1)
        frameXCoord:SetBackdropColor(col1[1], col1[2], col1[3], 1)
        frameYCoord:SetBackdropColor(col2[1], col2[2], col2[3], 1)
        frameDir:SetBackdropColor(col3[1], col3[2], col3[3], 1)
    end 
end)

-- DataToColor Stuff

function integerToColor(i)
    if i ~= math.floor(i) then
        error("The number passed to 'integerToColor' must be an integer")
    end
    
    if i > (256 * 256 * 256 - 1) then -- the biggest value to represent with 3 bytes of colour
        error("Integer too big to encode as color")
    end
    
    print(i)
    -- r,g,b are integers in range 0-255
    local b = Modulo(i, 256)
    i = math.floor(i / 256)
    local g = Modulo(i, 256)
    i = math.floor(i / 256)
    local r = Modulo(i, 256)
    
    -- tab = {r / 255, g / 255, b / 255}
    -- print(r, g, b)
    -- print(tab[1], tab[2], tab[3])

    -- then we turn them into 0-1 range
    return {r / 255, g / 255, b / 255}
end

-- This function is able to pass numbers in range 0 to 9.99999 (6 digits)
-- converting them to a 6-digit integer.
function fixedDecimalToColor(f)
    if f > 9.99999 then
        -- error("Number too big to be passed as a fixed-point decimal")
        return {0}
    elseif f < 0 then
        return {0}
    end

    -- "%f" denotes formatting a string as floating point decimal
    -- The number (.5 in this case) is used to denote the number of decimal places
    local f6 = tonumber(string.format("%.5f", 1))
    -- Makes number an integer so it can be encoded
    local i = math.floor(f * 100000)
    return integerToColor(i)
end


