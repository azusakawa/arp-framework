------------------------------------------------------------
-- 車庫選單
------------------------------------------------------------
local garage = {}

RegisterNetEvent('ARP_Core:GarageMenu')
AddEventHandler('ARP_Core:GarageMenu', function(plate, model, position, statu)
    for i = 1, #garage do 
        table.remove(garage, i)
    end
    Citizen.Wait(10)

    table.insert(garage, {plate = plate, model = model, position = position, statu = statu})
end)

------------------------------------------------------------
-- 車庫
------------------------------------------------------------
local garagepos = {
    San_Andreas_Ave = {
        Name = 'SanAndreasAve',
        Marker = vector3(213.62, -809.25, 30.01),
        Spawn = vector3(227.63, -804.68, 29.56),
        Delete = vector3(223.80, -760.42, 29.65),
        Heading = 164.62
    },
    Adams_Apple_Blvd = {
        Name = 'AdamsAppleBlvd',
        Marker = vector3(453.29, -1145.99, 28.51),
        Spawn = vector3(443.37, -1148.77, 28.29),
        Delete = vector3(436.6, -1168.95, 28.29),
        Heading = 1.73
    },
    Vespucci_Blvd = {
        Name = 'VespucciBlvd',
        Marker = vector3(-281.02, -888.06, 30.32),
        Spawn = vector3(-276.38, -899.35, 30.08),
        Delete = vector3(-284.76, -918.22, 30.08),
        Heading = 339.9
    },
    Maze_Bank_Arena = {
        Name = 'MazeBankArena',
        Marker = vector3(-73.21, -2004.12, 17.28),
        Spawn = vector3(-79.24, -2017.01, 17.02),
        Delete = vector3(-108.14, -1985.11, 17.02),
        Heading = 84.03
    },
    Autopia_Pkwy = {
        Name = 'AutopiaPkwy',
        Marker = vector3(-795.86, -2023.41, 8.17),
        Spawn = vector3(-778.68, -2028.13, 7.87),
        Delete = vector3(-779.25, -2039.68, 7.88),
        Heading = 39.86
    },
    Del_Perro_Fwy = {
        Name = 'DelPerroFwy',
        Marker = vector3(-2030.65, -465.32, 10.6),
        Spawn = vector3(-2020.61, -462.11, 10.55),
        Delete = vector3(-2054.53, -437.79, 10.52),
        Heading = 323.13
    },
    Great_Ocean_Hwy = {
        Name = 'GreatOceanHwy',
        Marker = vector3(83.9, 6420.5, 30.76),
        Spawn = vector3(105.44, 6404.18, 30.34),
        Delete = vector3(98.34, 6374.79, 30.23),
        Heading = 48.77
    },
    Spanish_Ave = {
        Name = 'SpanishAve',
        Marker = vector3(68.13, 13.2, 68.21),
        Spawn = vector3(72.21, 13.07, 68.91),
        Delete = vector3(73.87, 23.55, 68.3),
        Heading = 156.76
    },
    Clinton_Ave_1 = {
        Name = 'ClintonAve1',
        Marker = vector3(638.52, 206.68, 96.6),
        Spawn = vector3(651.07, 200.88, 94.81),
        Delete = vector3(628.05, 196.55, 96.24),
        Heading = 73.62
    },
    Clinton_Ave_2 = {
        Name = 'ClintonAve2',
        Marker = vector3(362.43, 298.56, 102.88),
        Spawn = vector3(369.82, 292.3, 102.35),
        Delete = vector3(359.82, 272.31, 102.1),
        Heading = 349.29
    },
}

local poundpos = {
    Roy_Lowenstein_Blvd = {
        Name = 'RoyLowensteinBlvd',
        Marker = vector3(410.27, -1623.86, 28.29),
        Spawn = vector3(410.95, -1636.71, 28.29),
        Heading = 230.36
    }
}

Citizen.CreateThread(function()
    for _, v in pairs(garagepos) do 
        local blip = AddBlipForCoord(v.Marker)

        SetBlipSprite (blip, 290)
        SetBlipColour (blip, 38)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName('車庫')
        EndTextCommandSetBlipName(blip)
    end
    for _, v in pairs(poundpos) do 
        local blip = AddBlipForCoord(v.Marker)

        SetBlipSprite (blip, 290)
        SetBlipColour (blip, 17)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName('扣押場')
        EndTextCommandSetBlipName(blip)
    end
end)

------------------------------------------------------------
-- 車輛選單
------------------------------------------------------------
RMenu.Add('Garagemenu', 'main', RageUI.CreateMenu('車庫', '車庫選單'))
RMenu.Add('Poundmenu', 'main', RageUI.CreateMenu('扣押場', '扣押場選單'))
local GarageMenu = {
    action = {
        '駕駛'
    },
}

RageUI.CreateWhile(1.0, RMenu:Get('Garagemenu', 'main'), nil, function()
    RageUI.IsVisible(RMenu:Get('Garagemenu', 'main'), true, true, true, function()
        for k, v in pairs(garage) do 
            RageUI.List(v.plate, GarageMenu.action, 1, nil, {}, true, function(hovered, active, selected, index)
                if selected then
                    if index == 1 then
                        DriveVehicle(v.plate, v.model, v.position, v.statu)
                    end
                end
            end)
        end
    end, function()
    end)
end)

RageUI.CreateWhile(1.0, RMenu:Get('Poundmenu', 'main'), nil, function()
    RageUI.IsVisible(RMenu:Get('Poundmenu', 'main'), true, true, true, function()
        for k, v in pairs(garage) do 
            RageUI.List(v.plate, GarageMenu.action, 1, nil, {}, true, function(hovered, active, selected, index)
                if selected then
                    if index == 1 then
                        DriveVehicle(v.plate, v.model, v.position, v.statu)
                    end
                end
            end)
        end
    end, function()
    end)
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        for _, v in pairs(garagepos) do
            DrawMarker(1, v.Marker, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.0, 0, 0, 255, 150, false, true, 2, false, nil, nil, false)
            DrawMarker(1, v.Spawn, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, 1.0, 0, 255, 0, 150, false, true, 2, false, nil, nil, false)
            DrawMarker(1, v.Delete, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, 1.0, 255, 0, 0, 150, false, true, 2, false, nil, nil, false)
            local PlyToDelete = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.Delete)
            local PlyToSpawn = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.Marker)
            if PlyToDelete < 3.0 then
                ARP.DisplayText3D('按 ~INPUT_PICKUP~ 儲存車輛')
                if IsControlJustReleased(0, 38) then
                    if IsPedInVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId(), false), true) then
                        CheckVehicle(v.Name)
                    end
                end
            end
            if PlyToSpawn < 1.5 then
                ARP.DisplayText3D('按 ~INPUT_PICKUP~ 開啟車庫')
                if IsControlJustReleased(0, 38) then
                    RageUI.Visible(RMenu:Get('Garagemenu', 'main'), not RageUI.Visible(RMenu:Get('Garagemenu', 'main')))
                    TriggerServerEvent('ARP_Core:GetVehicles')
                end
            end
        end
        for _, v in pairs(poundpos) do
            DrawMarker(1, v.Marker, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.0, 0, 0, 255, 150, false, true, 2, false, nil, nil, false)
            DrawMarker(1, v.Spawn, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, 1.0, 0, 255, 0, 150, false, true, 2, false, nil, nil, false)
            local PlyToSpawn = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.Marker)
            if PlyToSpawn < 1.5 then
                ARP.DisplayText3D('按 ~INPUT_PICKUP~ 開啟扣押場')
                if IsControlJustReleased(0, 38) then
                    RageUI.Visible(RMenu:Get('Poundmenu', 'main'), not RageUI.Visible(RMenu:Get('Poundmenu', 'main')))
                    TriggerServerEvent('ARP_Core:GetVehicles')
                end
            end
        end
    end
end)

------------------------------------------------------------
-- 檢查車輛
------------------------------------------------------------
function CheckVehicle(position)
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    local plate = GetVehicleNumberPlateText(vehicle)
    TriggerServerEvent('ARP_Core:StoreVehicle', plate, position)
end

RegisterNetEvent('ARP_Core:DeleteStoreVehicle')
AddEventHandler('ARP_Core:DeleteStoreVehicle', function()
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
    DeleteEntity(vehicle)
end)

------------------------------------------------------------
-- 取出車輛
------------------------------------------------------------
function DriveVehicle(plate, model, position, statu)
    for _, k in pairs(garagepos) do
        local PlyToPos = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), k.Marker)
        if PlyToPos < 1.5 then    
            if statu == 0 then
                if position == k.Name then
                    SpawnVehicle(plate, model, k.Spawn, k.Heading)
                    RageUI.CloseAll()
                else
                    ARP.Notify('你的車輛並不在~g~此車庫~s~，請前往~r~其他~s~車庫')
                end
            else
                ARP.Notify('你的車輛並不在~g~車庫~s~，請前往~r~扣押場')
            end
        end
    end
    for _, k in pairs(poundpos) do 
        local PlyToPos = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), k.Marker)
        if PlyToPos < 1.5 then
            if statu == 1 then
                SpawnVehicle(plate, model, k.Spawn, k.Heading)
                TriggerServerEvent('ARP_Core:SetVehicleTakeOut', plate)
                RageUI.CloseAll()
            else
                ARP.Notify('你的車輛並不在~g~扣押場~s~，請前往~r~車庫')
            end
        end
    end
end

function SpawnVehicle(plate, model, position, heading)
    ARP.LoadModel(model)
    local PlayerVeh = CreateVehicle(model, position, heading, true, false)
    SetEntityAsMissionEntity(PlayerVeh, true, false)
    SetVehicleNumberPlateText(PlayerVeh, plate)
    SetVehRadioStation(PlayerVeh, 'OFF')
    SetVehicleHasBeenOwnedByPlayer(PlayerVeh, true)
    SetPedIntoVehicle(PlayerPedId(), PlayerVeh, -1)
end