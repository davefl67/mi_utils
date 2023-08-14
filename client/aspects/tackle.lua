--[[
    WIP

    -- tackle animation / function
local dict = lib.requestAnimDict('swimming@first_person@diving')
local animevent = function()
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
    if IsEntityPlayingAnim(cache.ped, dict, 'dive_run_fwd_-45_loop', 3) then
        ClearPedTasksImmediately(cache.ped)
    else
        TaskPlayAnim(cache.ped, dict, 'dive_run_fwd_-45_loop' ,3.0, 3.0, -1, 49, 0, false, false, false)
        Wait(250)
        SetPedToRagdoll(cache.ped, 150, 150, 0, false, false, false)
    end
end

local cantackle = function()
    if IsPedOnFoot(cache.ped) and
    not IsPedSwimming(cache.ped) and
    IsPedSprinting(cache.ped) then
        print('sent')
        animevent(cache.ped)
        local player=  GetEntityCoords(cache.ped)
        local otherplyr = lib.getClosestPlayer(player, 1.2, false)
        if otherplyr < 2 and not IsPedRagdoll(otherplyr) then
        TriggerServerEvent('miut:tackle:server:tackled', otherplyr)
        end
    end
end

local keybind = lib.addKeybind({
    name = 'tackle_event',
    description = 'tackle player',
    defaultKey = 'E',
    onPressed = function(self)
        print(('pressed %s (%s)'):format(self.currentKey, self.name))
        cantackle()
    end
})



Citizen.CreateThread(function()
    if CG.tackle then
        keybind:disable(false)
        Citizen.Wait(500)
    end
end)

RegisterNetEvent('miut:tackle:client:used')
AddEventHandler('miut:tackle:client:used', function(target)
    SetPedToRagdoll(target, math.random(1000, 6000), math.random(1000, 6000), 0, false, false, false)
    TimerEnabled = true
    Wait(1500)
    TimerEnabled = false
end)
]]