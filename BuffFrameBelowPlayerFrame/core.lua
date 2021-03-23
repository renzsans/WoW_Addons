f=BuffFrame
f:SetMovable(1)
f:SetUserPlaced(true)
f:SetScale(.85)

hooksecurefunc("BuffFrame_UpdateAllBuffAnchors", function()
  BuffButton1:ClearAllPoints()
  BuffButton1:SetPoint("TOPLEFT", PlayerFrame, "BOTTOMRIGHT", -35, 10)  
  DebuffButton1:ClearAllPoints()
  DebuffButton1:SetPoint("BOTTOM", PlayerFrame, "BOTTOMRIGHT", -20, -100)
end)