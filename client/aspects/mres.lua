-- in progress
local obj = nil

local spawnbox = function()
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.6, 0.0)
    local head = GetEntityHeading(cache.ped)
    obj = CreateObject('v_ind_cfbox2', crds.x, crds.y, crds.z, true, false, false)
    SetEntityHeading(obj, head)
    PlaceObjectOnGroundProperly(obj)
    FreezeEntityPosition(obj, true)
    SetEntityCollision(obj, true, true)
    SetEntityAsMissionEntity(obj, true, true)
end

local deletebox = function()
    FreezeEntityPosition(obj, false)
    SetEntityAsMissionEntity(obj, false, false)
end

exports('mrepack', function()
    local mrechance = math.random(0,4)
    local sidechance = math.random(0,1)
    lib.callback('miut:takeitem', false, function() end, 'mre_1', 1)
    spawnbox()
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
        deletebox()
        -- MRE main
        if mrechance == 0 then
            lib.callback('miut:giveitem', false, function() end, UT.mre.main1, 1)
        elseif mrechance == 1 then
            lib.callback('miut:giveitem', false, function() end, UT.mre.main2, 1)
        elseif mrechance == 2 then
            lib.callback('miut:giveitem', false, function() end, UT.mre.main3, 1)
        elseif mrechance == 3 then
            lib.callback('miut:giveitem', false, function() end, UT.mre.main4, 1)
        elseif mrechance == 4 then
            lib.callback('miut:giveitem', false, function() end, UT.mre.main5, 1)
        end
        -- MRE Side
        if sidechance == 0 then
            lib.callback('miut:giveitem', false, function() end, UT.mre.side1, 1)
        else
            lib.callback('miut:giveitem', false, function() end, UT.mre.side2, 1)
        end
        -- MRE bread / water / snack
        lib.callback('miut:giveitem', false, function() end, UT.mre.bread, 1)
        lib.callback('miut:giveitem', false, function() end, UT.mre.drink, 2)
        lib.callback('miut:giveitem', false, function() end, UT.mre.snack, 1)
    end
end)