local num = {}
local inventory = {}

Citizen.CreateThread(function()
    for i = 1, 10 do
        table.insert(num, i)
    end
end)

--------------------------------------------------------------------------------
-- 物品庫
--------------------------------------------------------------------------------
RMenu.Add('Intmenu', 'main', RageUI.CreateMenu('Inventory', 'Inventory menu'))

local index = {
    list = 1
}

RegisterNetEvent('ARP:PlayerInventory')
AddEventHandler('ARP:PlayerInventory', function(items)
    table.insert(inventory, items)
end)

------------------------------------------------------------
-- 物品庫選單
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('Intmenu', 'main'), nil, function()
    RageUI.IsVisible(RMenu:Get('Intmenu', 'main'), true, true, true, function()
        for _, item in pairs(inventory) do
            RageUI.List(item, num, index.list, nil, {}, true, function(hovered, active, selected, Index)
                index.list = Index
                if selected then
                end
            end)
        end
    end, function()
    end)
end)


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        if IsControlJustPressed(1, 38) then
            RageUI.Visible(RMenu:Get('Intmenu', 'main'), not RageUI.Visible(RMenu:Get('Intmenu', 'main')))
            TriggerServerEvent('ARP:UpdateInventory', 'item', 1)
        end
    end
end)