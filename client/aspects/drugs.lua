exports('weed_sativa', function()
    if UT.drugs.weedsativa then
        if lib.progressBar({
            duration = UT.drugs.weedsativa.time,
            label = 'Taking a hit',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                scenario = 'WORLD_HUMAN_SMOKING_POT'
            },
        }) then
            SetTimecycleModifier("spectator6")
			AnimpostfxPlay("DrugsMichaelAliensFight", 10000001, true)
    		ShakeGameplayCam("DRUNK_SHAKE", 0.6)

			Citizen.Wait(UT.drugs.weedsativa.dur/2)
            local maxHealth = GetEntityMaxHealth(cache.ped)
            local health = GetEntityHealth(cache.ped)
            SetEntityHealth(cache.ped, math.min(maxHealth, math.floor(health + maxHealth / 32)))
            ShakeGameplayCam("DRUNK_SHAKE", 0.3)

            Citizen.Wait(UT.drugs.weedsativa.dur/2)

			AnimpostfxStopAll()
    		ShakeGameplayCam("DRUNK_SHAKE", 0.0)
			SetTimecycleModifierStrength(0.0)
        else
            return
        end
    end
end)

exports('weed_indica', function()
    if UT.drugs.weedindica then
        if lib.progressBar({
            duration = UT.drugs.weedindica.time,
            label = 'Taking a hit',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                scenario = 'WORLD_HUMAN_SMOKING_POT'
            },
        }) then
            SetTimecycleModifier("spectator6")
			AnimpostfxPlay("HeistCelebPass", 10000001, true)
    		ShakeGameplayCam("DRUNK_SHAKE", 0.6)

			Citizen.Wait(UT.drugs.weedindica.dur/2)
            local maxHealth = GetEntityMaxHealth(cache.ped)
            local health = GetEntityHealth(cache.ped)
            SetEntityHealth(cache.ped, math.min(maxHealth, math.floor(health + maxHealth / 32)))
            ShakeGameplayCam("DRUNK_SHAKE", 0.3)

            Citizen.Wait(UT.drugs.weedindica.dur/2)

			AnimpostfxStopAll()
    		ShakeGameplayCam("DRUNK_SHAKE", 0.0)
			SetTimecycleModifierStrength(0.0)
        else
            return
        end
    end
end)

exports('weed_hybrid', function()
    if UT.drugs.weedhybrid then
        if lib.progressBar({
            duration = UT.drugs.weedhybrid.time,
            label = 'Taking a hit',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                scenario = 'WORLD_HUMAN_SMOKING_POT'
            },
        }) then
            SetTimecycleModifier("spectator6")
			AnimpostfxPlay("DrugsTrevorClownsFight", 10000001, true)
    		ShakeGameplayCam("DRUNK_SHAKE", 0.6)

			Citizen.Wait(UT.drugs.weedhybrid.dur/2)
            local maxHealth = GetEntityMaxHealth(cache.ped)
            local health = GetEntityHealth(cache.ped)
            SetEntityHealth(cache.ped, math.min(maxHealth, math.floor(health + maxHealth / 32)))
            ShakeGameplayCam("DRUNK_SHAKE", 0.3)

            Citizen.Wait(UT.drugs.weedhybrid.dur/2)

			AnimpostfxStopAll()
    		ShakeGameplayCam("DRUNK_SHAKE", 0.0)
			SetTimecycleModifierStrength(0.0)
        else
            return
        end
    end
end)

exports('crack_cocaine', function()
    if UT.drugs.crack_cocaine then
        if lib.progressBar({
            duration = 3000,
            label = 'Taking a hit',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'mp_suicide', clip = 'pill', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetPlayerMaxArmour(cache.ped, 100)
			SetPedArmour(cache.ped, 50.0)
            SetTimecycleModifier("spectator6")
			AnimpostfxPlay("BikerFormation", 10000001, true)
    		ShakeGameplayCam("DRUNK_SHAKE", 0.6)

			Citizen.Wait(UT.drugs.crack_cocaine.dur/2)

            ShakeGameplayCam("DRUNK_SHAKE", 0.3)

            Citizen.Wait(UT.drugs.crack_cocaine.dur/2)


			AnimpostfxStopAll()
    		ShakeGameplayCam("DRUNK_SHAKE", 0.0)
			SetTimecycleModifierStrength(0.0)
            SetPedArmour(cache.ped, 0.0)
        else
            return
        end
    end
end)

exports('crack_rocks', function()
    if UT.drugs.crack_rocks then
        if lib.progressBar({
            duration = 3000,
            label = 'Taking a hit',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                scenario = 'WORLD_HUMAN_DRUG_DEALER'
            },
        }) then
            SetPlayerMaxArmour(cache.ped, 100)
			SetPedArmour(cache.ped, 50.0)
            SetTimecycleModifier("spectator6")
			AnimpostfxPlay("ChopVision", 10000001, true)
    		ShakeGameplayCam("DRUNK_SHAKE", 0.6)

			Citizen.Wait(UT.drugs.crack_rocks.dur/2)

            ShakeGameplayCam("DRUNK_SHAKE", 0.3)

            Citizen.Wait(UT.drugs.crack_rocks.dur/2)

            SetPedArmour(cache.ped, 0.0)
			AnimpostfxStopAll()
    		ShakeGameplayCam("DRUNK_SHAKE", 0.0)
			SetTimecycleModifierStrength(0.0)
        else
            return
        end
    end
end)

exports('pill_ecstasy', function()
    if UT.drugs.pillecstasy then
        if lib.progressBar({
            duration = 3000,
            label = 'Taking a hit',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'mp_suicide', clip = 'pill', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetTimecycleModifier("spectator6")
			AnimpostfxPlay("DMT_flight", 10000001, true)
    		ShakeGameplayCam("DRUNK_SHAKE", 0.6)

			Citizen.Wait(UT.drugs.pillecstasy.dur/2)

            ShakeGameplayCam("DRUNK_SHAKE", 0.3)

            Citizen.Wait(UT.drugs.pillecstasy.dur/2)

			AnimpostfxStopAll()
    		ShakeGameplayCam("DRUNK_SHAKE", 0.0)
			SetTimecycleModifierStrength(0.0)
        else
            return
        end
    end
end)

exports('pill_molly', function()
    if UT.drugs.pillmolly then
        if lib.progressBar({
            duration = 3000,
            label = 'Taking a hit',
            useWhileDead = false, allowFalling = false, allowRagdoll = false,
            allowCuffed = false, canCancel = true, disable = { car = false },
            anim = {
                dict = 'mp_suicide', clip = 'pill', flag = 49,
                blendIn = 4.0, blendOut = 4.0, playbackRate = 0
            },
        }) then
            SetTimecycleModifier("spectator6")
			AnimpostfxPlay("CrossLine", 10000001, true)
    		ShakeGameplayCam("DRUNK_SHAKE", 0.6)

			Citizen.Wait(UT.drugs.pillmolly.dur/2)

            ShakeGameplayCam("DRUNK_SHAKE", 0.3)

            Citizen.Wait(UT.drugs.pillmolly.dur/2)

			AnimpostfxStopAll()
    		ShakeGameplayCam("DRUNK_SHAKE", 0.0)
			SetTimecycleModifierStrength(0.0)
        else
            return
        end
    end
end)