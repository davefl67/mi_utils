exports('mrepack', function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    local box = lib.callback('miut:server:spawnbox:mre', false, function() end, crds)
    SetEntityHeading(box, head)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    SetEntityCollision(box, true, true)
    lib.callback('miut:server:remove:mre')
    if lib.progressBar({
        duration = 5000,
        label = 'Opening MRE',
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
        lib.callback('miut:server:add:mre')
    end
end)