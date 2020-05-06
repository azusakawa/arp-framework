local ARP = {}

--------------------------------------------------------------------------------
-- 獲得/更新 物品
--------------------------------------------------------------------------------
function ARP.UpdateInventory(item)
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
                ['@item'] = item,
            })
        end
    end)
end

RegisterServerEvent('ARP:UpdateInventory')
AddEventHandler('ARP:UpdateInventory', function(item)
    ARP.UpdateInventory(item)
end)

--------------------------------------------------------------------------------
-- 取得玩家物品
--------------------------------------------------------------------------------
function ARP.GetInventory()
    local source = source
    MySQL.Async.fetchAll('SELECT item FROM user_inventory WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
    }, function(inventory)
        for i = 1, #inventory do
            TriggerClientEvent('ARP:PlayerInventory', source, inventory[i].item)
        end
    end)
end

RegisterServerEvent('ARP:GetInventory')
AddEventHandler('ARP:GetInventory', function()
    ARP.GetInventory()
end)