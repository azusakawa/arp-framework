------------------------------------------------------------
-- 外觀選單
------------------------------------------------------------
RMenu.Add('skinmenu', 'main', RageUI.CreateMenu('Clothes Shop', 'clothes menu'))
local SkinMenu = {
    face = 1,
    skin = 1,
    hair = 1,
    hair2 = 1,
    haircolor = 1,
    haircolor2 = 1,
}

RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'main'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'main'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Face', SkinMenu.face, 45, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadBlendData(ped, SkinMenu.face, SkinMenu.face, SkinMenu.face, SkinMenu.skin, SkinMenu.skin, SkinMenu.skin, 1.0, 1.0, 1.0, true)
            end
            SkinMenu.face = index
        end)
        RageUI.Progress('Skin', SkinMenu.skin, 45, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadBlendData(ped, SkinMenu.face, SkinMenu.face, SkinMenu.face, SkinMenu.skin, SkinMenu.skin, SkinMenu.skin, 1.0, 1.0, 1.0, true)
            end
            SkinMenu.skin = index
        end)
        RageUI.Progress('Hair', SkinMenu.hair, (GetNumberOfPedDrawableVariations(ped, 2) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 2, SkinMenu.hair, 0, 0)
            end
            SkinMenu.hair = index
        end)
        RageUI.Progress('Hair 2', SkinMenu.hair2, (GetNumberOfPedTextureVariations(ped, 2, SkinMenu.hair) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 2, SkinMenu.hair, SkinMenu.hair2, 2)
            end
            SkinMenu.hair2 = index
        end)
        RageUI.Progress('Hair Color', SkinMenu.haircolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHairColor(ped, SkinMenu.haircolor, SkinMenu.haircolor2)
            end
            SkinMenu.haircolor = index
        end)
        RageUI.Progress('Hair Color 2', SkinMenu.haircolor2, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHairColor(ped, SkinMenu.haircolor, SkinMenu.haircolor2)
            end
            SkinMenu.haircolor2 = index
        end)
    end, function()
    end)
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        if IsControlJustPressed(1, 38) then
            RageUI.Visible(RMenu:Get('skinmenu', 'main'), not RageUI.Visible(RMenu:Get('skinmenu', 'main')))
        end
    end
end)