RegisterServerEvent('ARP_Core:LoadVehicles')
AddEventHandler('ARP_Core:LoadVehicles', function()
    local source = source
    MySQL.Async.fetchAll('SELECT * FROM arp_vehicles', {}, function(result)
        if result then
            for k, v in ipairs(result) do 
                TriggerClientEvent('ARP_Core:VehicleMenu', source, v.model, v.label, v.price)
            end
        end
    end)
end)