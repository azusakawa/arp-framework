--------------------------------------------------------------------------------
-- 物品庫更新
--------------------------------------------------------------------------------
RegisterServerEvent('ARP:UpdataInventory')
AddEventHandler('ARP:UpdataInventory', function(item)
    local source = source
    MySQL.Async.execute('UPDATE users SET inventory = @inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
        ['@inventory'] = json.encode(item)
    })
end)

--------------------------------------------------------------------------------
-- 獲取物品庫
--------------------------------------------------------------------------------
RegisterServerEvent('ARP:GetPlayerInventory')
AddEventHandler('ARP:GetPlayerInventory', function()
    local source = source
    MySQL.Async.fetchScalar('SELECT inventory FROM users WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
    }, function(result)
        TriggerClientEvent('ARP:PlayerInventory', source, result)
    end)
end)