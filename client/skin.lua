-----------------------------------------------------------
-- 外觀選單
------------------------------------------------------------
RMenu.Add('skinmenu', 'main', RageUI.CreateMenu('服飾店', '外觀選單'))
RMenu.Add('skinmenu', 'Skin', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), '膚色', nil))
RMenu.Add('skinmenu', 'Face', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), '身軀外觀', nil))
RMenu.Add('skinmenu', 'Body', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), '服裝儀容', nil))
RMenu.Add('skinmenu', 'Other', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), '裝飾配件', nil))

local SkinMenu = {
    sex = 1,
    face = 1,
    skin = 1,
    age = 1,
    age2 = 1,
    beard = 1,
    beardsize = 1,
    beardcolor = 1,
    beardcolor2 = 1, 
    hair = 1,
    hair2 = 1,
    haircolor = 1,
    haircolor2 = 1,
    eyecolor = 1,
    eyebrows = 1,
    eyebrowssize = 1,
    eyebrowscolor = 1,
    eyebrowscolor2 = 1,
    makeup = 1,
    makeupsize = 1,
    makeupcolor = 1,
    makeupcolor2 = 1,
    lipstick = 1,
    lipsticksize = 1,
    lipstickcolor = 1,
    lipstickcolor2 = 1,
    blemishes = 1,
    blemishessize = 1,
    blus = 1,
    blussize = 1,
    bluscolor = 1,
    complexion = 1,
    complexionsize = 1,
    sun = 1,
    sunsize = 1,
    moles = 1,
    molessize = 1,
    chest = 1,
    chestsize = 1,
    chestcolor = 1,
    bodyb = 1,
    bodybsize = 1, 
    ears = 1,
    esarssize = 1,
    tshirt = 1,
    tshirtsize = 1,
    torso = 1,
    torsosize = 1,
    decals = 1,
    decalssize = 1,
    arms = 1,
    armssize = 1,
    pants = 1,
    pantssize = 1,
    shoes = 1,
    shoessize = 1,
    mask = 1,
    masksize = 1,
    bproof = 1,
    bproofsize = 1,
    chain = 1,
    chainsize = 1,
    bags = 1,
    bagssize = 1,
    helmet = 1,
    helmetsize = 1,
    glasses = 1,
    glassessize = 1,
    watches = 1,
    watchessize = 1,
    bracelets = 1,
    braceletssize = 1,
}
------------------------------------------------------------
-- 角色相機
------------------------------------------------------------
function CreateSkinCam()
    cam = CreateCam('DEFAULT_SCRIPTED_CAMERA')
    local coordsCam = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 1.5, 0.15)
    local coordsPly = GetEntityCoords(PlayerPedId())
	SetCamCoord(cam, coordsCam)
	PointCamAtCoord(cam, coordsPly['x'], coordsPly['y'], coordsPly['z'])
    SetCamActive(cam, true)
    RenderScriptCams(true, true, 1, true, true)
    SetEntityHeading(PlayerPedId(), 190.0)
    FreezeEntityPosition(PlayerPedId(), true)
end

function DeleteSkinCam()
    SetCamActive(cam, false)
    RenderScriptCams(false, true, 1, true, true)
    FreezeEntityPosition(PlayerPedId(), false)
end

function LoadPedModel(bool)
    if bool == true then
        defaultModel = GetHashKey('mp_m_freemode_01')
    else
        defaultModel = GetHashKey('mp_f_freemode_01')
    end

    RequestModel(defaultModel)
    while not HasModelLoaded(defaultModel) do
        Citizen.Wait(1)
    end
    SetPlayerModel(PlayerId(), defaultModel)
    SetPedDefaultComponentVariation(PlayerPedId())
    SetModelAsNoLongerNeeded(defaultModel) 
end


local ped = PlayerPedId()
------------------------------------------------------------
-- 膚色 & 性別
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'Skin'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'Skin'), true, true, true, function()
        RageUI.Progress('性別', SkinMenu.sex, 2, nil, true, true, function(hovered, active, selected, index)
            if selected then
                if index == 1 then
                    LoadPedModel(true)
                elseif index == 2 then
                    LoadPedModel(false)
                end
            end
            SkinMenu.sex = index
        end)
        RageUI.Progress('膚色', SkinMenu.skin, 45, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadBlendData(ped, SkinMenu.face, SkinMenu.face, SkinMenu.face, SkinMenu.skin, SkinMenu.skin, SkinMenu.skin, 1.0, 1.0, 1.0, true)
            end
            SkinMenu.skin = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 身軀外觀
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'Face'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'Face'), true, true, true, function()
        RageUI.Progress('臉型', SkinMenu.face, 45, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadBlendData(ped, SkinMenu.face, SkinMenu.face, SkinMenu.face, SkinMenu.skin, SkinMenu.skin, SkinMenu.skin, 1.0, 1.0, 1.0, true)
            end
            SkinMenu.face = index
        end)
        RageUI.Progress('眼睛顏色', SkinMenu.eyecolor, 31, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedEyeColor(ped, SkinMenu.eyecolor, 0, 1)
            end
            SkinMenu.eyecolor = index
        end)
        RageUI.Progress('斑點', SkinMenu.blemishes, (GetNumHeadOverlayValues(0)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 0, SkinMenu.blemishes, (SkinMenu.blemishessize/10) + 0.0)
            end
            SkinMenu.blemishes = index
        end)
        RageUI.Progress('斑點樣式', SkinMenu.blemishessize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 0, SkinMenu.blemishes, (SkinMenu.blemishessize/10) + 0.0)
            end
            SkinMenu.blemishessize = index
        end)
        RageUI.Progress('鬍鬚', SkinMenu.beard, (GetNumHeadOverlayValues(1)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 1, SkinMenu.beard, (SkinMenu.beardsize/10) + 0.0)
            end
            SkinMenu.beard = index
        end)
        RageUI.Progress('鬍鬚樣式', SkinMenu.beardsize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 1, SkinMenu.beard, (SkinMenu.beardsize/10) + 0.0)
            end
            SkinMenu.beardsize = index
        end)
        RageUI.Progress('鬍鬚顏色', SkinMenu.beardcolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 1, 1, SkinMenu.beardcolor, SkinMenu.beardcolor2)
            end
            SkinMenu.beardcolor = index
        end)
        RageUI.Progress('鬍鬚顏色2', SkinMenu.beardcolor2, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 1, 1, SkinMenu.beardcolor, SkinMenu.beardcolor2)
            end
            SkinMenu.beardcolor2 = index
        end)
        RageUI.Progress('眉毛', SkinMenu.eyebrows, (GetNumHeadOverlayValues(2)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 2, SkinMenu.eyebrows, (SkinMenu.eyebrowssize/10) + 0.0)
            end
            SkinMenu.eyebrows = index
        end)
        RageUI.Progress('眉毛樣式', SkinMenu.eyebrowssize, (GetNumHeadOverlayValues(2)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 2, SkinMenu.eyebrows, (SkinMenu.eyebrowssize/10) + 0.0)
            end
            SkinMenu.eyebrowssize = index
        end)
        RageUI.Progress('眉毛顏色', SkinMenu.eyebrowscolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 2, 1, SkinMenu.eyebrowscolor, SkinMenu.eyebrowscolor2)
            end
            SkinMenu.eyebrowscolor = index
        end)
        RageUI.Progress('眉毛顏色2', SkinMenu.eyebrowscolor2, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 2, 1, SkinMenu.eyebrowscolor, SkinMenu.eyebrowscolor2)
            end
            SkinMenu.eyebrowscolor2 = index
        end)
        RageUI.Progress('皺紋', SkinMenu.age, (GetNumHeadOverlayValues(3)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 3, SkinMenu.age, (SkinMenu.age2/10) + 0.0)
            end
            SkinMenu.age = index
        end)
        RageUI.Progress('皺紋樣式', SkinMenu.age2, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 3, SkinMenu.age, (SkinMenu.age2/10) + 0.0)
            end
            SkinMenu.age2 = index
        end)
        RageUI.Progress('裝容', SkinMenu.makeup, (GetNumHeadOverlayValues(4)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 4, SkinMenu.makeup, (SkinMenu.makeupsize/10) + 0.0)
            end
            SkinMenu.makeup = index
        end)
        RageUI.Progress('裝容樣式', SkinMenu.makeupsize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 4, SkinMenu.makeup, (SkinMenu.makeupsize/10) + 0.0)
            end
            SkinMenu.makeupsize = index
        end)
        RageUI.Progress('裝容顏色', SkinMenu.makeupcolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 4, 1, SkinMenu.makeupcolor, SkinMenu.makeupcolor2)
            end
            SkinMenu.makeupcolor = index
        end)
        RageUI.Progress('裝容顏色2', SkinMenu.makeupcolor2, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 4, 1, SkinMenu.makeupcolor, SkinMenu.makeupcolor2)
            end
            SkinMenu.makeupcolor2 = index
        end)
        RageUI.Progress('腮紅', SkinMenu.blus, (GetNumHeadOverlayValues(5)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 5, SkinMenu.blus, (SkinMenu.blussize/10) + 0.0)
            end
            SkinMenu.blus = index
        end)
        RageUI.Progress('腮紅樣式', SkinMenu.blussize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 5, SkinMenu.blus, (SkinMenu.blussize/10) + 0.0)
            end
            SkinMenu.blussize = index
        end)
        RageUI.Progress('腮紅顏色2', SkinMenu.bluscolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 5, 2, SkinMenu.bluscolor)
            end
            SkinMenu.bluscolor = index
        end)
        RageUI.Progress('氣色', SkinMenu.complexion, (GetNumHeadOverlayValues(6)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 6, SkinMenu.complexion, (SkinMenu.complexionsize/10) + 0.0)
            end
            SkinMenu.complexion = index
        end)
        RageUI.Progress('氣色樣式', SkinMenu.complexionsize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 6, SkinMenu.complexion, (SkinMenu.complexionsize/10) + 0.0)
            end
            SkinMenu.complexionsize = index
        end)
        RageUI.Progress('曬痕', SkinMenu.sun, (GetNumHeadOverlayValues(7)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 7, SkinMenu.sun, (SkinMenu.sunsize/10) + 0.0)
            end
            SkinMenu.sun = index
        end)
        RageUI.Progress('曬痕樣式', SkinMenu.sunsize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 7, SkinMenu.sun, (SkinMenu.sunsize/10) + 0.0)
            end
            SkinMenu.sunsize = index
        end)
        RageUI.Progress('口紅', SkinMenu.lipstick, (GetNumHeadOverlayValues(8)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 8, SkinMenu.lipstick, (SkinMenu.lipsticksize/10) + 0.0)
            end
            SkinMenu.lipstick = index
        end)
        RageUI.Progress('口紅樣式', SkinMenu.lipsticksize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 8, SkinMenu.lipstick, (SkinMenu.lipsticksize/10) + 0.0)
            end
            SkinMenu.lipsticksize = index
        end)
        RageUI.Progress('口紅顏色', SkinMenu.lipstickcolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 8, 1, SkinMenu.lipstickcolor, SkinMenu.lipstickcolor2)
            end
            SkinMenu.lipstickcolor = index
        end)
        RageUI.Progress('口紅顏色2', SkinMenu.lipstickcolor2, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 8, 1, SkinMenu.lipstickcolor, SkinMenu.lipstickcolor2)
            end
            SkinMenu.lipstickcolor2 = index
        end)       
        RageUI.Progress('痣', SkinMenu.moles, (GetNumHeadOverlayValues(9)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 9, SkinMenu.moles, (SkinMenu.molessize/10) + 0.0)
            end
            SkinMenu.moles = index
        end)
        RageUI.Progress('痣樣式', SkinMenu.molessize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 9, SkinMenu.moles, (SkinMenu.molessize/10) + 0.0)
            end
            SkinMenu.molessize = index
        end)
        RageUI.Progress('胸毛', SkinMenu.chest, (GetNumHeadOverlayValues(10)-1), nil, true, true, function(hovered, active, selected, index)
            CreateSkinCam(0.4)
            if active then
                SetPedHeadOverlay(ped, 10, SkinMenu.chest, (SkinMenu.chestsize/10) + 0.0)
            end
            SkinMenu.chest = index
        end)
        RageUI.Progress('胸毛樣式', SkinMenu.chestsize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 10, SkinMenu.chest, (SkinMenu.chestsize/10) + 0.0)
            end
            SkinMenu.chestsize = index
        end)
        RageUI.Progress('胸毛顏色', SkinMenu.chestcolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 10, 1, SkinMenu.chestcolor)
            end
            SkinMenu.chestcolor = index
        end)
        RageUI.Progress('身軀斑點', SkinMenu.bodyb, (GetNumHeadOverlayValues(11)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 11, SkinMenu.bodyb, (SkinMenu.bodybsize/10) + 0.0)
            end
            SkinMenu.bodyb = index
        end)
        RageUI.Progress('身軀斑點樣式', SkinMenu.bodybsize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 11, SkinMenu.bodyb, (SkinMenu.bodybsize/10) + 0.0)
            end
            SkinMenu.bodybsize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 服裝儀容
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'Body'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'Body'), true, true, true, function()
        RageUI.Progress('面具', SkinMenu.mask, (GetNumberOfPedDrawableVariations(ped, 1) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 1, SkinMenu.mask, SkinMenu.masksize, 2)
            end
            SkinMenu.mask = index
        end)
        RageUI.Progress('面具樣式', SkinMenu.masksize, (GetNumberOfPedTextureVariations(ped, 1, SkinMenu.mask)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 1, SkinMenu.mask, SkinMenu.masksize, 2)
            end
            SkinMenu.masksize = index
        end)
        RageUI.Progress('頭髮', SkinMenu.hair, (GetNumberOfPedDrawableVariations(ped, 2) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 2, SkinMenu.hair, SkinMenu.hair2, 2)
            end
            SkinMenu.hair = index
        end)
        RageUI.Progress('頭髮2', SkinMenu.hair2, (GetNumberOfPedTextureVariations(ped, 2, SkinMenu.hair) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 2, SkinMenu.hair, SkinMenu.hair2, 2)
            end
            SkinMenu.hair2 = index
        end)
        RageUI.Progress('頭髮顏色', SkinMenu.haircolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHairColor(ped, SkinMenu.haircolor, SkinMenu.haircolor2)
            end
            SkinMenu.haircolor = index
        end)
        RageUI.Progress('頭髮顏色2', SkinMenu.haircolor2, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHairColor(ped, SkinMenu.haircolor, SkinMenu.haircolor2)
            end
            SkinMenu.haircolor2 = index
        end)
        RageUI.Progress('手臂', SkinMenu.arms, (GetNumberOfPedDrawableVariations(ped, 3) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 3, SkinMenu.arms, SkinMenu.armssize, 2)
            end
            SkinMenu.arms = index
        end)
        RageUI.Progress('手臂樣式', SkinMenu.armssize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 3, SkinMenu.arms, SkinMenu.armssize, 2)
            end
            SkinMenu.armssize = index
        end)
        RageUI.Progress('褲子', SkinMenu.pants, (GetNumberOfPedDrawableVariations(ped, 4) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 4, SkinMenu.pants, SkinMenu.pantssize, 2)
            end
            SkinMenu.pants = index
        end)
        RageUI.Progress('褲子樣式', SkinMenu.pantssize, (GetNumberOfPedTextureVariations(ped, 4, SkinMenu.pants)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 4, SkinMenu.pants, SkinMenu.pantssize, 2)
            end
            SkinMenu.pantssize = index
        end)
        RageUI.Progress('背包', SkinMenu.bags, (GetNumberOfPedDrawableVariations(ped, 5) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 5, SkinMenu.bags, SkinMenu.bagssize, 2)
            end
            SkinMenu.bags = index
        end)
        RageUI.Progress('背包樣式', SkinMenu.bagssize, (GetNumberOfPedTextureVariations(ped, 5, SkinMenu.bags)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 5, SkinMenu.bags, SkinMenu.bagssize, 2)
            end
            SkinMenu.bagssize = index
        end)
        RageUI.Progress('鞋子', SkinMenu.shoes, (GetNumberOfPedDrawableVariations(ped, 6) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 6, SkinMenu.shoes, SkinMenu.shoessize, 2)
            end
            SkinMenu.shoes = index
        end)
        RageUI.Progress('鞋子樣式', SkinMenu.shoessize, (GetNumberOfPedTextureVariations(ped, 6, SkinMenu.shoes)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 6, SkinMenu.shoes, SkinMenu.shoessize, 2)
            end
            SkinMenu.shoessize = index
        end)
        RageUI.Progress('項鍊', SkinMenu.chain, (GetNumberOfPedDrawableVariations(ped, 7) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 7, SkinMenu.chain, SkinMenu.chainsize, 2)
            end
            SkinMenu.chain = index
        end)
        RageUI.Progress('項鍊樣式', SkinMenu.chainsize, (GetNumberOfPedTextureVariations(ped, 7, SkinMenu.chain)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 7, SkinMenu.chain, SkinMenu.chainsize, 2)
            end
            SkinMenu.chainsize = index
        end)
        RageUI.Progress('T-Shirt', SkinMenu.tshirt, (GetNumberOfPedDrawableVariations(ped, 8) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 8, SkinMenu.tshirt, SkinMenu.tshirtsize, 2)
            end
            SkinMenu.tshirt = index
        end)
        RageUI.Progress('T-Shirt樣式', SkinMenu.tshirtsize, GetNumberOfPedTextureVariations(ped, 8, SkinMenu.tshirt - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 8, SkinMenu.tshirt, SkinMenu.tshirtsize, 2)
            end
            SkinMenu.tshirtsize = index
        end)
        RageUI.Progress('防彈背心', SkinMenu.bproof, (GetNumberOfPedDrawableVariations(ped, 9) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 9, SkinMenu.bproof, SkinMenu.bproofsize, 2)
            end
            SkinMenu.bproof = index
        end)
        RageUI.Progress('防彈背心樣式', SkinMenu.bproofsize, (GetNumberOfPedTextureVariations(ped, 9, SkinMenu.bproof)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 9, SkinMenu.bproof, SkinMenu.bproofsize, 2)
            end
            SkinMenu.bproofsize = index
        end)
        RageUI.Progress('徽章', SkinMenu.decals, (GetNumberOfPedDrawableVariations(ped, 10) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 10, SkinMenu.decals, SkinMenu.decalssize, 2)
            end
            SkinMenu.decals = index
        end)
        RageUI.Progress('徽章樣式', SkinMenu.decalssize, GetNumberOfPedTextureVariations(ped, 10, SkinMenu.decals - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 10, SkinMenu.decals, SkinMenu.decalssize, 2)
            end
            SkinMenu.decalssize = index
        end)
        RageUI.Progress('外衣', SkinMenu.torso, (GetNumberOfPedDrawableVariations(ped, 11) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 11, SkinMenu.torso, SkinMenu.tshirtsize, 2)
            end
            SkinMenu.torso = index
        end)
        RageUI.Progress('外衣樣式', SkinMenu.torsosize, GetNumberOfPedTextureVariations(ped, 11, SkinMenu.torso - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 11, SkinMenu.torso, SkinMenu.torsosize, 2)
            end
            SkinMenu.torsosize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 裝飾配件
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'Other'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'Other'), true, true, true, function()
        RageUI.Progress('帽子', SkinMenu.helmet, (GetNumberOfPedDrawableVariations(ped, 0) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                if SkinMenu.helmet == 0 then
                    ClearPedProp(ped, 0)
                else
                    SetPedPropIndex(ped, 0, SkinMenu.helmet, SkinMenu.helmetsize, 2)
                end
            end
            SkinMenu.helmet = index
        end)
        RageUI.Progress('帽子樣式', SkinMenu.helmetsize, (GetNumberOfPedTextureVariations(ped, 0, SkinMenu.helmet)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedPropIndex(ped, 0, SkinMenu.helmet, SkinMenu.helmetsize, 2)
            end
            SkinMenu.helmetsize = index
        end)
        RageUI.Progress('眼鏡', SkinMenu.glasses, (GetNumberOfPedDrawableVariations(ped, 1) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                if SkinMenu.glasses == 0 then
                    ClearPedProp(ped, 1)
                else
                    SetPedPropIndex(ped, 1, SkinMenu.glasses, SkinMenu.glassessize, 2)
                end
            end
            SkinMenu.glasses = index
        end)
        RageUI.Progress('眼鏡樣式', SkinMenu.glassessize, (GetNumberOfPedTextureVariations(ped, 1, SkinMenu.glasses)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedPropIndex(ped, 1, SkinMenu.glasses, SkinMenu.glassessize, 2)
            end
            SkinMenu.glassessize = index
        end)
        RageUI.Progress('耳飾', SkinMenu.ears, (GetNumberOfPedPropDrawableVariations(ped, 2) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                if SkinMenu.ears == 0 then
                    ClearPedProp(ped, 2)
                else
                    SetPedPropIndex(ped, 2, SkinMenu.ears, SkinMenu.esarssize, 2)
                end
            end
            SkinMenu.ears = index
        end)
        RageUI.Progress('耳飾樣式', SkinMenu.esarssize, GetNumberOfPedPropTextureVariations(ped, 2, SkinMenu.ears - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedPropIndex(ped, 2, SkinMenu.ears, SkinMenu.esarssize, 2)
            end
            SkinMenu.esarssize = index
        end)
        RageUI.Progress('手錶', SkinMenu.watches, (GetNumberOfPedDrawableVariations(ped, 6) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                if SkinMenu.watches == 0 then
                    ClearPedProp(ped, 6)
                else
                    SetPedPropIndex(ped, 6, SkinMenu.watches, SkinMenu.watchessize, 2)
                end
            end
            SkinMenu.watches = index
        end)
        RageUI.Progress('手錶樣式', SkinMenu.watchessize, (GetNumberOfPedTextureVariations(ped, 6, SkinMenu.watches)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedPropIndex(ped, 6, SkinMenu.watches, SkinMenu.watchessize, 2)
            end
            SkinMenu.watchessize = index
        end)
        RageUI.Progress('手鐲', SkinMenu.bracelets, (GetNumberOfPedDrawableVariations(ped, 7) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                if SkinMenu.bracelets == 0 then
                    ClearPedProp(ped, 7)
                else
                    SetPedPropIndex(ped, 7, SkinMenu.bracelets, SkinMenu.braceletssize, 2)
                end
            end
            SkinMenu.bracelets = index
        end)
        RageUI.Progress('手鐲樣式', SkinMenu.braceletssize, (GetNumberOfPedTextureVariations(ped, 7, SkinMenu.bracelets)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedPropIndex(ped, 7, SkinMenu.bracelets, SkinMenu.braceletssize, 2)
            end
            SkinMenu.braceletssize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 選單
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'main'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'main'), true, true, true, function()
        RageUI.Button("膚色 & 性別", nil, {RightLabel = "→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'Skin'))
        RageUI.Button("身軀外觀", nil, {RightLabel = "→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'Face'))
        RageUI.Button("服裝儀容", nil, {RightLabel = "→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'Body'))
        RageUI.Button("裝飾配件", nil, {RightLabel = "→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'Other'))
        RageUI.Button("保存外觀", nil, {}, true, function(hovered, active, selected)
            if selected then
                TriggerEvent('ARP:SkinSave')
                RageUI.CloseAll()
                DeleteSkinCam()
            end
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 服飾店
------------------------------------------------------------
local ARP_Core = {}
ARP_Core.ClothingShops = {
    vector3(72.3, -1399.1, 28.4),
	vector3(-703.8, -152.3, 36.4),
	vector3(-167.9, -299.0, 38.7),
	vector3(428.7, -800.1, 28.5),
	vector3(-829.4, -1073.7, 10.3),
	vector3(-1447.8, -242.5, 48.8),
	vector3(11.6, 6514.2, 30.9),
	vector3(123.6, -219.4, 53.6),
	vector3(1696.3, 4829.3, 41.1),
	vector3(618.1, 2759.6, 41.1),
	vector3(1190.6, 2713.4, 37.2),
	vector3(-1193.4, -772.3, 16.3),
	vector3(-3172.5, 1048.1, 19.9),
	vector3(-1108.4, 2708.9, 18.1)
}

Citizen.CreateThread(function()
    for _, shop in ipairs(ARP_Core.ClothingShops) do 
        local blip = AddBlipForCoord(shop)

        SetBlipSprite (blip, 73)
        SetBlipColour (blip, 47)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName('服飾店')
        EndTextCommandSetBlipName(blip)
    end
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        for _, shop in ipairs(ARP_Core.ClothingShops) do 
            DrawMarker(1, shop, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.0, 165, 42, 42, 150, false, true, 2, false, nil, nil, false)

            local PlyToShop = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), shop)
            if PlyToShop < 1.5 then
                ARP.DisplayText3D('按 ~INPUT_PICKUP~ 開啟選單')
                if IsControlJustReleased(0, 38) then
                    RageUI.Visible(RMenu:Get('skinmenu', 'main'), not RageUI.Visible(RMenu:Get('skinmenu', 'main')))
                    CreateSkinCam()
                end
            end
        end
    end
end)

------------------------------------------------------------
-- 保存外觀
------------------------------------------------------------
RegisterNetEvent('ARP:SkinSave')
AddEventHandler('ARP:SkinSave', function()  
    local playerskin = {}
    local skin = {
        SkinMenu.sex,
        SkinMenu.face,
        SkinMenu.skin,
        SkinMenu.age,
        SkinMenu.age2,
        SkinMenu.beard,
        SkinMenu.beardsize,
        SkinMenu.beardcolor,
        SkinMenu.beardcolor2, 
        SkinMenu.hair,
        SkinMenu.hair2,
        SkinMenu.haircolor,
        SkinMenu.haircolor2,
        SkinMenu.eyecolor,
        SkinMenu.eyebrows,
        SkinMenu.eyebrowssize,
        SkinMenu.eyebrowscolor,
        SkinMenu.eyebrowscolor2,
        SkinMenu.makeup,
        SkinMenu.makeupsize,
        SkinMenu.makeupcolor,
        SkinMenu.makeupcolor2,
        SkinMenu.lipstick,
        SkinMenu.lipsticksize,
        SkinMenu.lipstickcolor,
        SkinMenu.lipstickcolor2,
        SkinMenu.blemishes,
        SkinMenu.blemishessize,
        SkinMenu.blus,
        SkinMenu.blussize,
        SkinMenu.bluscolor,
        SkinMenu.complexion,
        SkinMenu.complexionsize,
        SkinMenu.sun,
        SkinMenu.sunsize,
        SkinMenu.moles,
        SkinMenu.molessize,
        SkinMenu.chest,
        SkinMenu.chestsize,
        SkinMenu.chestcolor,
        SkinMenu.bodyb,
        SkinMenu.bodybsize, 
        SkinMenu.ears,
        SkinMenu.esarssize,
        SkinMenu.tshirt,
        SkinMenu.tshirtsize,
        SkinMenu.torso,
        SkinMenu.torsosize,
        SkinMenu.decals,
        SkinMenu.decalssize,
        SkinMenu.arms,
        SkinMenu.armssize,
        SkinMenu.pants,
        SkinMenu.pantssize,
        SkinMenu.shoes,
        SkinMenu.shoessize,
        SkinMenu.mask,
        SkinMenu.masksize,
        SkinMenu.bproof,
        SkinMenu.bproofsize,
        SkinMenu.chain,
        SkinMenu.chainsize,
        SkinMenu.bags,
        SkinMenu.bagssize,
        SkinMenu.helmet,
        SkinMenu.helmetsize,
        SkinMenu.glasses,
        SkinMenu.glassessize,
        SkinMenu.watches,
        SkinMenu.watchessize,
        SkinMenu.bracelets,
        SkinMenu.braceletssize,                    
    }
    for i = 1, #skin do 
        table.insert(playerskin, skin[i])
    end  

    TriggerServerEvent('ARP:SavePlayerSkin', playerskin)
end)

------------------------------------------------------------
-- 外觀讀取/設置
------------------------------------------------------------
RegisterNetEvent('ARP:SetPlayerSkin')
AddEventHandler('ARP:SetPlayerSkin', function(pedskin)
    Citizen.Wait(1000)
    if pedskin[1] == 1 then
        defaultModel = GetHashKey('mp_m_freemode_01')
    elseif pedskin[1] == 2 then
        defaultModel = GetHashKey('mp_f_freemode_01')
    end
    RequestModel(defaultModel)
    while not HasModelLoaded(defaultModel) do
        Citizen.Wait(1)
    end
    SetPlayerModel(PlayerId(), defaultModel)
    SetPedDefaultComponentVariation(PlayerPedId())
    SetModelAsNoLongerNeeded(defaultModel) 

    SetPedHeadBlendData(PlayerPedId(), pedskin[2], pedskin[2], pedskin[2], pedskin[3], pedskin[3], pedskin[3], 1.0, 1.0, 1.0, true)
    SetPedEyeColor(PlayerPedId(), pedskin[14], 0, 1)
    SetPedHeadOverlay(PlayerPedId(), 0, pedskin[27], (pedskin[28]/10) + 0.0)
    SetPedHeadOverlay(PlayerPedId(), 1, pedskin[6], (pedskin[7]/10) + 0.0)
    SetPedHeadOverlayColor(PlayerPedId(), 1, 1, pedskin[8], pedskin[9])
    SetPedHeadOverlay(PlayerPedId(), 2, pedskin[15], (pedskin[16]/10) + 0.0)
    SetPedHeadOverlayColor(PlayerPedId(), 2, 1, pedskin[17], pedskin[18])
    SetPedHeadOverlay(PlayerPedId(), 3, pedskin[4], (pedskin[5]/10) + 0.0)
    SetPedHeadOverlay(PlayerPedId(), 4, pedskin[19], (pedskin[20]/10) + 0.0)
    SetPedHeadOverlayColor(PlayerPedId(), 4, 1, pedskin[21], pedskin[22])
    SetPedHeadOverlay(PlayerPedId(), 5, pedskin[29], (pedskin[30]/10) + 0.0)
    SetPedHeadOverlayColor(PlayerPedId(), 5, 2, pedskin[31])
    SetPedHeadOverlay(PlayerPedId(), 6, pedskin[32], (pedskin[33]/10) + 0.0)
    SetPedHeadOverlay(PlayerPedId(), 7, pedskin[34], (pedskin[35]/10) + 0.0)
    SetPedHeadOverlay(PlayerPedId(), 8, pedskin[23], (pedskin[24]/10) + 0.0)
    SetPedHeadOverlayColor(PlayerPedId(), 8, 1, pedskin[25], pedskin[26])
    SetPedHeadOverlay(PlayerPedId(), 9, pedskin[36], (pedskin[37]/10) + 0.0)
    SetPedHeadOverlay(PlayerPedId(), 10, pedskin[38], (pedskin[39]/10) + 0.0)
    SetPedHeadOverlayColor(PlayerPedId(), 10, 1, pedskin[40])
    SetPedHeadOverlay(PlayerPedId(), 11, pedskin[41], (pedskin[42]/10) + 0.0)
    SetPedComponentVariation(PlayerPedId(), 1, pedskin[57], pedskin[58], 2)
    SetPedComponentVariation(PlayerPedId(), 2, pedskin[10], pedskin[11], 2)
    SetPedHairColor(PlayerPedId(), pedskin[12], pedskin[13])
    SetPedComponentVariation(PlayerPedId(), 3, pedskin[51], pedskin[52], 2)
    SetPedComponentVariation(PlayerPedId(), 4, pedskin[53], pedskin[54], 2)
    SetPedComponentVariation(PlayerPedId(), 5, pedskin[63], pedskin[64], 2)
    SetPedComponentVariation(PlayerPedId(), 6, pedskin[55], pedskin[56], 2)
    SetPedComponentVariation(PlayerPedId(), 7, pedskin[61], pedskin[62], 2)
    SetPedComponentVariation(PlayerPedId(), 8, pedskin[45], pedskin[46], 2)
    SetPedComponentVariation(PlayerPedId(), 9, pedskin[59], pedskin[60], 2)
    SetPedComponentVariation(PlayerPedId(), 10, pedskin[49], pedskin[50], 2)
    SetPedComponentVariation(PlayerPedId(), 11, pedskin[47], pedskin[48], 2)
    if pedskin[65] == 0 then
        ClearPedProp(PlayerPedId(), 0)
    else
        SetPedPropIndex(PlayerPedId(), 0, pedskin[65], pedskin[66], 2)
    end
    if pedskin[67] == 0 then
        ClearPedProp(PlayerPedId(), 1)
    else
        SetPedPropIndex(PlayerPedId(), 1, pedskin[67], pedskin[68], 2)
    end
    if pedskin[43] == 0 then
        ClearPedProp(PlayerPedId(), 2)
    else
        SetPedPropIndex(PlayerPedId(), 2, pedskin[43], pedskin[44], 2)
    end
    if pedskin[69] == 0 then
        ClearPedProp(PlayerPedId(), 6)
    else
        SetPedPropIndex(PlayerPedId(), 6, pedskin[69], pedskin[70], 2)
    end
    if pedskin[71] == 0 then
        ClearPedProp(PlayerPedId(), 7)
    else
        SetPedPropIndex(PlayerPedId(), 7, pedskin[71], pedskin[72], 2)
    end
end)