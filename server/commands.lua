------------------------------------------------------------
-- 扣押車輛
------------------------------------------------------------
RegisterServerEvent('ARP:UpdateVehicleStatu')
AddEventHandler('ARP:UpdateVehicleStatu', function(plate)
    MySQL.Async.fetchAll('SELECT * FROM arp_user_vehicles', {}, function(result)
        for i = 1, #result do 
            if plate == result[i].plate then
                MySQL.Async.execute('UPDATE arp_user_vehicles SET position = @position, statu = @statu WHERE plate = @plate', {
                    ['@plate'] = result[i].plate,
                    ['@position'] = 'RoyLowensteinBlvd',
                    ['@statu'] = 1, 
                })
            end
        end
    end)
end)

------------------------------------------------------------
-- 取回車輛
------------------------------------------------------------
RegisterServerEvent('ARP:SetVehicleTakeOut')
AddEventHandler('ARP:SetVehicleTakeOut', function(plate)
    local source = source
    MySQL.Async.fetchAll('SELECT * FROM arp_user_vehicles WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source)
    }, function(result)
        MySQL.Async.execute('UPDATE arp_user_vehicles SET statu = @statu WHERE plate = @plate', {
            ['@plate'] = plate,
            ['@statu'] = 0,
        })
    end)
end)