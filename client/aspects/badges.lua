-- in progress
local gangs = {
    'AMBIENT_GANG_LOST', 'AMBIENT_GANG_MEXICAN', 'AMBIENT_GANG_FAMILY', 'AMBIENT_GANG_BALLAS',
    'AMBIENT_GANG_MARABUNTE', 'AMBIENT_GANG_CULT', 'AMBIENT_GANG_SALVA', 'AMBIENT_GANG_WEICHENG',
    'AMBIENT_GANG_HILLBILLY', 'GANG_1', 'GANG_2', 'GANG_9', 'GANG_10'
}

exports('badges', function()
    local peds = lib.getNearbyPeds(cache.ped, UT.badges.maxdist)
    local group = GetPedRelationshipGroupHash(peds)

    -- progress for animation
    -- anim = { dict = 'paper_1_rcm_alt1-8', clip = 'player_one_dual-8', flag = 49 },
    -- prop = { model = 'prop_fibb_badge', -- need badge props repo
    -- pos = vec3(0.13, 0.023, -0.04), rot = vec3(-90.0, -180.0, 300.0), bone = 28422 },

    for i, v in pairs(peds) do
        if DoesEntityExist(peds) and group ~= gangs then
            TaskWanderStandard(peds, 10.0, 10.0)
        else
            TaskReactAndFleePed(peds, cache.ped)
        end
    end
end)