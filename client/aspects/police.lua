-- WIP DO NOT USE
local shield, holding = nil, {shield = 0, used = false}
local shieldmod = lib.requestModel('prop_ballistic_shield')
local dict, anim = lib.requestAnimDict('combat@gestures@gang@pistol_1h@beckon'), lib.requestAnimSet('0')

local rioton = function()
    while not HasModelLoaded(shieldmod) do
        Citizen.Wait(10)
    end
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
    if not holding.used then
        if lib.progressBar({
            duration = 5000,
            label = 'Equipping Riot Shield',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
            },
            anim = {
                dict = 'clothingshirt',
                clip = 'try_shirt_positive_d'
            },
        }) then
            local plycrd = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
            shield = CreateObject(shieldmod, plycrd.x, plycrd.y, plycrd.z, true, false, false)
            AttachEntityToEntity(shield, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()),
            45509),0.35, 0.05, -0.1, 300.0, 180.0, 60.0, true, true, true, true, 0, true)
            holding.shield = shield
            holding.used = true

        end
    end
    
end

local riotoff = function()
    if holding.used then
        if lib.progressBar({
            duration = 5000,
            label = 'Removing Roit Shield',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
            },
            anim = {
                dict = 'clothingshirt',
                clip = 'try_shirt_positive_d'
            },
        }) then
            ClearPedTasksImmediately(PlayerPedId())
            DetachEntity(holding.shield, false, true)
            DeleteEntity(holding.shield)
            holding.shield = 0
            holding.used = false
        end
    end
end

exports('riotshield', function()


end)

RegisterCommand('riotshield', function()
    Citizen.CreateThread(function()
        local set = false
        while not set do
            if not holding.used then
                set = true
                rioton()
                
            else
                set = false
                ClearPedTasksImmediately(PlayerPedId())
                riotoff()
            end
            Citizen.Wait(500)
        end
    end)
end, false)