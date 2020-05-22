------------------------------------------------------------
-- 獲得車輛
------------------------------------------------------------
RegisterServerEvent('ARP_Core:GetVehicles')
AddEventHandler('ARP_Core:GetVehicles', function()
    local source = source
    exports.ghmattimysql:execute('SELECT * FROM arp_user_vehicles WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source)
    }, function(result)
        for i = 1, #result do 
            local model = json.decode(result[i].model)
            TriggerClientEvent('ARP_Core:GarageMenu', source, result[i].plate, model[2], result[i].position, result[i].statu)
        end
    end)
end)

------------------------------------------------------------
-- 儲存車輛
------------------------------------------------------------
RegisterServerEvent('ARP_Core:StoreVehicle')
AddEventHandler('ARP_Core:StoreVehicle', function(plate, position)
    local source = source
    exports.ghmattimysql:execute('SELECT * FROM arp_user_vehicles WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source)
    }, function(result)
        for i = 1, #result do
            if result[i].plate == plate then
                exports.ghmattimysql:execute('UPDATE arp_user_vehicles SET position = @position WHERE plate = @plate', {
                    ['@plate'] = plate,
                    ['@position'] = position 
                })
                TriggerClientEvent('ARP_Core:Notify', source, '車輛已~g~安全~s~放入車庫')
                TriggerClientEvent('ARP_Core:DeleteStoreVehicle', source)
            elseif result[i].plate ~= plate then
                TriggerClientEvent('ARP_Core:Notify', source, '你並~r~未擁有~s~這輛車')
            end
        end
    end)
end)

------------------------------------------------------------
-- 丟棄車輛
------------------------------------------------------------
AddEventHandler('playerDropped', function (reason)
    local source = source
    local pound = {
        'RoyLowensteinBlvd',
    }
    exports.ghmattimysql:execute('SELECT * FROM arp_user_vehicles WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source)
    }, function(result)
        for k, v in pairs(pound) do 
            if result[1].position == v and result[1].statu == 0 then
                exports.ghmattimysql:execute('UPDATE arp_user_vehicles SET statu = @statu', {
                    ['@statu'] = 1
                })
            end
        end
    end)
end)