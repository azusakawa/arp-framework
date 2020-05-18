------------------------------------------------------------
-- 扣押車輛
------------------------------------------------------------
RegisterCommand("dv", function()
    local ped = GetPlayerPed(-1)

    if (DoesEntityExist(ped) and not IsEntityDead(ped)) then 
        local pos = GetEntityCoords(ped)

        if (IsPedSittingInAnyVehicle(ped)) then 
            local vehicle = GetVehiclePedIsIn(ped, false)

            if (GetPedInVehicleSeat(vehicle, -1) == ped) then 
                local plate = GetVehicleNumberPlateText(vehicle)
                TriggerServerEvent('ARP:UpdateVehicleStatu', plate)
                DeleteEntity(vehicle)
                ARP.Notify("車輛已~g~成功~s~拖吊!")
            else 
                ARP.Notify("你~r~必須~s~在駕駛座上!")
            end
        else
            ARP.Notify("你~r~必須~s~坐在車內!")
        end 
    end
end, false)