local obj = nil
lib.callback.register('miut:server:spawnbox:small', function(source, crds, model)
    obj = CreateObject(model, crds.x, crds.y, crds.z-1, true, false, false)
end)

lib.callback.register('miut:server:object:hook', function(source, crds, model)
    obj = CreateObject(model, crds.x, crds.y, crds.z-1.05, true, false, false)
end)

RegisterNetEvent('miut:tackle:server:tackled', function(target)
    TriggerClientEvent("miut:tackle:client:used", target)
end)