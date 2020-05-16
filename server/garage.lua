------------------------------------------------------------
-- 獲得車輛
------------------------------------------------------------
RegisterServerEvent('ARP_Core:GetVehicles')
AddEventHandler('ARP_Core:GetVehicles', function()
    local source = source
    MySQL.Async.fetchAll('SELECT * FROM arp_user_vehicles WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
    }, function(result)
        for k, v in ipairs(result) do
            local model = json.decode(v.model)
            TriggerClientEvent('ARP_Core:GarageMenu', source, v.plate, model[2], v.position, v.statu)
        end
    end)
end)

------------------------------------------------------------
-- 儲存車輛
------------------------------------------------------------
RegisterServerEvent('ARP_Core:StoreVehicle')
AddEventHandler('ARP_Core:StoreVehicle', function(plate, position)
    local source = source
    MySQL.Async.fetchAll('SELECT * FROM arp_user_vehicles WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source)
    }, function(result)
        for i = 1, #result do
            if result[i].plate == plate then
                MySQL.Async.execute('UPDATE arp_user_vehicles SET position = @position WHERE plate = @plate', {
                    ['@plate'] = plate,
                    ['@position'] = position 
                })
                TriggerClientEvent('ARP_Core:Notify', source, '車輛已~g~安全~s~放入車庫')
                TriggerClientEvent('ARP_Core:DeleteStoreVehicle', source)
            else
                TriggerClientEvent('ARP_Core:Notify', source, '你並~r~未擁有~s~這輛車')
            end
        end
    end)
end)