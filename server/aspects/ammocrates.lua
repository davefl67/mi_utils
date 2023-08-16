-- case 22
lib.callback.register('miut:server:remove:22mm', function(source)
    local hasitem = Inventory:GetItem(source, 'box_ammo_22', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_ammo_22', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:22mm', function(source)
    exports.ox_inventory:AddItem(source, 'ammo-22', UT.ammo.ammo_22m)
end)
lib.callback.register('miut:server:canceled:22mm', function(source)
    exports.ox_inventory:AddItem(source, 'box_ammo_22', 1)
end)

-- case 38
lib.callback.register('miut:server:remove:38mm', function(source)
    local hasitem = Inventory:GetItem(source, 'box_ammo_38', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_ammo_38', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:38mm', function(source)
    exports.ox_inventory:AddItem(source, 'ammo-38', UT.ammo.ammo_38m)
end)
lib.callback.register('miut:server:canceled:38mm', function(source)
    exports.ox_inventory:AddItem(source, 'box_ammo_38', 1)
end)

-- case 44
lib.callback.register('miut:server:remove:44mm', function(source)
    local hasitem = Inventory:GetItem(source, 'box_ammo_44', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_ammo_44', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:44mm', function(source)
    exports.ox_inventory:AddItem(source, 'ammo-44', UT.ammo.ammo_44m)
end)
lib.callback.register('miut:server:canceled:44mm', function(source)
    exports.ox_inventory:AddItem(source, 'box_ammo_44', 1)
end)

-- case 45
lib.callback.register('miut:server:remove:45mm', function(source)
    local hasitem = Inventory:GetItem(source, 'box_ammo_45', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_ammo_45', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:45mm', function(source)
    exports.ox_inventory:AddItem(source, 'ammo-45', UT.ammo.ammo_45m)
end)
lib.callback.register('miut:server:canceled:45mm', function(source)
    exports.ox_inventory:AddItem(source, 'box_ammo_45', 1)
end)

-- case 50
lib.callback.register('miut:server:remove:50mm', function(source)
    local hasitem = Inventory:GetItem(source, 'box_ammo_50', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_ammo_50', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:50mm', function(source)
    exports.ox_inventory:AddItem(source, 'ammo-50', UT.ammo.ammo_50m)
end)
lib.callback.register('miut:server:canceled:50mm', function(source)
    exports.ox_inventory:AddItem(source, 'box_ammo_50', 1)
end)

-- case 9
lib.callback.register('miut:server:remove:9mm', function(source)
    local hasitem = Inventory:GetItem(source, 'box_ammo_9', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_ammo_9', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:9mm', function(source)
    exports.ox_inventory:AddItem(source, 'ammo-9', UT.ammo.ammo_9m)
end)
lib.callback.register('miut:server:canceled:9mm', function(source)
    exports.ox_inventory:AddItem(source, 'box_ammo_9', 1)
end)

-- case 12g
lib.callback.register('miut:server:remove:12g', function(source)
    local hasitem = Inventory:GetItem(source, 'box_ammo_12g', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_ammo_12g', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:12g', function(source)
    exports.ox_inventory:AddItem(source, 'ammo-shotgun', UT.ammo.ammo_b00)
end)
lib.callback.register('miut:server:canceled:12g', function(source)
    exports.ox_inventory:AddItem(source, 'box_ammo_12g', 1)
end)

-- case 556m
lib.callback.register('miut:server:remove:556m', function(source)
    local hasitem = Inventory:GetItem(source, 'box_ammo_556m', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_ammo_556m', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:556m', function(source)
    exports.ox_inventory:AddItem(source, 'ammo-rifle', UT.ammo.ammo_556m)
end)
lib.callback.register('miut:server:canceled:556m', function(source)
    exports.ox_inventory:AddItem(source, 'box_ammo_556m', 1)
end)

-- case 762m
lib.callback.register('miut:server:remove:762m', function(source)
    local hasitem = Inventory:GetItem(source, 'box_ammo_762m', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_ammo_762m', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:762m', function(source)
    exports.ox_inventory:AddItem(source, 'ammo-rifle2', UT.ammo.ammo_762m)
end)
lib.callback.register('miut:server:canceled:762m', function(source)
    exports.ox_inventory:AddItem(source, 'box_ammo_762m', 1)
end)

-- case 556m
lib.callback.register('miut:server:remove:76251m', function(source)
    local hasitem = Inventory:GetItem(source, 'box_ammo_76251m', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_ammo_76251m', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:76251m', function(source)
    exports.ox_inventory:AddItem(source, 'ammo-sniper', UT.ammo.ammo_76251m)
end)
lib.callback.register('miut:server:canceled:76251m', function(source)
    exports.ox_inventory:AddItem(source, 'box_ammo_76251m', 1)
end)