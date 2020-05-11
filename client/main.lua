------------------------------------------------------------
-- 接收玩家登入資訊
------------------------------------------------------------
AddEventHandler('playerSpawned', function()     
    TriggerServerEvent('ARP_Core:SpawnPlayer')
end)

------------------------------------------------------------
-- 紀錄玩家位置/生成
------------------------------------------------------------
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(10000)
        LastPosX, LastPosY, LastPosZ = table.unpack(GetEntityCoords(GetPlayerPed(-1), true)) 
        TriggerServerEvent('ARP_Core:UpdatePosition', LastPosX, LastPosY, LastPosZ)
    end
end)

RegisterNetEvent('ARP_Core:lastPosition')
AddEventHandler('ARP_Core:lastPosition', function(PosX, PosY, PosZ)  
    Citizen.Wait(1000)

    SetEntityCoords(GetPlayerPed(-1), PosX, PosY, PosZ, 1, 0, 0, 1)
end)
