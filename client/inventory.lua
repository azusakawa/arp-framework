--------------------------------------------------------------------------------
-- 物品庫
--------------------------------------------------------------------------------
local inventory = {}

RegisterNetEvent('ARP:PlayerInventory')
AddEventHandler('ARP:PlayerInventory', function(items)
    table.insert(inventory, items)
end)

------------------------------------------------------------
-- 物品庫選單
------------------------------------------------------------
RMenu.Add('Intmenu', 'main', RageUI.CreateMenu('Inventory', 'Inventory menu'))
RMenu.Add('Intmenu', 'item', RageUI.CreateMenu('Inventory', 'Inventory menu'))
local action = {
    'Give',
    'Throw'
}

RageUI.CreateWhile(1.0, RMenu:Get('Intmenu', 'main'), nil, function()
    RageUI.IsVisible(RMenu:Get('Intmenu', 'main'), true, true, true, function()
        for _, item in pairs(inventory) do
            RageUI.Button(item, nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
                if selected then
                end
            end, RMenu:Get('Intmenu', 'item'))
        end
    end, function()
    end)
end)

RageUI.CreateWhile(1.0, RMenu:Get('Intmenu', 'item'), nil, function()
    RageUI.IsVisible(RMenu:Get('Intmenu', 'item'), true, true, true, function()
        for _, v in pairs(action) do
            RageUI.Button(v, nil, {}, true, function(hovered, active, selected)
                if selected then
                end
            end)
        end
    end)
end)


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        if IsControlJustPressed(1, 38) then
            RageUI.Visible(RMenu:Get('Intmenu', 'main'), not RageUI.Visible(RMenu:Get('Intmenu', 'main')))
            TriggerServerEvent('ARP:GetInventory')
        end
    end
end)