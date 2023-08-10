-- beers
-- rancho beer box
exports('box_rancho_beer', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds)
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:rancho_beer')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Pack of Rancho Beers',
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
        lib.callback('miut:server:add:rancho_beer')
    else
        lib.callback('miut:server:canceled:rancho_beer')
    end
end)

-- dusche beer box
exports('box_dusche_beer', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds)
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:dusche_beer')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Pack of Dusche Beers',
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
        lib.callback('miut:server:add:dusche_beer')
    else
        lib.callback('miut:server:canceled:dusche_beer')
    end
end)

-- stronzo beer box
exports('box_stronzo_beer', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds)
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:stronzo_beer')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Pack of Stronzo Beers',
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
        lib.callback('miut:server:add:stronzo_beer')
    else
        lib.callback('miut:server:canceled:stronzo_beer')
    end
end)

-- patriot beer box
exports('box_patriot_beer', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds)
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:patriot_beer')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Pack of Patriot Beers',
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
        lib.callback('miut:server:add:patriot_beer')
    else
        lib.callback('miut:server:canceled:patriot_beer')
    end
end)