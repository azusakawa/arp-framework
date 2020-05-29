------------------------------------------------------------
-- 登入
------------------------------------------------------------
AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local source = source
    local identifiers = GetPlayerIdentifiers(source)
    local identifier
    deferrals.defer()

    for _, id in ipairs(identifiers) do 
        if string.match(id, 'steam:') then
            identifier = id
            break
        end
    end

    Wait(0)

    if not identifier then
        deferrals.done('您尚未連接到Steam')
    else
        deferrals.done()
        PlayerJoin(source)
    end
end)

------------------------------------------------------------
-- 註冊 Steam
------------------------------------------------------------
function PlayerJoin(playerId)
    local identifier

    for _, id in ipairs(GetPlayerIdentifiers(playerId)) do 
        if string.match(id, 'steam:') then
            identifier = id 
            break
        end
    end

    if identifier then
        exports.ghmattimysql:scalar('SELECT 1 FROM arp_users WHERE identifier = @identifier', {
            ['@identifier'] = identifier
        }, function(result)
            if not result then
                exports.ghmattimysql:execute('INSERT INTO arp_users (identifier) VALUES (@identifier)', {
                    ['@identifier'] = identifier
                })               
            end
        end)
    end
end

------------------------------------------------------------
-- 紀錄玩家位置/生成
------------------------------------------------------------
RegisterServerEvent('ARP_Core:UpdatePosition')
AddEventHandler('ARP_Core:UpdatePosition', function(PosX, PosY, PosZ)
    exports.ghmattimysql:execute('UPDATE arp_users SET position = @position WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
        ['@position'] = '{' .. PosX .. ', ' .. PosY .. ', ' .. PosZ .. '}',
    })
end)

RegisterServerEvent('ARP_Core:SpawnPlayer')
AddEventHandler('ARP_Core:SpawnPlayer', function()
    local source = source
    exports.ghmattimysql:execute('SELECT * FROM arp_users WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source)
    }, function(result)
        if result[1].skin ~= nil then
            local Spawnpos = json.decode(result[1].position)
            TriggerClientEvent('ARP_Core:lastPosition', source, Spawnpos[1], Spawnpos[2], Spawnpos[3], true)
        else
            TriggerClientEvent('ARP_Core:lastPosition', source, -269.4, -955.3, 31.2, false)
        end
    end)
end)

------------------------------------------------------------
-- 版本確認
------------------------------------------------------------
PerformHttpRequest('https://raw.githubusercontent.com/azusakawa/arp-framework/master/fxmanifest.lua', function (errorCode, result, headers)
    local version = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)

    if string.find(tostring(result), version) == nil then
        print('\n[arp-framework] 當前版本過舊請更新版本')
        print('[Discord] https://discord.gg/6xXwJyc\n')
    else
        print('\n[arp-framework] 最新版本！！！')
        print('[Discord] https://discord.gg/6xXwJyc\n')
    end
end, 'GET', '', '')
