RegisterServerEvent('ARP_Core:skinsave')
AddEventHandler('ARP_Core:skinsave', function(skin)
    local source = source
    MySQL.Async.execute('UPDATE users SET skin = @skin WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source)
        ['@skin'] = json.encode(skin)
    })
end)