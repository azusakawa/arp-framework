local ARP = {}

--------------------------------------------------------------------------------
-- 獲得物品
--------------------------------------------------------------------------------
function ARP.GetInventory(item)
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
                TriggerClientEvent('ARP:Notify', source, 'You have ~r~same~s~ item in your inventory')
                add = true
                break
            end
        end

        if not add then
            MySQL.Async.fetchScalar('INSERT INTO user_inventory (identifier, item) VALUES (@identifier, @item)', {
                ['@identifier'] = GetPlayerIdentifier(source),
                ['@item'] = item
            })
        end
    end)
end

RegisterServerEvent('ARP:GetInventory')
AddEventHandler('ARP:GetInventory', function(item)
    ARP.GetInventory(item)
end)

--------------------------------------------------------------------------------
-- 給予物品
--------------------------------------------------------------------------------
function ARP.GetInventory(target, limit)
    local source = source
    MySQL.Async.fetchAll('SELECT item FROM user_inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(target),
    }, function(result)
        if result then
            for i = 1, #result do 
                if result[i].item == limit then
                    TriggerClientEvent('ARP:Notify', source, 'He has same item in her inventory')
                else
                    MySQL.Async.fetchAll('SELECT item FROM user_inventory WHERE identifier = @identifier', {
                        ['@identifier'] = GetPlayerIdentifier(source),
                    }, function(result)
                        if result then
                            MySQL.Async.execute('DELETE FROM user_inventory WHERE item = @item',{
                                ['@item'] = limit,
                            })
                            TriggerClientEvent('ARP:PlayerInventory', source)
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
end

RegisterServerEvent('ARP:GiveInventory')
AddEventHandler('ARP:GiveInventory', function(target)
    ARP.GetInventory(target)
end)

--------------------------------------------------------------------------------
-- 丟棄物品
--------------------------------------------------------------------------------
function ARP.ThrowInventory(limit)
    local source = source
    MySQL.Async.fetchAll('SELECT * FROM items', {}, function(label)
        for i = 1, #label do 
            if label[i].label == limit then
                MySQL.Async.execute('DELETE FROM user_inventory WHERE item = @item',{
                    ['@item'] = label[i].name,
                }, function(result)
                    ARP.LoadInventory(source)
                end)
            end
        end
    end)
end

RegisterServerEvent('ARP:ThrowInventory')
AddEventHandler('ARP:ThrowInventory', function(limit)
    ARP.ThrowInventory(limit)
end)

--------------------------------------------------------------------------------
-- 取得玩家物品
--------------------------------------------------------------------------------
function ARP.LoadInventory()
    local source = source
    MySQL.Async.fetchAll('SELECT item FROM user_inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
    }, function(inventory)
        for i = 1, #inventory do
            MySQL.Async.fetchAll('SELECT * FROM items', {}, function(label)
                for j = 1, #label do 
                    if label[j].name == inventory[i].item then
                        TriggerClientEvent('ARP:PlayerInventory', source, label[j].label)
                    end
                end
            end)
        end
    end)
end

RegisterServerEvent('ARP:LoadInventory')
AddEventHandler('ARP:LoadInventory', function()
    ARP.LoadInventory()
end)
