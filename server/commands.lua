------------------------------------------------------------
-- 扣押車輛
------------------------------------------------------------
RegisterServerEvent('ARP_Core:UpdateVehicleStatu')
AddEventHandler('ARP_Core:UpdateVehicleStatu', function(plate)
    exports.ghmattimysql:execute('SELECT * FROM arp_user_vehicles', {}, function(result)
        for i = 1, #result do 
            if plate == result[i].plate then
                exports.ghmattimysql:execute('UPDATE arp_user_vehicles SET position = @position, statu = @statu WHERE plate = @plate', {
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
RegisterServerEvent('ARP_Core:SetVehicleTakeOut')
AddEventHandler('ARP_Core:SetVehicleTakeOut', function(plate)
    local source = source
    exports.ghmattimysql:scalar('SELECT * FROM arp_user_vehicles WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source)
    }, function(result)
        exports.ghmattimysql:execute('UPDATE arp_user_vehicles SET statu = @statu WHERE plate = @plate', {
            ['@plate'] = plate,
            ['@statu'] = 0,
        })
    end)
end)