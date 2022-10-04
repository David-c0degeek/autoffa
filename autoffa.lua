local function AutoLootMethod_OnEvent()
    if GetNumGroupMembers() > 0 then 
       if GetLootMethod() ~= "freeforall" then
           SetLootMethod("freeforall")
       end
    end
 end
 
 local f = CreateFrame("Frame", "AutoLootMethodFrame")
 f:RegisterEvent("GROUP_ROSTER_UPDATE")
 f:SetScript("OnEvent", AutoLootMethod_OnEvent)
 