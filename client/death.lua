--------------------------------------------------------------------------------
-- 死亡
--------------------------------------------------------------------------------
IsDead = false
local seconds = 150

function IsPedDeath()
    TriggerServerEvent('ARP:UpdateDeath', IsDead)
    local player = GetEntityCoords(PlayerPedId())
	if seconds > 1 then 
        TriggerEvent('ARP:draw3Dtxt', player.x, player.y, player.z, 255, 255, 255, '~w~你已經死亡! 還有 ~r~' .. seconds .. '~w~ 秒後可以復活')
	end
   	if seconds < 1 then 
        TriggerEvent('ARP:draw3Dtxt', player.x, player.y, player.z, 255, 255, 255, '~w~按 ~w~[~r~E~w~] 復活')
    end 
    if IsControlJustReleased(1, 38) and seconds < 1 then 
        local playerPos = GetEntityCoords(GetPlayerPed(-1), true)
        IsDead = false
        DoScreenFadeOut(1500)
        Citizen.Wait(1500)
        NetworkResurrectLocalPlayer(playerPos, true, true, false)
        SetPlayerInvincible(GetPlayerPed(-1), false)
        ClearPedBloodDamage(GetPlayerPed(-1))
        SetEntityHealth(GetPlayerPed(-1), 200) 
        DoScreenFadeIn(1500)
        seconds = 150
        TriggerServerEvent('ARP:UpdateDeath', IsDead)
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        if seconds > 0 and IsDead == true then 
            seconds = seconds -1
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local health = GetEntityHealth(GetPlayerPed(-1))
        if health < 2 then
            IsDead = true  
        end
        if IsDead == true then
            exports.spawnmanager:setAutoSpawn(false)                
            IsPedDeath()         
 	    end
	end
end)

--------------------------------------------------------------------------------
-- 死亡離線
--------------------------------------------------------------------------------
RegisterNetEvent('ARP:PlayerIsDead')
AddEventHandler('ARP:PlayerIsDead', function()
    TriggerEvent('ARP:notify', '您在~r~死亡~w~時離線，請呼叫~g~醫護人員')
    SetEntityHealth(GetPlayerPed(-1), 0)
end)

AddEventHandler('playerSpawned', function()
    TriggerServerEvent('ARP:CheckIsDead')
end)