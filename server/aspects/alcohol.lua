-- rancho beer box
lib.callback.register('miut:server:remove:beer_rancho', function(source)
    local hasitem = Inventory:GetItem(source, 'beer_rancho_box', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'beer_rancho_box', 1)
    else
        print('nyopendedoor')
    end
end)

lib.callback.register('miut:server:add:beer_rancho', function(source)
    exports.ox_inventory:AddItem(source, 'beer_rancho', UT.alcohol.rancho)
end)

lib.callback.register('miut:server:canceled:beer_rancho', function(source)
    exports.ox_inventory:AddItem(source, 'beer_rancho_box', UT.alcohol.rancho)
end)

-- dusche beer box
lib.callback.register('miut:server:remove:beer_dusche', function(source)
    local hasitem = Inventory:GetItem(source, 'box_dusche_beer', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_dusche_beer', 1)
    else
        print('nyopendedoor')
    end
end)

lib.callback.register('miut:server:add:beer_dusche', function(source)
    exports.ox_inventory:AddItem(source, 'beer_dusche', UT.alcohol.dusche)
end)

lib.callback.register('miut:server:canceled:beer_dusche', function(source)
    exports.ox_inventory:AddItem(source, 'beer_dusche', UT.alcohol.dusche)
end)