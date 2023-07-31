-- armor level 1
exports('armor_l1', function()
    if UT.armor.level1 then
        if lib.progressBar({
            duration = UT.armor.level1.time,
            label = 'Equipping Light Body Armor',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetPlayerMaxArmour(cache.ped, 100)
			SetPedArmour(cache.ped, UT.armor.level1.amt)
        else
            return
        end
    end
end)

exports('armor_l2', function()
    if UT.armor.level2 then
        if lib.progressBar({
            duration = UT.armor.level2.time,
            label = 'Equipping Medium Body Armor',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetPlayerMaxArmour(cache.ped, 100)
			SetPedArmour(cache.ped, UT.armor.level2.amt)
        else
            return
        end
    end
end)

exports('armor_l3', function()
    if UT.armor.level3 then
        if lib.progressBar({
            duration = UT.armor.level3.time,
            label = 'Equipping Heavy Body Armor',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetPlayerMaxArmour(cache.ped, 100)
			SetPedArmour(cache.ped, UT.armor.level3.amt)
        else
            return
        end
    end
end)

exports('armor_leo', function()
    if UT.armor.level3 then
        if lib.progressBar({
            duration = UT.armor.level3.time,
            label = 'Equipping LEO Body Armor',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'clothingshirt', clip = 'try_shirt_positive_d', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetPlayerMaxArmour(cache.ped, 100)
			SetPedArmour(cache.ped, UT.armor.level3.amt)
        else
            return
        end
    end
end)