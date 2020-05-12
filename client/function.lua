------------------------------------------------------------
-- 3D 右上文字
------------------------------------------------------------
RegisterNetEvent('ARP_Core:DisplayText3D')
AddEventHandler('ARP_Core:DisplayText3D', function(text)  
    SetTextComponentFormat('STRING')
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end)

------------------------------------------------------------
-- 3D 文字
------------------------------------------------------------
RegisterNetEvent('ARP_Core:Draw3DTxt')
AddEventHandler('ARP_Core:Draw3DTxt', function(x, y, z, r, g, b, text)  
    SetTextScale(0.4, 0.4)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(r, g, b, 255)
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry('STRING')
    SetTextCentre(1)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end)

------------------------------------------------------------
-- 通知
------------------------------------------------------------
RegisterNetEvent('ARP_Core:Notify')
AddEventHandler('ARP_Core:Notify', function(text)  
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(true, true)
end)
