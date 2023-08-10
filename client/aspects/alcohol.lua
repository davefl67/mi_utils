-- rancho beer box
exports('box_beer_rancho', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds)
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:ranchobox')
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
        lib.callback('miut:server:add:beer_rancho')
    else
        lib.callback('miut:server:canceled:beer_rancho')
    end
end)

-- dusche beer box
exports('box_beer_rancho', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:small', false, function() end, crds)
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:beer_dusche')
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
        lib.callback('miut:server:add:beer_dusche')
    else
        lib.callback('miut:server:canceled:beer_dusche')
    end
end)