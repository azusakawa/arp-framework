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
        for _, veh in pairs(vehicles) do 
            RageUI.List(veh.label .. ' ~g~$~s~ ' .. veh.price, VehMenu.action, VehMenu.list, nil, {}, true, function(hovered, active, selected, index)
                if selected then
                    if index == 1 then
                        RageUI.CloseAll()
                    elseif index == 2 then
                        ShowVehicle(veh.model)
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
        if IsControlJustReleased(0, 38) then
            RageUI.Visible(RMenu:Get('Vehmenu', 'main'), not RageUI.Visible(RMenu:Get('Vehmenu', 'main')))
            TriggerServerEvent('ARP_Core:LoadVehicles')
        end
    end
end)

------------------------------------------------------------
-- 觀賞車輛
------------------------------------------------------------
function ShowVehicle(model)
    local veh = CreateVehicle(GetHashKey(model), -47.29, -1096.97, 25.42, 159.2, true, false)
    