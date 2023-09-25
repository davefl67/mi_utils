-- test file for rappel
--[[
main
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

reference
local rapelTargetOffset = vector3(0.0, 1.5 , -3.0)
local rayFlagsLocation = 17
local onrope = false

RegisterNetEvent('OT_rappel:rappel')
AddEventHandler('OT_rappel:rappel', function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local offset = GetOffsetFromEntityInWorldCoords(ped, rapelTargetOffset)
    local testRay = StartShapeTestRay(coords, offset, rayFlagsLocation, ped, 7)
    local _, hit, hitLocation, surfaceNormal, material, _ = GetShapeTestResultEx(testRay)
    if hit == 1 then TriggerEvent('ox_inventory:notify', {type = 'error', text = 'You cannot rappel from here'}) return end
    local heading = GetEntityHeading(ped)
    if heading >= 180.0 then
        heading = heading - 180.0
    else
        heading = heading + 180.0
    end
    onrope = true
    RopeLoadTextures()
    SetEntityCoords(ped, offset)
    local ropeId = AddRope(coords, -90.0, 90.0, -90.0, 200.0, 7, 200.0, 200.0, 1.2, false, true, true, 10.0, false, 0)
    TaskRappelDownWall(ped, coords, coords, -130.0, ropeId, "clipset@anim_heist@hs3f@ig1_rappel@male", 1)
    SetEntityHeading(ped, heading)
    N_0xa1ae736541b0fca3(ropeId, true)
    PinRopeVertex(ropeId, (GetRopeVertexCount(ropeId) - 1), offset + vector3(0, 0, 1.0))
    RopeSetUpdateOrder(ropeId, 0)
    while onrope == true do
        SetEntityHeading(ped, heading)
        if GetEntityHeightAboveGround(ped) <= 1.0 then
            ClearPedTasks(ped)
            onrope = false
            return
        end
        Wait(0)
    end
end)

local clipset = RequestClipSet('anim_heist@hs3f@ig1_rappel@male@')
local dict = lib.requestAnimDict('anim_heist@hs3f@ig1_rappel@male@', 300)

TaskPlayAnim(cache.ped, dict, 'start_rappel', 8.0, 8.0, -1, -1, 0.5, true, true, true)


RegisterCommand('rappel', function()
    if lib.progressBar({
        duration = 2000,
        label = 'Preparing to rappel',
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
        local startloc, groundloc = GetEntityCoords(cache.ped), GetEntityHeightAboveGround(cache.ped)
        print(groundloc)
        
        local rope = lib.callback('miut:server:object:hook', false,
        function() end, startloc, 'prop_rope_family_3')
        RopeLoadTextures()
        SetEntityHeading(rope, GetEntityHeading(cache.ped))
        FreezeEntityPosition(rope, true)

        local ropeoffset = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 0.2, -0.9)
        local loadrope = AddRope(ropeoffset.x, ropeoffset.y, ropeoffset.z, -90.0, 90.0, -90.0, 200.0, 7, 200.0, 200.0, 1.2, false, true, true, 10.0, true)
    end
    
end, false)

]]

--I want this shit to work

