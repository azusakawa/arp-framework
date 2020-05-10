------------------------------------------------------------
-- 紀錄死亡
------------------------------------------------------------
RegisterServerEvent('ARP_Core:UpdateDeath')
AddEventHandler('ARP_Core:UpdateDeath', function(IsDead)
    local source = source
    if type(IsDead) == 'boolean' then
        MySQL.Async.execute('UPDATE users SET isdead = @isdead WHERE identifier = @identifier', {
            ['@identifier'] = GetPlayerIdentifier(source),
            ['@isdead'] = IsDead,
        })
    end
end)

------------------------------------------------------------
-- 檢查死亡離線
------------------------------------------------------------
RegisterServerEvent('ARP_Core:CheckIsDead')
AddEventHandler('ARP_Core:CheckIsDead', function()
    local source = source
    MySQL.Async.fetchScalar('SELECT isdead FROM users WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifier(source),
    }, function(dead)
        if dead == 1 then
            TriggerClientEvent('ARP_Core:PlayerIsDead', source)
        end
    end)
end)