------------------------------------------------------------
-- 讀取車輛
------------------------------------------------------------
RegisterServerEvent('ARP:LoadVehicles')
AddEventHandler('ARP:LoadVehicles', function()
    local source = source
    MySQL.Async.fetchAll('SELECT * FROM arp_vehicles', {}, function(result)
        if result then
            for k, v in ipairs(result) do 
                TriggerClientEvent('ARP:VehicleMenu', source, v.model, v.label, v.price)
            end
        end
    end)
end)

------------------------------------------------------------
-- 設定玩家車輛
------------------------------------------------------------
RegisterServerEvent('ARP:SetVehicleToPlayer')
AddEventHandler('ARP:SetVehicleToPlayer', function(plate, model)
    local source = source
    MySQL.Async.execute('INSERT INTO arp_user_vehicles (identifier, plate, model) VALUES (@identifier, @plate, @model)', {
        ['@identifier'] = GetPlayerIdentifier(source),
        ['@plate'] = plate,
        ['@model'] = json.encode(model)
    })
end)