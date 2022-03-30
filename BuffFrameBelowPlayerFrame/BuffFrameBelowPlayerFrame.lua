-- Set Player Frame left of the player character
PlayerFrame:ClearAllPoints()
PlayerFrame:SetPoint("CENTER", -230, 10)
-- PlayerFrame:SetPoint("BOTTOM", UIParent, "CENTER", -600, 600)
PlayerFrame:SetUserPlaced(true)

-- Set Target Frame right of the player character
TargetFrame:ClearAllPoints()
TargetFrame:SetPoint("CENTER", 230, 10)
-- TargetFrame:SetPoint("BOTTOM", UIParent, "CENTER", -800, 500)
TargetFrame:SetUserPlaced(true)

-- Modify buff frame
-- f=BuffFrame
-- f:SetMovable(1)
-- f:SetUserPlaced(true)
-- f:SetScale(.85)

local playerClass, englishClass = UnitClass("player");

-- Called when game loads to update the buff frame
hooksecurefunc("BuffFrame_UpdateAllBuffAnchors", function()
  BuffFrame:ClearAllPoints()    
  if englishClass == "HUNTER" then
    BuffFrame:SetPoint("TOPRIGHT", PlayerFrame, "BOTTOMRIGHT", -5, -20)
  elseif englishClass == "SHAMAN" then
    BuffFrame:SetPoint("TOPRIGHT", PlayerFrame, "BOTTOMRIGHT", -5, -15)
  else
    BuffFrame:SetPoint("TOPRIGHT", PlayerFrame, "BOTTOMRIGHT", -5, 0)
  end
  BuffFrame:SetScale(.85)
  BuffFrame:SetUserPlaced(true)
end)

-- Called when game loads to update the GameToolTip
-- hooksecurefunc("GameTooltip_SetDefaultAnchor", function()
--   GameTooltip:ClearAllPoints()
-- 	GameTooltip:SetPoint("BOTTOMRIGHT",TargetFrame,"BOTTOMRIGHT",0,0);
-- end); 

-- See thread
-- https://www.wowinterface.com/forums/showthread.php?t=54564
local function setTooltipToMouseLocation(self)
	local scale = self:GetEffectiveScale()
	local x, y = GetCursorPosition()
	self:ClearAllPoints()
	self:SetPoint("BOTTOMLEFT", UIParent, x / scale + 16, (y / scale - self:GetHeight() - 16))
end

hooksecurefunc("GameTooltip_SetDefaultAnchor", function(tooltip, parent)
	if GetMouseFocus() ~= WorldFrame then return end
	tooltip:SetOwner(parent, "ANCHOR_CURSOR")
	setTooltipToMouseLocation(tooltip)
	tooltip.default = 1
end)

-- See thread
-- https://www.wowinterface.com/forums/showthread.php?t=17861
local c = CastingBarFrame
c:ClearAllPoints()
-- c:SetWidth(250)
c:SetPoint("BOTTOM", UIParent, 0, 200)
c.SetPoint = function() end