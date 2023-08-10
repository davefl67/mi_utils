local obj = nil

local deletebox = function()
    FreezeEntityPosition(obj, false)
end

lib.callback.register('miut:server:remove:mre', function(source)
    local hasitem = Inventory:GetItem(source, 'mre_1', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'mre_1', 1)
    else
        print('nyopendedoor')
    end
end)

lib.callback.register('miut:server:canceled:mre', function(source)
    exports.ox_inventory:AddItem(source, 'mre_1', 1)
end)

lib.callback.register('miut:server:add:mre', function(source)
    deletebox()
    -- MRE main
    local mrechance = math.random(0,4)
    if mrechance == 0 then
        exports.ox_inventory:AddItem(source, UT.mre.main1, 1)
    elseif mrechance == 1 then
        exports.ox_inventory:AddItem(source, UT.mre.main2, 1)
    elseif mrechance == 2 then
        exports.ox_inventory:AddItem(source, UT.mre.main3, 1)
    elseif mrechance == 3 then
        exports.ox_inventory:AddItem(source, UT.mre.main4, 1)
    elseif mrechance == 4 then
        exports.ox_inventory:AddItem(source, UT.mre.main5, 1)
    end
    -- MRE Side
    local sidechance = math.random(0,1)
    if sidechance == 0 then
        exports.ox_inventory:AddItem(source, UT.mre.side1, 1)
    else
        exports.ox_inventory:AddItem(source, UT.mre.side2, 1)
    end
    -- MRE bread / water / snack
    exports.ox_inventory:AddItem(source, UT.mre.bread, 1)
    exports.ox_inventory:AddItem(source, UT.mre.drink, 1)
    exports.ox_inventory:AddItem(source, UT.mre.snack, 1)
end)

