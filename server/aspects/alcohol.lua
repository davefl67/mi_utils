-- rancho beer box
lib.callback.register('miut:server:remove:rancho_beer', function(source)
    local hasitem = Inventory:GetItem(source, 'box_rancho_beer', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_rancho_beer', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:rancho_beer', function(source)
    exports.ox_inventory:AddItem(source, 'rancho_beer', UT.alcohol.rancho)
end)
lib.callback.register('miut:server:canceled:rancho_beer', function(source)
    exports.ox_inventory:AddItem(source, 'box_rancho_beer', 1)
end)


-- Dusche beer box
lib.callback.register('miut:server:remove:dusche_beer', function(source)
    local hasitem = Inventory:GetItem(source, 'box_dusche_beer', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_dusche_beer', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:dusche_beer', function(source)
    exports.ox_inventory:AddItem(source, 'dusche_beer', UT.alcohol.rancho)
end)
lib.callback.register('miut:server:canceled:dusche_beer', function(source)
    exports.ox_inventory:AddItem(source, 'box_dusche_beer', 1)
end)

-- Stronzo beer box
lib.callback.register('miut:server:remove:stronzo_beer', function(source)
    local hasitem = Inventory:GetItem(source, 'box_stronzo_beer', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_stronzo_beer', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:stronzo_beer', function(source)
    exports.ox_inventory:AddItem(source, 'stronzo_beer', UT.alcohol.rancho)
end)
lib.callback.register('miut:server:canceled:stronzo_beer', function(source)
    exports.ox_inventory:AddItem(source, 'box_stronzo_beer', 1)
end)

-- Patriot beer box
lib.callback.register('miut:server:remove:patriot_beer', function(source)
    local hasitem = Inventory:GetItem(source, 'box_patriot_beer', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_patriot_beer', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:patriot_beer', function(source)
    exports.ox_inventory:AddItem(source, 'patriot_beer', UT.alcohol.rancho)
end)
lib.callback.register('miut:server:canceled:patriot_beer', function(source)
    exports.ox_inventory:AddItem(source, 'box_patriot_beer', 1)
end)