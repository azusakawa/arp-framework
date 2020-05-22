-------------------------------------------------------------------------------
-- 獲得物品
------------------------------------------------------------
RegisterServerEvent('ARP_Core:GetInventory')
AddEventHandler('ARP_Core:GetInventory', function(item)
    local source = source
    exports.ghmattimysql:scalar('SELECT item FROM user_inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
    }, function(result)
        local inventory = {}
        local add = false

        for i = 1, #result do
            table.insert(inventory, result[i].item)
        end

        for _, v in pairs(inventory) do 
            if v == item then
                TriggerClientEvent('ARP_Core:Notify', source, '你已經擁有~r~相同~s~的物品在你的背包')
                add = true
                break
            end
        end

        if not add then
            exports.ghmattimysql:scalar('INSERT INTO user_inventory (identifier, item) VALUES (@identifier, @item)', {
                ['@identifier'] = GetPlayerIdentifier(source),
                ['@item'] = item
            })
            TriggerEvent('ARP_Core:LoadInventory')
        end
    end)
end)

------------------------------------------------------------
-- 給予物品
------------------------------------------------------------
RegisterServerEvent('ARP_Core:GiveInventory')
AddEventHandler('ARP_Core:GiveInventory', function(target, limit)
    local source = source
    exports.ghmattimysql:scalar('SELECT item FROM user_inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(target),
    }, function(result)
        if result then
            for i = 1, #result do 
                if result[i].item == limit then
                    TriggerClientEvent('ARP_Core:Notify', source, '對方已擁有相同的物品')
                else
                    exports.ghmattimysql:scalar('SELECT item FROM user_inventory WHERE identifier = @identifier', {
                        ['@identifier'] = GetPlayerIdentifier(source),
                    }, function(result)
                        if result then
                            exports.ghmattimysql:execute('DELETE FROM user_inventory WHERE item = @item',{
                                ['@item'] = limit,
                            })
                            TriggerEvent('ARP_Core:LoadInventory')
                        end
                    end)
                    exports.ghmattimysql:scalar('INSERT INTO user_inventory (identifier, item) VALUES (@identifier, @item)', {
                        ['@identifier'] = GetPlayerIdentifier(target),
                        ['@item'] = limit
                    })
                end
            end
        end
    end) 
end)

------------------------------------------------------------
-- 丟棄物品
------------------------------------------------------------
RegisterServerEvent('ARP_Core:ThrowInventory')
AddEventHandler('ARP_Core:ThrowInventory', function(limit)
    local source = source
    exports.ghmattimysql:scalar('SELECT * FROM arp_items WHERE label = @label', {
        ['@label'] = limit
    }, function(label)
        exports.ghmattimysql:execute('DELETE FROM arp_user_inventory WHERE item = @item',{
            ['@item'] = label,
        }, function(result)
            TriggerEvent('ARP_Core:LoadInventory')
        end)
    end)
end)

------------------------------------------------------------
-- 取得玩家物品
------------------------------------------------------------
RegisterServerEvent('ARP_Core:LoadInventory')
AddEventHandler('ARP_Core:LoadInventory', function()
    local source = source
    exports.ghmattimysql:scalar('SELECT item FROM arp_user_inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
    }, function(inventory)
        if inventory then
            exports.ghmattimysql:execute('SELECT * FROM arp_items WHERE name = @name', {
                ['@name'] = inventory
            }, function(label)
                for i = 1, #label do 
                    if label[i].name == inventory then
                        TriggerClientEvent('ARP_Core:InentoryMenu', source, label[i].label)
                    end
                end
            end)
        else
            TriggerClientEvent('ARP_Core:Notify', source, '你的背包裡什麼也~r~沒有')
        end
    end)
end)
