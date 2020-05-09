------------------------------------------------------------
-- 外觀選單
------------------------------------------------------------
RMenu.Add('skinmenu', 'main', RageUI.CreateMenu('Clothes Shop', 'clothes menu'))
RMenu.Add('skinmenu', 'FaceCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Face Menu', 'face menu'))
RMenu.Add('skinmenu', 'SkinCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Skin Menu', 'skin menu'))
RMenu.Add('skinmenu', 'AgeCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Age Menu', 'age menu'))
RMenu.Add('skinmenu', 'BeardCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Beard Menu', 'beard menu'))
RMenu.Add('skinmenu', 'HairCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Hair Menu', 'hair menu'))
RMenu.Add('skinmenu', 'EyeCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Eye Menu', 'eye menu'))
RMenu.Add('skinmenu', 'EyebrowsCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Eye Brows Menu', 'eye brows menu'))
RMenu.Add('skinmenu', 'MakeupCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Makeup Menu', 'makeup menu'))
RMenu.Add('skinmenu', 'LipstickCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Lipstick Menu', 'lipstick menu'))
RMenu.Add('skinmenu', 'BlemishesCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Blemishes Menu', 'blemishes menu'))
RMenu.Add('skinmenu', 'BlushCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Blush Menu', 'blush menu'))
RMenu.Add('skinmenu', 'ComplexionCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Complexion Menu', 'complexion menu'))
RMenu.Add('skinmenu', 'SunCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Sun Menu', 'sun menu'))
RMenu.Add('skinmenu', 'MolesCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Moles Menu', 'moles menu'))
RMenu.Add('skinmenu', 'ChestCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Chest Menu', 'chest menu'))
RMenu.Add('skinmenu', 'BodybCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Bodyb Menu', 'bodyb menu'))
RMenu.Add('skinmenu', 'EarsCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Ears Menu', 'ears menu'))
RMenu.Add('skinmenu', 'TShirtCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'TShirt Menu', 'tshirt menu'))
RMenu.Add('skinmenu', 'TorsoCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Torso Menu', 'torso menu'))
RMenu.Add('skinmenu', 'DecalsCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Decals Menu', 'decals menu'))
RMenu.Add('skinmenu', 'ArmsCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Arms Menu', 'arms menu'))
RMenu.Add('skinmenu', 'PantsCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Pants Menu', 'pants menu'))
RMenu.Add('skinmenu', 'ShoesCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Shoes Menu', 'shoes menu'))
RMenu.Add('skinmenu', 'MaskCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Mask Menu', 'mask menu'))
RMenu.Add('skinmenu', 'BproofCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Bproof Menu', 'bproof menu'))
RMenu.Add('skinmenu', 'ChainCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Chain Menu', 'chain menu'))
RMenu.Add('skinmenu', 'BagsCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Bags Menu', 'bags menu'))
RMenu.Add('skinmenu', 'HelmetCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Helmet Menu', 'helmet menu'))
RMenu.Add('skinmenu', 'GlassesCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Glasses Menu', 'glasses menu'))
RMenu.Add('skinmenu', 'WatchesCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Watches Menu', 'watches menu'))
RMenu.Add('skinmenu', 'BraceletsCase', RageUI.CreateSubMenu(RMenu:Get('skinmenu', 'main'), 'Bracelets Menu', 'bracelets menu'))

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

RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'main'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'main'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Button("Face" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'FaceCase'))

        RageUI.Button("Skin" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'SkinCase'))

        RageUI.Button("Age" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'AgeCase'))

        RageUI.Button("Beard" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'BeardCase'))

        RageUI.Button("Hair" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'HairCase'))

        RageUI.Button("Eye" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'EyeCase'))

        RageUI.Button("Eye Brows" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'EyebrowsCase'))

        RageUI.Button("Makeup" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'MakeupCase'))

        RageUI.Button("Lipstick" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'LipstickCase'))

        RageUI.Button("Blemishes" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'BlemishesCase'))

        RageUI.Button("Blush" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'BlushCase'))

        RageUI.Button("Complexion" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'ComplexionCase'))

        RageUI.Button("Sun" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'SunCase'))

        RageUI.Button("Moles" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'MolesCase'))

        RageUI.Button("Chest" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'ChestCase'))

        RageUI.Button("Bobyb" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'BobybCase'))

        RageUI.Button("Ears" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'EarsCase'))
        RageUI.Button("T-Shirt" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'TShirtCase'))
        RageUI.Button("Torso" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'TorsoCase'))
        RageUI.Button("Decals" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'DecalsCase'))
        RageUI.Button("Arms" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'ArmsCase'))
        RageUI.Button("Pants" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'PantsCase'))
        RageUI.Button("Shoes" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'ShoesCase'))
        RageUI.Button("Mask" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'MaskCase'))
        RageUI.Button("Bproof" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'BproofCase'))
        RageUI.Button("Chain" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'ChainCase'))
        RageUI.Button("Bags" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'BagsCase'))
        RageUI.Button("Helmet" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'HelmetCase'))
        RageUI.Button("Glasses" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'GlassesCase'))
        RageUI.Button("Watches" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'WatchesCase'))
        RageUI.Button("Bracelets" , nil, {RightLabel = "→→→"}, true, function(hovered, active, selected)
            if selected then
            end
        end, RMenu:Get('skinmenu', 'BraceletsCase'))
    end, function()
    end)
end)

------------------------------------------------------------
-- 臉型
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'SkinCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'SkinCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Skin', SkinMenu.skin, 45, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadBlendData(ped, SkinMenu.face, SkinMenu.face, SkinMenu.face, SkinMenu.skin, SkinMenu.skin, SkinMenu.skin, 1.0, 1.0, 1.0, true)
            end
            SkinMenu.skin = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 外觀
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'FaceCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'FaceCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Face', SkinMenu.face, 45, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadBlendData(ped, SkinMenu.face, SkinMenu.face, SkinMenu.face, SkinMenu.skin, SkinMenu.skin, SkinMenu.skin, 1.0, 1.0, 1.0, true)
            end
            SkinMenu.face = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 年齡
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'AgeCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'AgeCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Age', SkinMenu.age, (GetNumHeadOverlayValues(3)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 3, SkinMenu.age, (SkinMenu.age2/10) + 0.0)
            end
            SkinMenu.age = index
        end)
        RageUI.Progress('Age 2', SkinMenu.age2, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 3, SkinMenu.age, (SkinMenu.age2/10) + 0.0)
            end
            SkinMenu.age2 = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 鬍子
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'BeardCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'BeardCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Beard', SkinMenu.beard, (GetNumHeadOverlayValues(1)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 1, SkinMenu.beard, (SkinMenu.beardsize/10) + 0.0)
            end
            SkinMenu.beard = index
        end)
        RageUI.Progress('Beard Size', SkinMenu.beardsize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 1, SkinMenu.beard, (SkinMenu.beardsize/10) + 0.0)
            end
            SkinMenu.beardsize = index
        end)
        RageUI.Progress('Beard Color', SkinMenu.beardcolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 1, 1, SkinMenu.beardcolor, SkinMenu.beardcolor2)
            end
            SkinMenu.beardcolor = index
        end)
        RageUI.Progress('Beard Color 2', SkinMenu.beardcolor2, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 1, 1, SkinMenu.beardcolor, SkinMenu.beardcolor2)
            end
            SkinMenu.beardcolor2 = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 頭髮
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'HairCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'HairCase'), true, true, true, function()
        local ped = PlayerPedId()
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

------------------------------------------------------------
-- 眼睛
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'EyeCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'EyeCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Eye Color', SkinMenu.eyecolor, 31, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedEyeColor(ped, SkinMenu.eyecolor, 0, 1)
            end
            SkinMenu.eyecolor = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 眉毛
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'EyebrowsCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'EyebrowsCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Eye Brows', SkinMenu.eyebrows, (GetNumHeadOverlayValues(2)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 2, SkinMenu.eyebrows, (SkinMenu.eyebrowssize/10) + 0.0)
            end
            SkinMenu.eyebrows = index
        end)
        RageUI.Progress('Eye Brows Size', SkinMenu.eyebrowssize, (GetNumHeadOverlayValues(2)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 2, SkinMenu.eyebrows, (SkinMenu.eyebrowssize/10) + 0.0)
            end
            SkinMenu.eyebrowssize = index
        end)
        RageUI.Progress('Eye Brows Color', SkinMenu.eyebrowscolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 2, 1, SkinMenu.eyebrowscolor, SkinMenu.eyebrowscolor2)
            end
            SkinMenu.eyebrowscolor = index
        end)
        RageUI.Progress('Eye Brows Color 2', SkinMenu.eyebrowscolor2, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 2, 1, SkinMenu.eyebrowscolor, SkinMenu.eyebrowscolor2)
            end
            SkinMenu.eyebrowscolor2 = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 裝容
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'MakeupCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'MakeupCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Makeup', SkinMenu.makeup, (GetNumHeadOverlayValues(4)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 4, SkinMenu.makeup, (SkinMenu.makeupsize/10) + 0.0)
            end
            SkinMenu.makeup = index
        end)
        RageUI.Progress('Makeup Size', SkinMenu.makeupsize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 4, SkinMenu.makeup, (SkinMenu.makeupsize/10) + 0.0)
            end
            SkinMenu.makeupsize = index
        end)
        RageUI.Progress('Makeup Color', SkinMenu.makeupcolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 4, 1, SkinMenu.makeupcolor, SkinMenu.makeupcolor2)
            end
            SkinMenu.makeupcolor = index
        end)
        RageUI.Progress('Makeup Color 2', SkinMenu.makeupcolor2, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 4, 1, SkinMenu.makeupcolor, SkinMenu.makeupcolor2)
            end
            SkinMenu.makeupcolor2 = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 口紅
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'LipstickCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'LipstickCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Lipstick', SkinMenu.lipstick, (GetNumHeadOverlayValues(8)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 8, SkinMenu.lipstick, (SkinMenu.lipsticksize/10) + 0.0)
            end
            SkinMenu.lipstick = index
        end)
        RageUI.Progress('Lipstick Size', SkinMenu.lipsticksize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 8, SkinMenu.lipstick, (SkinMenu.lipsticksize/10) + 0.0)
            end
            SkinMenu.lipsticksize = index
        end)
        RageUI.Progress('Lipstick Color', SkinMenu.lipstickcolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 8, 1, SkinMenu.lipstickcolor, SkinMenu.lipstickcolor2)
            end
            SkinMenu.lipstickcolor = index
        end)
        RageUI.Progress('Lipstick Color 2', SkinMenu.lipstickcolor2, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 8, 1, SkinMenu.lipstickcolor, SkinMenu.lipstickcolor2)
            end
            SkinMenu.lipstickcolor2 = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 斑點
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'BlemishesCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'BlemishesCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Blemishes', SkinMenu.blemishes, (GetNumHeadOverlayValues(0)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 0, SkinMenu.blemishes, (SkinMenu.blemishessize/10) + 0.0)
            end
            SkinMenu.blemishes = index
        end)
        RageUI.Progress('Blemishes Size', SkinMenu.blemishessize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 0, SkinMenu.blemishes, (SkinMenu.blemishessize/10) + 0.0)
            end
            SkinMenu.blemishessize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 腮紅
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'BlushCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'BlushCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Blemishes', SkinMenu.blus, (GetNumHeadOverlayValues(5)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 5, SkinMenu.blus, (SkinMenu.blussize/10) + 0.0)
            end
            SkinMenu.blus = index
        end)
        RageUI.Progress('Blemishes Size', SkinMenu.blussize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 5, SkinMenu.blus, (SkinMenu.blussize/10) + 0.0)
            end
            SkinMenu.blussize = index
        end)
        RageUI.Progress('Lipstick Color 2', SkinMenu.bluscolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 5, 2, SkinMenu.bluscolor)
            end
            SkinMenu.bluscolor = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 氣色
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'ComplexionCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'ComplexionCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Complexion', SkinMenu.complexion, (GetNumHeadOverlayValues(6)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 6, SkinMenu.complexion, (SkinMenu.complexionsize/10) + 0.0)
            end
            SkinMenu.complexion = index
        end)
        RageUI.Progress('Complexion Size', SkinMenu.complexionsize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 6, SkinMenu.complexion, (SkinMenu.complexionsize/10) + 0.0)
            end
            SkinMenu.complexionsize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 曬痕
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'SunCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'SunCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Sun', SkinMenu.sun, (GetNumHeadOverlayValues(7)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 7, SkinMenu.sun, (SkinMenu.sunsize/10) + 0.0)
            end
            SkinMenu.sun = index
        end)
        RageUI.Progress('Sun Size', SkinMenu.sunsize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 7, SkinMenu.sun, (SkinMenu.sunsize/10) + 0.0)
            end
            SkinMenu.sunsize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 痣
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'MolesCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'MolesCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Moles', SkinMenu.moles, (GetNumHeadOverlayValues(9)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 9, SkinMenu.moles, (SkinMenu.molessize/10) + 0.0)
            end
            SkinMenu.moles = index
        end)
        RageUI.Progress('Moles Size', SkinMenu.molessize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 9, SkinMenu.moles, (SkinMenu.molessize/10) + 0.0)
            end
            SkinMenu.molessize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 胸部
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'ChestCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'ChestCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Chest', SkinMenu.chest, (GetNumHeadOverlayValues(10)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 10, SkinMenu.chest, (SkinMenu.chestsize/10) + 0.0)
            end
            SkinMenu.chest = index
        end)
        RageUI.Progress('Chest Size', SkinMenu.chestsize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 10, SkinMenu.chest, (SkinMenu.chestsize/10) + 0.0)
            end
            SkinMenu.chestsize = index
        end)
        RageUI.Progress('Chest Color', SkinMenu.chestcolor, (GetNumHairColors()-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlayColor(ped, 10, 1, SkinMenu.chestcolor)
            end
            SkinMenu.chestcolor = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 身體
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'BobybCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'BobybCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Bobyb', SkinMenu.bodyb, (GetNumHeadOverlayValues(11)-1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 11, SkinMenu.bodyb, (SkinMenu.bodybsize/10) + 0.0)
            end
            SkinMenu.bodyb = index
        end)
        RageUI.Progress('Bobyb Size', SkinMenu.bodyb, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedHeadOverlay(ped, 11, SkinMenu.bodyb, (SkinMenu.bodyb/10) + 0.0)
            end
            SkinMenu.bodyb = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 耳朵
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'EarsCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'EarsCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Ears', SkinMenu.ears, (GetNumberOfPedPropDrawableVariations(ped, 1) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                if SkinMenu.ears == 0 then
                    ClearPedProp(ped, 2)
                else
                    SetPedPropIndex(ped, 2, SkinMenu.ears, SkinMenu.esarssize, 2)
                end
            end
            SkinMenu.ears = index
        end)
        RageUI.Progress('Ears Size', SkinMenu.esarssize, GetNumberOfPedPropTextureVariations(ped, 1, SkinMenu.ears - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedPropIndex(ped, 2, SkinMenu.ears, SkinMenu.esarssize, 2)
            end
            SkinMenu.esarssize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- T-Shirt
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'TShirtCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'TShirtCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('T-Shirt', SkinMenu.tshirt, (GetNumberOfPedDrawableVariations(ped, 8) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 8, SkinMenu.tshirt, SkinMenu.tshirtsize, 2)
            end
            SkinMenu.tshirt = index
        end)
        RageUI.Progress('T-Shirt Size', SkinMenu.tshirtsize, GetNumberOfPedTextureVariations(ped, 8, SkinMenu.tshirt - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 8, SkinMenu.tshirt, SkinMenu.tshirtsize, 2)
            end
            SkinMenu.tshirtsize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 身軀
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'TorsoCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'TorsoCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Torso', SkinMenu.torso, (GetNumberOfPedDrawableVariations(ped, 11) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 11, SkinMenu.torso, SkinMenu.tshirtsize, 2)
            end
            SkinMenu.torso = index
        end)
        RageUI.Progress('Torso Size', SkinMenu.torsosize, GetNumberOfPedTextureVariations(ped, 11, SkinMenu.torso - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 11, SkinMenu.torso, SkinMenu.torsosize, 2)
            end
            SkinMenu.torsosize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 貼花
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'DecalsCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'DecalsCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Decals', SkinMenu.decals, (GetNumberOfPedDrawableVariations(ped, 10) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 10, SkinMenu.decals, SkinMenu.decalssize, 2)
            end
            SkinMenu.decals = index
        end)
        RageUI.Progress('Decals Size', SkinMenu.decalssize, GetNumberOfPedTextureVariations(ped, 10, SkinMenu.decals - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 10, SkinMenu.decals, SkinMenu.decalssize, 2)
            end
            SkinMenu.decalssize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 手臂
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'ArmsCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'ArmsCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Arms', SkinMenu.arms, (GetNumberOfPedDrawableVariations(ped, 3) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 3, SkinMenu.arms, SkinMenu.armssize, 2)
            end
            SkinMenu.arms = index
        end)
        RageUI.Progress('Arms Size', SkinMenu.armssize, 10, nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 3, SkinMenu.arms, SkinMenu.armssize, 2)
            end
            SkinMenu.armssize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 褲子
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'PantsCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'PantsCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Pants', SkinMenu.pants, (GetNumberOfPedDrawableVariations(ped, 4) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 4, SkinMenu.pants, SkinMenu.pantssize, 2)
            end
            SkinMenu.pants = index
        end)
        RageUI.Progress('Pants Size', SkinMenu.pantssize, (GetNumberOfPedTextureVariations(ped, 4, SkinMenu.pants)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 4, SkinMenu.pants, SkinMenu.pantssize, 2)
            end
            SkinMenu.pantssize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 鞋子
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'ShoesCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'ShoesCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Shoes', SkinMenu.shoes, (GetNumberOfPedDrawableVariations(ped, 6) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 6, SkinMenu.shoes, SkinMenu.shoessize, 2)
            end
            SkinMenu.shoes = index
        end)
        RageUI.Progress('Shoes Size', SkinMenu.shoessize, (GetNumberOfPedTextureVariations(ped, 6, SkinMenu.shoes)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 6, SkinMenu.shoes, SkinMenu.shoessize, 2)
            end
            SkinMenu.shoessize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 面具
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'MaskCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'MaskCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Mask', SkinMenu.mask, (GetNumberOfPedDrawableVariations(ped, 1) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 1, SkinMenu.mask, SkinMenu.masksize, 2)
            end
            SkinMenu.mask = index
        end)
        RageUI.Progress('Mask Size', SkinMenu.masksize, (GetNumberOfPedTextureVariations(ped, 1, SkinMenu.mask)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 1, SkinMenu.mask, SkinMenu.masksize, 2)
            end
            SkinMenu.masksize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 防彈背心
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'BproofCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'BproofCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Bproof', SkinMenu.bproof, (GetNumberOfPedDrawableVariations(ped, 9) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 9, SkinMenu.bproof, SkinMenu.bproofsize, 2)
            end
            SkinMenu.bproof = index
        end)
        RageUI.Progress('Bproof Size', SkinMenu.bproofsize, (GetNumberOfPedTextureVariations(ped, 9, SkinMenu.bproof)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 9, SkinMenu.bproof, SkinMenu.bproofsize, 2)
            end
            SkinMenu.bproofsize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 項鍊
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'ChainCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'ChainCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Chain', SkinMenu.chain, (GetNumberOfPedDrawableVariations(ped, 7) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 7, SkinMenu.chain, SkinMenu.chainsize, 2)
            end
            SkinMenu.chain = index
        end)
        RageUI.Progress('Chain Size', SkinMenu.chainsize, (GetNumberOfPedTextureVariations(ped, 7, SkinMenu.chain)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 7, SkinMenu.chain, SkinMenu.chainsize, 2)
            end
            SkinMenu.chainsize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 背包
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'BagsCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'BagsCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Bags', SkinMenu.bags, (GetNumberOfPedDrawableVariations(ped, 5) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 5, SkinMenu.bags, SkinMenu.bagssize, 2)
            end
            SkinMenu.bags = index
        end)
        RageUI.Progress('Bags Size', SkinMenu.bagssize, (GetNumberOfPedTextureVariations(ped, 5, SkinMenu.bags)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedComponentVariation(ped, 5, SkinMenu.bags, SkinMenu.bagssize, 2)
            end
            SkinMenu.bagssize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 頭盔
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'HelmetCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'HelmetCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Helmet', SkinMenu.helmet, (GetNumberOfPedDrawableVariations(ped, 0) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                if SkinMenu.Helmet == 0 then
                    ClearPedProp(ped, 2)
                else
                    SetPedPropIndex(ped, 0, SkinMenu.helmet, SkinMenu.helmetsize, 2)
                end
            end
            SkinMenu.helmet = index
        end)
        RageUI.Progress('Helmet Size', SkinMenu.helmetsize, (GetNumberOfPedTextureVariations(ped, 0, SkinMenu.helmet)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedPropIndex(ped, 0, SkinMenu.helmet, SkinMenu.helmetsize, 2)
            end
            SkinMenu.helmetsize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 眼鏡
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'GlassesCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'GlassesCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Glasses', SkinMenu.glasses, (GetNumberOfPedDrawableVariations(ped, 1) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                if SkinMenu.glasses == 0 then
                    ClearPedProp(ped, 1)
                else
                    SetPedPropIndex(ped, 1, SkinMenu.glasses, SkinMenu.glassessize, 2)
                end
            end
            SkinMenu.glasses = index
        end)
        RageUI.Progress('Glasses Size', SkinMenu.glassessize, (GetNumberOfPedTextureVariations(ped, 1, SkinMenu.glasses)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedPropIndex(ped, 1, SkinMenu.glasses, SkinMenu.glassessize, 2)
            end
            SkinMenu.glassessize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 手錶
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'WatchesCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'WatchesCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Watches', SkinMenu.watches, (GetNumberOfPedDrawableVariations(ped, 6) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                if SkinMenu.watches == 0 then
                    ClearPedProp(ped, 6)
                else
                    SetPedPropIndex(ped, 6, SkinMenu.watches, SkinMenu.watchessize, 2)
                end
            end
            SkinMenu.watches = index
        end)
        RageUI.Progress('Watches Size', SkinMenu.watchessize, (GetNumberOfPedTextureVariations(ped, 6, SkinMenu.watches)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedPropIndex(ped, 6, SkinMenu.watches, SkinMenu.watchessize, 2)
            end
            SkinMenu.watchessize = index
        end)
    end, function()
    end)
end)

------------------------------------------------------------
-- 手鐲
------------------------------------------------------------
RageUI.CreateWhile(1.0, RMenu:Get('skinmenu', 'BraceletsCase'), nil, function()
    RageUI.IsVisible(RMenu:Get('skinmenu', 'BraceletsCase'), true, true, true, function()
        local ped = PlayerPedId()
        RageUI.Progress('Bracelets', SkinMenu.bracelets, (GetNumberOfPedDrawableVariations(ped, 7) - 1), nil, true, true, function(hovered, active, selected, index)
            if active then
                if SkinMenu.bracelets == 0 then
                    ClearPedProp(ped, 7)
                else
                    SetPedPropIndex(ped, 7, SkinMenu.bracelets, SkinMenu.braceletssize, 2)
                end
            end
            SkinMenu.bracelets = index
        end)
        RageUI.Progress('Bracelets Size', SkinMenu.braceletssize, (GetNumberOfPedTextureVariations(ped, 7, SkinMenu.bracelets)), nil, true, true, function(hovered, active, selected, index)
            if active then
                SetPedPropIndex(ped, 7, SkinMenu.bracelets, SkinMenu.braceletssize, 2)
            end
            SkinMenu.braceletssize = index
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