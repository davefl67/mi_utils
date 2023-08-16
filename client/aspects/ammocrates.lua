-- case 22
exports('box_ammo_22', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'v_ret_gc_ammo8')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:22mm')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of 22mm',
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
        lib.callback('miut:server:add:22mm')
    else
        lib.callback('miut:server:canceled:22mm')
        DeleteObject(box)
    end
end)

-- case 38
exports('box_ammo_38', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'v_ret_gc_ammo8')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:38mm')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of 38mm',
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
        lib.callback('miut:server:add:38mm')
    else
        lib.callback('miut:server:canceled:38mm')
        DeleteObject(box)
    end
end)

-- case 44
exports('box_ammo_44', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'v_ret_gc_ammo8')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:44mm')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of 44mm',
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
        lib.callback('miut:server:add:44mm')
    else
        lib.callback('miut:server:canceled:44mm')
        DeleteObject(box)
    end
end)

-- case 45
exports('box_ammo_45', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'v_ret_gc_ammo8')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:45mm')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of 45mm',
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
        lib.callback('miut:server:add:45mm')
    else
        lib.callback('miut:server:canceled:45mm')
        DeleteObject(box)
    end
end)

-- case 50
exports('box_ammo_50', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'v_ret_gc_ammo8')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:50mm')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of 50mm',
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
        lib.callback('miut:server:add:50mm')
    else
        lib.callback('miut:server:canceled:50mm')
        DeleteObject(box)
    end
end)

-- case 9
exports('box_ammo_9', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'v_ret_gc_ammo8')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:9mm')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of 9mm',
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
        lib.callback('miut:server:add:9mm')
    else
        lib.callback('miut:server:canceled:9mm')
        DeleteObject(box)
    end
end)

-- case 9
exports('box_ammo_9', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'v_ret_gc_ammo8')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:9mm')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of 9mm',
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
        lib.callback('miut:server:add:9mm')
    else
        lib.callback('miut:server:canceled:9mm')
        DeleteObject(box)
    end
end)

-- case 12g
exports('box_ammo_12g', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'h4_prop_h4_box_ammo_01a')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:12g')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of 12g',
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
        lib.callback('miut:server:add:12g')
    else
        lib.callback('miut:server:canceled:12g')
        DeleteObject(box)
    end
end)

-- case 556m
exports('box_ammo_556m', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'h4_prop_h4_box_ammo_01a')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:556m')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of 556m',
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
        lib.callback('miut:server:add:556m')
    else
        lib.callback('miut:server:canceled:556m')
        DeleteObject(box)
    end
end)

-- case 556m
exports('box_ammo_762m', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'h4_prop_h4_box_ammo_01a')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:762m')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of 762m',
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
        lib.callback('miut:server:add:762m')
    else
        lib.callback('miut:server:canceled:762m')
        DeleteObject(box)
    end
end)

-- case 556m
exports('box_ammo_76251m', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds, 'h4_prop_h4_box_ammo_01a')
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:76251m')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening Case of 76251m',
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
        lib.callback('miut:server:add:76251m')
    else
        lib.callback('miut:server:canceled:76251m')
        DeleteObject(box)
    end
end)