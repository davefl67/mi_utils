exports('vehkit_repair', function()
    local player = PlayerPedId()
    local vehicle = lib.getClosestVehicle(GetEntityCoords(player), 2.5, false)

    if UT.vehicle.repair and vehicle then
        SetVehicleDoorOpen(vehicle, 4, false, false)
        Citizen.Wait(500)
        if lib.progressBar({
            duration = UT.vehicle.repairtime,
            label = 'Repairing Engine',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
            },
            anim = {
                blendIn = 3.0,
                dict = 'mini@repair',
                clip = 'fixing_a_player',
                blendOut = 3.0,
            },
            prop = {
                model = `prop_tool_adjspanner`,
                pos = vec3(0.07, 0.055, 0.01),
                rot = vec3(280.0, 10.0, 310.0)
            },
        }) then
            print('Do stuff when complete') 
            SetVehicleDoorShut(vehicle, 4, false)
            Citizen.Wait(500)
            SetVehicleFixed(vehicle)
        else
            print('Do stuff when cancelled') 
            Citizen.Wait(1000)
            SetVehicleDoorShut(vehicle, 4, false)
        end
    end
end)

exports('vehkit_clean', function()
    local player = PlayerPedId()
    local vehicle = lib.getClosestVehicle(GetEntityCoords(player), 3.0, false)

    if UT.vehicle.repair and vehicle then
        Citizen.Wait(500)
        if lib.progressBar({
            duration = UT.vehicle.cleantime,
            label = 'Cleaning Vehicle',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
            },
            anim = {
                blendIn = 3.0,
                dict = 'amb@world_human_maid_clean@',
                clip = 'base',
                blendOut = 3.0,
            },
            prop = {
                bone = 28422,
                model = `prop_sponge_01`,
                pos = vec3(0.0, 0.0, -0.01),
                rot = vec3(90.0, 0.0, 0.0)
            },
        }) then
            print('Do stuff when complete') 
            SetVehicleDirtLevel(vehicle, 0.0)
        else
            print('Do stuff when cancelled') 
        end
    end
end)