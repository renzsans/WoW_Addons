-- Set Player Frame left of the player character
PlayerFrame:ClearAllPoints()
PlayerFrame:SetPoint("CENTER", -230, -20)
-- PlayerFrame:SetPoint("BOTTOM", UIParent, "CENTER", -600, 600)
PlayerFrame:SetUserPlaced(true);

-- Set Target Frame right of the player character
TargetFrame:ClearAllPoints()
TargetFrame:SetPoint("CENTER", 230, -20)
-- TargetFrame:SetPoint("BOTTOM", UIParent, "CENTER", -800, 500)
TargetFrame:SetUserPlaced(true);

-- Modify buff frame
-- f=BuffFrame
-- f:SetMovable(1)
-- f:SetUserPlaced(true)
-- f:SetScale(.85)

local playerClass, englishClass = UnitClass("player");

-- Called when game loads to update the buff frame
hooksecurefunc("BuffFrame_UpdateAllBuffAnchors", function()
  BuffFrame:ClearAllPoints()
  BuffFrame:SetPoint("TOPRIGHT", PlayerFrame, "BOTTOMRIGHT", -5, -20)
  BuffFrame:SetScale(.85)
  BuffFrame:SetUserPlaced(true)
  -- if englishClass == "HUNTER" then
  --   BuffButton1:ClearAllPoints()
  --   BuffButton1:SetPoint("TOPLEFT", PlayerFrame, "BOTTOMRIGHT", -35, -20)
	--   DebuffButton1:ClearAllPoints()
  --   DebuffButton1:SetPoint("BOTTOM", PlayerFrame, "BOTTOMRIGHT", -20, -145)
  -- else
  --   BuffButton1:ClearAllPoints()
  --   BuffButton1:SetPoint("TOPLEFT", PlayerFrame, "BOTTOMRIGHT", -35, 10)
	--   DebuffButton1:ClearAllPoints()
	--   DebuffButton1:SetPoint("BOTTOM", PlayerFrame, "BOTTOMRIGHT", -20, -145)
  -- end
end)