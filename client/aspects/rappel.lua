-- test file for rappel
--[[
RegisterCommand('rappeltest', function()
    local dict = 'anim_heist@hs3f@ig1_rappel@male@'
    local player = GetEntityCoords(cache.ped)
    local rope = AddRope(player.x, player.y, player.z, -90.0, 90.0, -90.0, 200.0, 7, 200.0, 200.0, 1.2, false, true, true, 10.0, false)
    while not HasClipSetLoaded do
        RequestClipSet(dict)
    end
    -- TaskRappelDownWall(ped, coords, coords, -130.0, ropeId, "clipset@anim_heist@hs3f@ig1_rappel@male", 1)
    TaskRappelDownWall(cache.ped, player.x, player.y, player.z, player.x, player.y, player.z-50, 0, rope, dict, 1)
end, false)
]]

--I want this shit to work
