------------------------------------------------------------
-- 車輛列表
------------------------------------------------------------
local vehicles = {}

RegisterNetEvent('ARP:VehicleMenu')
AddEventHandler('ARP:VehicleMenu', function(model, label, price)
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
    ARP.LoadModel(model)
    
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
-- 設定車牌
------------------------------------------------------------
local num = {}
local char = {}
for i = 48,  57 do table.insert(num, string.char(i)) end
for i = 65,  90 do table.insert(char, string.char(i)) end

function SetPlateNum(length)
    Wait(0)
    if length > 0 then
        return SetPlateNum(length - 1) .. num[math.random(1, #num)]
    else
        return ''
    end
end

function SetPlateChar(length)
    Wait(0)
    if length > 0 then
        return SetPlateChar(length - 1) .. char[math.random(1, #char)]
    else
        return ''
    end
end

------------------------------------------------------------
-- 購買車輛
------------------------------------------------------------
function BuyVehicle(model, label)
    ARP.LoadModel(model)
    local vehmodel = {}
    local plate = SetPlateChar(3) .. SetPlateNum(3)
    local PlayerVeh = CreateVehicle(GetHashKey(model), -30.35, -1089.75, 25.42, 339.4, true, false)
    SetEntityAsMissionEntity(PlayerVeh, true, false)
    SetVehicleNumberPlateText(PlayerVeh, plate)
    SetVehRadioStation(PlayerVeh, 'OFF')
    SetVehicleHasBeenOwnedByPlayer(PlayerVeh, true)
    SetPedIntoVehicle(PlayerPedId(), PlayerVeh, -1)
    SetModelAsNoLongerNeeded(PlayerVeh)
   
    local models = {
        GetVehicleNumberPlateText(PlayerVeh),
        GetHashKey(model)

    }
    for i = 1, #models do 
        table.insert(vehmodel, models[i])
    end
    
    ARP.Notify('你~g~購買~s~了一輛' .. label .. '，車牌號碼: ' .. plate)
    TriggerServerEvent('ARP:SetVehicleToPlayer', GetVehicleNumberPlateText(PlayerVeh), vehmodel)
end

------------------------------------------------------------
-- 車商選單
------------------------------------------------------------
RMenu.Add('Vehmenu', 'main', RageUI.CreateMenu('車商', '車輛選單'))
local VehMenu = {
    action = {
        '觀賞',
        '購買'
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
        for _, v in pairs(vehicles) do 
            RageUI.List(v.label .. ' ~g~$~s~ ' .. v.price, VehMenu.action, VehMenu.list, nil, {}, true, function(hovered, active, selected, index)
                if selected then
                    if index == 1 then
                        ARP.Notify('車輛~g~生成中~s~，請稍後')
                        ShowVehicle(v.model)
                    elseif index == 2 then
                        BuyVehicle(v.model, v.label)
                        DeleteEntity(veh)
                        RageUI.CloseAll()
                    end
                end
                VehMenu.list = index
            end)
        end
    end, function()
    end)
end)

------------------------------------------------------------
-- 車商
------------------------------------------------------------
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(-33.92, -1103.03, 25.42)

    SetBlipSprite (blip, 227)
    SetBlipColour (blip, 0)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName('車輛商店')
    EndTextCommandSetBlipName(blip)
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        DrawMarker(1, -33.92, -1103.03, 25.42, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.0, 255, 255, 255, 150, false, true, 2, false, nil, nil, false)

        local PlyToShop = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), -33.92, -1103.03, 26.42)
        if PlyToShop < 1.5 then
            ARP.DisplayText3D('按 ~g~E~s~ 開啟選單')
            if IsControlJustReleased(0, 38) then
                RageUI.Visible(RMenu:Get('Vehmenu', 'main'), not RageUI.Visible(RMenu:Get('Vehmenu', 'main')))
                TriggerServerEvent('ARP:LoadVehicles')
            end
        end
    end
end)