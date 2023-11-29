include("config.lua")

local function OpenPerksMenu()
    local frame = vgui.Create("DFrame")
    frame:SetSize(300, 400)
    frame:Center()
    frame:SetTitle("Perks Menu")
    frame:MakePopup()

    local perkList = vgui.Create("DPanelList", frame)
    perkList:Dock(FILL)

    for _, perkData in pairs(RPerks) do
        local button = vgui.Create("DButton")
        button:SetText(perkData.name .. " - Price: " .. perkData.price)
        
        if LocalPlayer():IsUserGroup(perkData.access) or perkData.access == "none" then
            button.DoClick = function()
                perkData.what_is_this(LocalPlayer())
                print("Perk purchased: " .. perkData.name)
            end
        else
            button:SetText(perkData.name .. " - Access Denied")
            button:SetEnabled(false)
        end

        perkList:AddItem(button)
    end
end

concommand.Add("perks", OpenPerksMenu)
