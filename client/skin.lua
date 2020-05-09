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

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        if IsControlJustPressed(1, 38) then
            RageUI.Visible(RMenu:Get('skinmenu', 'main'), not RageUI.Visible(RMenu:Get('skinmenu', 'main')))
        end
    end
end)