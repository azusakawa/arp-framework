------------------------------------------------------------
-- 讀取車輛
------------------------------------------------------------
RegisterServerEvent('ARP_Core:LoadVehicles')
AddEventHandler('ARP_Core:LoadVehicles', function()
    local source = source
    exports.ghmattimysql:scalar('SELECT * FROM arp_vehicles', {}, function(result)
        if result then
            for k, v in ipairs(result) do 
                TriggerClientEvent('ARP_Core:VehicleMenu', source, v.model, v.label, v.price)
            end
        end
    end)
end)

------------------------------------------------------------
-- 設定玩家車輛
------------------------------------------------------------
RegisterServerEvent('ARP_Core:SetVehicleToPlayer')
AddEventHandler('ARP_Core:SetVehicleToPlayer', function(plate, model)
    local source = source
    exports.ghmattimysql:execute('INSERT INTO arp_user_vehicles (identifier, plate, model) VALUES (@identifier, @plate, @model)', {
        ['@identifier'] = GetPlayerIdentifier(source),
        ['@plate'] = plate,
        ['@model'] = json.encode(model)
    })
end)