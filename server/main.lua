local obj = nil
lib.callback.register('miut:server:spawnbox:small', function(source, crds)
    obj = CreateObject('v_ind_cfbox2', crds.x, crds.y, crds.z-1, true, false, false)
end)