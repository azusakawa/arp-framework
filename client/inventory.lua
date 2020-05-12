ARP = {}

--------------------------------------------------------------------------------
-- 物品庫
--------------------------------------------------------------------------------
local inventory = {}

RegisterNetEvent('ARP_Core:PlayerInventory')
AddEventHandler('ARP_Core:PlayerInventory', function(items)
    for i = 1, #inventory do 
        table.remove(inventory, i)
    end
    Citizen.Wait(10)

    table.insert(inventory, items)
end)

------------------------------------------------------------
-- 物品庫選單
------------------------------------------------------------
RMenu.Add('Intmenu', 'main', RageUI.CreateMenu('背包', '背包物品'))
local IntMenu = {
    action = {
        '給予',
        '丟棄'
    },
    list = 1,
}

RageUI.CreateWhile(1.0, RMenu:Get('Intmenu', 'main'), nil, function()
    RageUI.IsVisible(RMenu:Get('Intmenu', 'main'), true, true, true, function()
        for _, item in pairs(inventory) do 
            RageUI.List(item, IntMenu.action, IntMenu.list, nil, {}, true, function(hovered, active, selected, index)
                if selected then
                    if index == 1 then
                        local clsped, distance = ARP.GetClosestPlayer()
                        if (distance ~= -1 and distance < 5) then
                            TriggerServerEvent('ARP_Core:GiveInventory', clsped, item)
                        else
                            ARP.Notify('附近 ~r~沒有~s~ 玩家')
                        end
                    elseif index == 2 then
                        TriggerServerEvent('ARP_Core:ThrowInventory', item)
                    end
                end
                IntMenu.list = index
            end)
        end
    end, function()
    end)
end)


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        if IsControlJustPressed(1, 289) then
            RageUI.Visible(RMenu:Get('Intmenu', 'main'), not RageUI.Visible(RMenu:Get('Intmenu', 'main')))
            TriggerServerEvent('ARP_Core:LoadInventory')
        end
    end
end)

------------------------------------------------------------
-- 獲取附近玩家
------------------------------------------------------------
function ARP.GetClosestPlayer()
    local players = GetPlayers()
    local Distance = -1
    local Player = -1
    local plyCoords = GetEntityCoords(GetPlayerPed(-1), 0)
    
    for _, ped in ipairs(players) do
        local target = GetPlayerPed(ped)
        if(target ~= GetPlayerPed(-1)) then
            local othCoords = GetEntityCoords(GetPlayerPed(ped), 0)
            local PlyToPly = Vdist(othCoords["x"], othCoords["y"], othCoords["z"], plyCoords["x"], plyCoords["y"], plyCoords["z"])
            if(PlyToPly == -1 or Distance > PlyToPly) then
                Player = ped
                Distance = PlyToPly
            end
        end
    end
    
    return Player, Distance
end  
  
function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end