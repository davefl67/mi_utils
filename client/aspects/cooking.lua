--[[
        WIP - waiting on cooling script for export to menu

exports('cookinggrill', function()

end)

RegisterCommand('grill', function()
    local model = lib.requestModel('prop_bbq_5')
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
    local head = GetEntityHeading(cache.ped)
    local grill, grillfire, isgrillon = nil, nil, false
    local grillops = {
        {
            name = 'grillon',
            label = 'Heat Up Grill',
            icon = 'fa-solid fa-fire-burner',
            canInteract = function(_, distance)
                return distance < 1.5 and not isgrillon
            end,
            onSelect = function()
                isgrillon = true
                UseParticleFxAssetNextCall("core")
                grillfire = StartParticleFxLoopedAtCoord("fire_wrecked_car",
                crds.x, crds.y, crds.z-0.2,
                0.0, 0.0, 0.0, 0.4, false, false, false, false)
            end
        },
        {
            name = 'grillpickup',
            label = 'Pack Up Grill',
            icon = 'fa-solid fa-dolly',
            canInteract = function(_, distance)
                return distance < 1.5 and not isgrillon
            end,
            onSelect = function()
                if lib.progressBar({
                    duration = UT.bombs.explosive.time,
                    label = 'Packing Up Grill',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                        move = true
                    },
                    anim = {
                        scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD',
                    },
                }) then
                    DeleteEntity(grill)
                end
            end
        },

        {
            name = 'grilloff',
            label = 'Cool Down Grill',
            icon = 'fa-solid fa-fire-extinguisher',
            canInteract = function(_, distance)
                return distance < 1.5 and isgrillon
            end,
            onSelect = function()
                isgrillon = false
                StopParticleFxLooped(grillfire, true)
            end
        },
    }
    
    if lib.progressBar({
        duration = UT.bombs.explosive.time,
        label = 'Setting Grill',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true
        },
        anim = {
            scenario = 'CODE_HUMAN_MEDIC_TEND_TO_DEAD',
        },
    }) then
        grill = CreateObject(model, crds.x, crds.y, crds.z, true, false, false)
        SetEntityHeading(grill, head)
        PlaceObjectOnGroundProperly(grill)
        FreezeEntityPosition(grill, true)
        SetEntityCollision(grill, true, true)
        exports.ox_target:addLocalEntity(grill, grillops)
    end
end, false)
]]