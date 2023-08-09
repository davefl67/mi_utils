-- give item to player
lib.callback.register('miut:giveitem', function(source, item, count)
    local cancarry = Inventory:CanCarryItem(source, item, count)
    if cancarry then
        exports.ox_inventory:AddItem(source, item, count)
    else
        print('nyopendedoor')
    end
end)

-- remove item from player
lib.callback.register('miut:takeitem', function(source, item, count)
    local hasitem = Inventory:GetItem(source, item, count, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, item, count)
    else
        print('nyopendedoor')
    end
end)

-- set dropped item
lib.callback.register('setdropeditems', function(source, name, item, count, prop)
    exports.ox_inventory:CustomDrop(name, {
        { item, count },
    }, GetEntityCoords(source), 3, 5000, nil, prop)
end)