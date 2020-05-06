local ARP = {}

--------------------------------------------------------------------------------
-- 獲得/更新 物品
--------------------------------------------------------------------------------
function ARP.UpdateInventory(item, count)
    local source = source
    MySQL.Async.fetchScalar('SELECT item FROM user_inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
    }, function(result)
        if result ~= item then
            MySQL.Async.fetchScalar('INSERT INTO user_inventory (identifier, item, count) VALUES (@identifier, @item, @count)', {
            ['@count'] = count,
            ['@identifier'] = GetPlayerIdentifier(source),
            ['@item'] = item,
            })
        else
            MySQL.Async.execute('UPDATE user_inventory SET `count` = @count WHERE identifier = @identifier AND item = @item', {
                ['@count'] = count,
                ['@identifier'] = GetPlayerIdentifier(source),
                ['@item'] = item,
            })
        end
        ARP.GetInventory()
    end)
end

RegisterServerEvent('ARP:UpdateInventory')
AddEventHandler('ARP:UpdateInventory', function(item, count)
    ARP.UpdateInventory(item, count)
end)

--------------------------------------------------------------------------------
-- 取得玩家物品
--------------------------------------------------------------------------------
function ARP.GetInventory()
    local source = source
    MySQL.Async.fetchScalar('SELECT item FROM user_inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
    }, function(result)
        TriggerClientEvent('ARP:PlayerInventory', source, result)
    end)
end

RegisterServerEvent('ARP:GetInventory')
AddEventHandler('ARP:GetInventory', function()
    ARP.GetInventory()
end)