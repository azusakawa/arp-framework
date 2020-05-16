-------------------------------------------------------------------------------
-- 獲得物品
--------------------------------------------------------------------------------
RegisterServerEvent('ARP_Core:GetInventory')
AddEventHandler('ARP_Core:GetInventory', function(item)
    local source = source
    MySQL.Async.fetchAll('SELECT item FROM user_inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
    }, function(result)
        local inventory = {}
        local add = false

        for i = 1, #result do
            table.insert(inventory, result[i].item)
        end

        for _, v in pairs(inventory) do 
            if v == item then
                TriggerClientEvent('ARP_Core:Notify', source, 'You have ~r~same~s~ item in your inventory')
                add = true
                break
            end
        end

        if not add then
            MySQL.Async.fetchScalar('INSERT INTO user_inventory (identifier, item) VALUES (@identifier, @item)', {
                ['@identifier'] = GetPlayerIdentifier(source),
                ['@item'] = item
            })
            ARP.LoadInventory(source)
        end
    end)
end)

--------------------------------------------------------------------------------
-- 給予物品
--------------------------------------------------------------------------------
RegisterServerEvent('ARP_Core:GiveInventory')
AddEventHandler('ARP_Core:GiveInventory', function(target, limit)
    local source = source
    MySQL.Async.fetchAll('SELECT item FROM user_inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(target),
    }, function(result)
        if result then
            for i = 1, #result do 
                if result[i].item == limit then
                    TriggerClientEvent('ARP_Core:Notify', source, 'He has same item in her inventory')
                else
                    MySQL.Async.fetchAll('SELECT item FROM user_inventory WHERE identifier = @identifier', {
                        ['@identifier'] = GetPlayerIdentifier(source),
                    }, function(result)
                        if result then
                            MySQL.Async.execute('DELETE FROM user_inventory WHERE item = @item',{
                                ['@item'] = limit,
                            })
                            ARP.LoadInventory(source)
                        end
                    end)
                    MySQL.Async.fetchScalar('INSERT INTO user_inventory (identifier, item) VALUES (@identifier, @item)', {
                        ['@identifier'] = GetPlayerIdentifier(target),
                        ['@item'] = limit
                    })
                end
            end
        end
    end) 
end)

--------------------------------------------------------------------------------
-- 丟棄物品
--------------------------------------------------------------------------------
RegisterServerEvent('ARP_Core:ThrowInventory')
AddEventHandler('ARP_Core:ThrowInventory', function(limit)
    local source = source
    MySQL.Async.fetchAll('SELECT * FROM arp_items', {}, function(label)
        for i = 1, #label do 
            if label[i].label == limit then
                MySQL.Async.execute('DELETE FROM arp_user_inventory WHERE item = @item',{
                    ['@item'] = label[i].name,
                }, function(result)
                    ARP.LoadInventory(source)
                end)
            end
        end
    end)
end)

--------------------------------------------------------------------------------
-- 取得玩家物品
--------------------------------------------------------------------------------
RegisterServerEvent('ARP_Core:LoadInventory')
AddEventHandler('ARP_Core:LoadInventory', function()
    local source = source
    MySQL.Async.fetchAll('SELECT item FROM arp_user_inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
    }, function(inventory)
        for i = 1, #inventory do
            MySQL.Async.fetchAll('SELECT * FROM arp_items', {}, function(label)
                for j = 1, #label do 
                    if label[j].name == inventory[i].item then
                        TriggerClientEvent('ARP_Core:InentoryMenu', source, label[j].label)
                    end
                end
            end)
        end
    end)
end)
