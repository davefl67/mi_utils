-- beers
-- rancho beer box
exports('box_rancho_beer', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'v_ret_ml_beerbar')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:rancho')
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
        lib.callback('miut:server:add:rancho')
    else
        lib.callback('miut:server:canceled:rancho')
        DeleteObject(box)
    end
end)

-- dusche beer box
exports('box_dusche_beer', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'v_ret_ml_beerdus')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:dusche')
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
        lib.callback('miut:server:add:dusche')
    else
        lib.callback('miut:server:canceled:dusche')
        DeleteObject(box)
    end
end)

-- stronzo beer box
exports('box_blarny_beer', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'v_ret_ml_beerbla1')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:blarny')
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
        lib.callback('miut:server:add:blarny')
    else
        lib.callback('miut:server:canceled:blarny')
        DeleteObject(box)
    end
end)

-- patriot beer box
exports('box_patriot_beer', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'v_ret_ml_beerpat1')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:patriot')
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
        lib.callback('miut:server:add:patriot')
    else
        lib.callback('miut:server:canceled:patriot')
        DeleteObject(box)
    end
end)

-- bourgeoix box
exports('box_bourgeoix_liquor', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'prop_crate_02a')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:bourgeoix')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of Bourgeoix Cognac',
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
        lib.callback('miut:server:add:bourgeoix')
        SetEntityAsNoLongerNeeded(box)
    else
        lib.callback('miut:server:canceled:bourgeoix')
        SetEntityAsNoLongerNeeded(box)
        DeleteObject(box)
    end
end)

-- cariaque box
exports('box_cariaque_liquor', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'prop_crate_02a')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:cariaque')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of Cariaque Bourbon',
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
        lib.callback('miut:server:add:cariaque')
        SetEntityAsNoLongerNeeded(box)
    else
        lib.callback('miut:server:canceled:cariaque')
        SetEntityAsNoLongerNeeded(box)
        DeleteObject(box)
    end
end)

-- bleuterd box
exports('box_bleuterd_liquor', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'prop_crate_02a')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:bleuterd')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of Bleuter\'d Champagne',
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
        lib.callback('miut:server:add:bleuterd')
        SetEntityAsNoLongerNeeded(box)
    else
        lib.callback('miut:server:canceled:bleuterd')
        SetEntityAsNoLongerNeeded(box)
        DeleteObject(box)
    end
end)