exports('smoke_cigarette', function()
    local maxHealth = GetEntityMaxHealth(cache.ped)
	local health = GetEntityHealth(cache.ped)
    if lib.progressBar({
        duration = UT.smoking.cigarette.time,
        label = 'Smoking Cigarette',
        useWhileDead = false, allowFalling = false, allowRagdoll = false,
        allowCuffed = false, canCancel = true, disable = { car = false },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c', flag = 49,
            blendIn = 4.0, blendOut = 4.0, playbackRate = 0
        },
        prop = {
            model = 'prop_cs_ciggy_01', bone = 28422,
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0)
        }
    })
    then if not UT.smoking.cigarette.damage then return
        else
            SetEntityHealth(cache.ped, math.min(maxHealth,
            math.floor(health - maxHealth / UT.smoking.cigarette.dmgamt)))
        end
    end
end)

exports('smoke_cigar', function()
    local maxHealth = GetEntityMaxHealth(cache.ped)
	local health = GetEntityHealth(cache.ped)
    if lib.progressBar({
        duration = UT.smoking.cigar.time,
        label = 'Smoking Cigar',
        useWhileDead = false, allowFalling = false, allowRagdoll = false,
        allowCuffed = false, canCancel = true, disable = { car = false },
        anim = {
            dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c', flag = 49,
            blendIn = 4.0, blendOut = 4.0, playbackRate = 0
        },
        prop = {
            model = 'bzzz_cigarpack_cig001', bone = 28422,
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 180.0, 0.0)
        }
    })
    then if not UT.smoking.cigar.damage then return
        else
            SetEntityHealth(cache.ped, math.min(maxHealth, 
            math.floor(health - maxHealth / UT.smoking.cigar.dmgamt)))
        end
    end
end)

exports('smoke_vape', function()
    local maxHealth = GetEntityMaxHealth(cache.ped)
	local health = GetEntityHealth(cache.ped)
    if lib.progressBar({
        duration = UT.smoking.vape.time,
        label = 'Smoking Cigarette',
        useWhileDead = false, allowFalling = false, allowRagdoll = false,
        allowCuffed = false, canCancel = true, disable = { car = false },
        anim = {
            dict = 'amb@world_human_smoking@male@male_b@base', clip = 'base', flag = 49,
            blendIn = 4.0, blendOut = 4.0, playbackRate = 0
        },
        prop = {
            model = 'xm3_prop_xm3_vape_01a', bone = 28422,
            pos = vec3(-0.02, -0.02, 0.02), rot = vec3(70.0, 110.0, 10.0)
        }
    })
    then if not UT.smoking.vape.damage then return
        else
            SetEntityHealth(cache.ped, math.min(maxHealth, 
            math.floor(health - maxHealth / UT.smoking.vape.dmgamt)))
        end
    end
end)
