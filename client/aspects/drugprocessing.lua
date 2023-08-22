RegisterCommand('tableweed', function()
    local model = lib.requestModel('bkr_prop_weed_table_01a')
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
    local head = GetEntityHeading(cache.ped)
    local weedtable = nil
    local weedtableops = {
        {
            name = 'tablepickup',
            label = 'Pack Up Table',
            icon = 'fa-solid fa-dolly',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                if lib.progressBar({
                    duration = UT.drugprocess.setuptime,
                    label = 'Packing Up Table',
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
                    DeleteEntity(weedtable)
                end
            end
        }
    }
    
    if lib.progressBar({
        duration = UT.drugprocess.setuptime,
        label = 'Setting Table',
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
        weedtable = CreateObject(model, crds.x, crds.y, crds.z, true, false, false)
        SetEntityHeading(weedtable, head)
        PlaceObjectOnGroundProperly(weedtable)
        FreezeEntityPosition(weedtable, true)
        SetEntityCollision(weedtable, true, true)
        exports.ox_target:addLocalEntity(weedtable, weedtableops)
    end
end, false)

RegisterCommand('tablecoke', function()
    local model = lib.requestModel('bkr_prop_coke_table01a')
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
    local head = GetEntityHeading(cache.ped)
    local coketable = nil
    local coketableops = {
        {
            name = 'tablepickup',
            label = 'Pack Up Table',
            icon = 'fa-solid fa-dolly',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                if lib.progressBar({
                    duration = UT.drugprocess.setuptime,
                    label = 'Packing Up Table',
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
                    DeleteEntity(coketable)
                end
            end
        }
    }
    
    if lib.progressBar({
        duration = UT.drugprocess.setuptime,
        label = 'Setting Table',
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
        coketable = CreateObject(model, crds.x, crds.y, crds.z, true, false, false)
        SetEntityHeading(coketable, head)
        PlaceObjectOnGroundProperly(coketable)
        FreezeEntityPosition(coketable, true)
        SetEntityCollision(coketable, true, true)
        exports.ox_target:addLocalEntity(coketable, coketableops)
    end
end, false)

RegisterCommand('tablemeth', function()
    local model = lib.requestModel('bkr_prop_meth_table01a')
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
    local head = GetEntityHeading(cache.ped)
    local methtable = nil
    local methtableops = {
        {
            name = 'tablepickup',
            label = 'Pack Up Table',
            icon = 'fa-solid fa-dolly',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                if lib.progressBar({
                    duration = UT.drugprocess.setuptime,
                    label = 'Packing Up Table',
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
                    DeleteEntity(methtable)
                end
            end
        }
    }
    
    if lib.progressBar({
        duration = UT.drugprocess.setuptime,
        label = 'Setting Table',
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
        methtable = CreateObject(model, crds.x, crds.y, crds.z, true, false, false)
        SetEntityHeading(methtable, head)
        PlaceObjectOnGroundProperly(methtable)
        FreezeEntityPosition(methtable, true)
        SetEntityCollision(methtable, true, true)
        exports.ox_target:addLocalEntity(methtable, methtableops)
    end
end, false)

RegisterCommand('tablechem1', function()
    local model = lib.requestModel('v_ret_ml_tablea')
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
    local head = GetEntityHeading(cache.ped)
    local chem1table = nil
    local chem1tableops = {
        {
            name = 'tablepickup',
            label = 'Pack Up Table',
            icon = 'fa-solid fa-dolly',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                if lib.progressBar({
                    duration = UT.drugprocess.setuptime,
                    label = 'Packing Up Table',
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
                    DeleteEntity(chem1table)
                end
            end
        }
    }
    
    if lib.progressBar({
        duration = UT.drugprocess.setuptime,
        label = 'Setting Table',
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
        chem1table = CreateObject(model, crds.x, crds.y, crds.z, true, false, false)
        SetEntityHeading(chem1table, head)
        PlaceObjectOnGroundProperly(chem1table)
        FreezeEntityPosition(chem1table, true)
        SetEntityCollision(chem1table, true, true)
        exports.ox_target:addLocalEntity(chem1table, chem1tableops)
    end
end, false)

RegisterCommand('tablechem2', function()
    local model = lib.requestModel('v_ret_ml_tableb')
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
    local head = GetEntityHeading(cache.ped)
    local chem2table = nil
    local chem2tableops = {
        {
            name = 'tablepickup',
            label = 'Pack Up Table',
            icon = 'fa-solid fa-dolly',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                if lib.progressBar({
                    duration = UT.drugprocess.setuptime,
                    label = 'Packing Up Table',
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
                    DeleteEntity(chem2table)
                end
            end
        }
    }
    
    if lib.progressBar({
        duration = UT.drugprocess.setuptime,
        label = 'Setting Table',
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
        chem2table = CreateObject(model, crds.x, crds.y, crds.z, true, false, false)
        SetEntityHeading(chem2table, head)
        PlaceObjectOnGroundProperly(chem2table)
        FreezeEntityPosition(chem2table, true)
        SetEntityCollision(chem2table, true, true)
        exports.ox_target:addLocalEntity(chem2table, chem2tableops)
    end
end, false)

RegisterCommand('tablechem3', function()
    local model = lib.requestModel('v_ret_ml_tablec')
    local crds = GetOffsetFromEntityInWorldCoords(cache.ped, 0.0, 1.2, 0.0)
    local head = GetEntityHeading(cache.ped)
    local chem3table = nil
    local chem3tableops = {
        {
            name = 'tablepickup',
            label = 'Pack Up Table',
            icon = 'fa-solid fa-dolly',
            canInteract = function(_, distance)
                return distance < 1.5
            end,
            onSelect = function()
                if lib.progressBar({
                    duration = UT.drugprocess.setuptime,
                    label = 'Packing Up Table',
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
                    DeleteEntity(chem3table)
                end
            end
        }
    }
    
    if lib.progressBar({
        duration = UT.drugprocess.setuptime,
        label = 'Setting Table',
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
        chem3table = CreateObject(model, crds.x, crds.y, crds.z, true, false, false)
        SetEntityHeading(chem3table, head)
        PlaceObjectOnGroundProperly(chem3table)
        FreezeEntityPosition(chem3table, true)
        SetEntityCollision(chem3table, true, true)
        exports.ox_target:addLocalEntity(chem3table, chem3tableops)
    end
end, false)