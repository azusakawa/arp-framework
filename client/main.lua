------------------------------------------------------------
-- 接收玩家登入資訊
------------------------------------------------------------
AddEventHandler('playerSpawned', function()     
    TriggerServerEvent('ARP:SpawnPlayer')
end)

------------------------------------------------------------
-- 紀錄玩家位置/生成
------------------------------------------------------------
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(10000)
        LastPosX, LastPosY, LastPosZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true)) 
        TriggerServerEvent('ARP:UpdatePosition', LastPosX, LastPosY, LastPosZ)
    end
end)

RegisterNetEvent('ARP:lastPosition')
AddEventHandler('ARP:lastPosition', function(PosX, PosY, PosZ)  
    Citizen.Wait(1000)
    local defaultModel = GetHashKey('mp_m_freemode_01')
    RequestModel(defaultModel)
    while not HasModelLoaded(defaultModel) do
        Citizen.Wait(1)
    end
    SetPlayerModel(PlayerId(), defaultModel)
    SetPedDefaultComponentVariation(PlayerPedId())
    SetModelAsNoLongerNeeded(defaultModel) 

    SetEntityCoords(GetPlayerPed(-1), PosX, PosY, PosZ, 1, 0, 0, 1)
end)
