local obj = nil
lib.callback.register('miut:server:spawnbox:small', function(source, crds, model)
    obj = CreateObject(model, crds.x, crds.y, crds.z-1, true, false, false)
end)