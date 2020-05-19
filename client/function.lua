local ARP = {}

------------------------------------------------------------
-- 3D 右上文字
------------------------------------------------------------
ARP.DisplayText3D = function(text)  
    SetTextComponentFormat('STRING')
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

------------------------------------------------------------
-- 3D 文字
------------------------------------------------------------
ARP.Draw3DTxt = function(x, y, z, r, g, b, text)  
    SetTextScale(0.4, 0.4)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(r, g, b, 255)
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry('STRING')
    SetTextCentre(1)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

------------------------------------------------------------
-- 通知
------------------------------------------------------------
ARP.Notify = function(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(true, true)
end

------------------------------------------------------------
-- 讀取Model
------------------------------------------------------------
ARP.LoadModel = function(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(10)
    end
end

------------------------------------------------------------
-- 獲取附近玩家
------------------------------------------------------------
ARP.GetClosestPlayer = function()
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

------------------------------------------------------------
-- 伺服器回傳
------------------------------------------------------------
RegisterNetEvent('ARP:DisplayText3D')
AddEventHandler('ARP:DisplayText3D', function(text)  
    ARP.DisplayText3D(text)
end)

RegisterNetEvent('ARP:Draw3DTxt')
AddEventHandler('ARP:Draw3DTxt', function(x, y, z, r, g, b, text)  
    ARP.Draw3DTxt(x, y, z, r, g, b, text)
end)

RegisterNetEvent('ARP:Notify')
AddEventHandler('ARP:Notify', function(text)  
    ARP.Notify(text)
end)