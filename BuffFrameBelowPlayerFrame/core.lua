f=BuffFrame
f:SetMovable(1)
f:SetUserPlaced(true)
f:SetScale(.85)

local playerClass, englishClass = UnitClass("player");

hooksecurefunc("BuffFrame_UpdateAllBuffAnchors", function()	
  if englishClass == "DRUID" then
    BuffButton1:ClearAllPoints()
    BuffButton1:SetPoint("TOPLEFT", PlayerFrame, "BOTTOMRIGHT", -35, 10)  
	DebuffButton1:ClearAllPoints()
	DebuffButton1:SetPoint("BOTTOM", PlayerFrame, "BOTTOMRIGHT", -20, -120)
  elseif englishClass == "HUNTER" then
    BuffButton1:ClearAllPoints()
    BuffButton1:SetPoint("TOPLEFT", PlayerFrame, "BOTTOMRIGHT", -35, -15)
	DebuffButton1:ClearAllPoints()
    DebuffButton1:SetPoint("BOTTOM", PlayerFrame, "BOTTOMRIGHT", -20, -125)
  else
    BuffButton1:ClearAllPoints()
    BuffButton1:SetPoint("TOPLEFT", PlayerFrame, "BOTTOMRIGHT", -35, 10)
	DebuffButton1:ClearAllPoints()
	DebuffButton1:SetPoint("BOTTOM", PlayerFrame, "BOTTOMRIGHT", -20, -120)
  end
end)