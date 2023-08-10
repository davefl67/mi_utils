lib.callback.register('miut:server:remove:mre', function(source)
    local hasitem = Inventory:GetItem(source, 'beer_rancho_box', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'beer_rancho_box', 1)
    else
        print('nyopendedoor')
    end
end)

lib.callback.register('miut:server:add:mre', function(source)
    exports.ox_inventory:AddItem(source, 'beer_rancho', UT.alcohol.rancho)
end)