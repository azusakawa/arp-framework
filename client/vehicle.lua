------------------------------------------------------------
-- 車輛列表
------------------------------------------------------------
local vehicles = {}

RegisterNetEvent('ARP_Core:VehicleMenu')
AddEventHandler('ARP_Core:VehicleMenu', function(model, label, price)
    for i = 1, #vehicles do 
        table.remove(vehicles, i)
    end
    Citizen.Wait(10)

    table.insert(vehicles, {model = model, label = label, price = price})
end)

------------------------------------------------------------
-- 觀賞車輛
------------------------------------------------------------
function ShowVehicle(model)
    RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(1)
    end
    
    if HasModelLoaded(model) then
        veh = CreateVehicle(GetHashKey(model), -47.29, -1096.97, 26.42, 159.2, true, false)
        vehId = NetworkGetNetworkIdFromEntity(veh)
        SetNetworkIdCanMigrate(vehId, true)
        SetEntityAsMissionEntity(veh, true, false)
        SetVehicleDoorsLocked(veh, 2)
        SetEntityInvincible(veh, true)
        SetModelAsNoLongerNeeded(veh)
    end
end

------------------------------------------------------------
-- 車商選單
------------------------------------------------------------
RMenu.Add('Vehmenu', 'main', RageUI.CreateMenu('車商', '車輛選單'))
local VehMenu = {
    action = {
        '購買',
        '觀賞'
    },
    list = 1,
}

RageUI.CreateWhile(1.0, RMenu:Get('Vehmenu', 'main'), nil, function()
    RageUI.IsVisible(RMenu:Get('Vehmenu', 'main'), true, true, true, function()
        RageUI.Button("刪除車輛", nil, {}, true, function(hovered, active, selected)
            if active then
                DeleteEntity(veh)
            end
        end)
        for _, mod in pairs(vehicles) do 
            RageUI.List(mod.label .. ' ~g~$~s~ ' .. mod.price, VehMenu.action, VehMenu.list, nil, {}, true, function(hovered, active, selected, index)
                if selected then
                    if index == 1 then
                        RageUI.CloseAll()
                    elseif index == 2 then
                        ShowVehicle(mod.model)
                    end
                end
                VehMenu.list = index
            end)
        end
    end, function()
    end)
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        DrawMarker(1, -33.92, -1103.03, 25.42, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.0, 0, 0, 0, 150, false, true, 2, false, nil, nil, false)

        local PlyToShop = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), -33.92, -1103.03, 26.42)
        if PlyToShop < 1.5 then
            TriggerEvent('ARP_Core:DisplayText3D', '按 ~g~E~s~ 開啟選單')
            if IsControlJustReleased(0, 38) then
                RageUI.Visible(RMenu:Get('Vehmenu', 'main'), not RageUI.Visible(RMenu:Get('Vehmenu', 'main')))
                TriggerServerEvent('ARP_Core:LoadVehicles')
            end
        end
    end
end)


    