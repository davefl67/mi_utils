-- rancho
lib.callback.register('miut:server:remove:rancho', function(source)
    local hasitem = Inventory:GetItem(source, 'box_rancho_beer', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_rancho_beer', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:rancho', function(source)
    exports.ox_inventory:AddItem(source, 'rancho_beer', UT.alcohol.rancho)
end)
lib.callback.register('miut:server:canceled:rancho', function(source)
    exports.ox_inventory:AddItem(source, 'box_rancho_beer', 1)
end)


-- dusche
lib.callback.register('miut:server:remove:dusche', function(source)
    local hasitem = Inventory:GetItem(source, 'box_dusche_beer', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_dusche_beer', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:dusche', function(source)
    exports.ox_inventory:AddItem(source, 'dusche_beer', UT.alcohol.dusche)
end)
lib.callback.register('miut:server:canceled:dusche', function(source)
    exports.ox_inventory:AddItem(source, 'box_dusche_beer', 1)
end)

-- blarny
lib.callback.register('miut:server:remove:blarny', function(source)
    local hasitem = Inventory:GetItem(source, 'box_blarny_beer', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_blarny_beer', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:blarny', function(source)
    exports.ox_inventory:AddItem(source, 'blarny_beer', UT.alcohol.blarny)
end)
lib.callback.register('miut:server:canceled:blarny', function(source)
    exports.ox_inventory:AddItem(source, 'box_blarny_beer', 1)
end)

-- patriot
lib.callback.register('miut:server:remove:patriot', function(source)
    local hasitem = Inventory:GetItem(source, 'box_patriot_beer', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_patriot_beer', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:patriot', function(source)
    exports.ox_inventory:AddItem(source, 'patriot_beer', UT.alcohol.patriot)
end)
lib.callback.register('miut:server:canceled:patriot', function(source)
    exports.ox_inventory:AddItem(source, 'box_patriot_beer', 1)
end)

-- bourgeoix
lib.callback.register('miut:server:remove:bourgeoix', function(source)
    local hasitem = Inventory:GetItem(source, 'box_bourgeoix_liquor', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_bourgeoix_liquor', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:bourgeoix', function(source)
    exports.ox_inventory:AddItem(source, 'bb_bourgeoix', UT.alcohol.bourgeoix)
end)
lib.callback.register('miut:server:canceled:bourgeoix', function(source)
    exports.ox_inventory:AddItem(source, 'box_bourgeoix_liquor', 1)
end)

-- cariaque
lib.callback.register('miut:server:remove:cariaque', function(source)
    local hasitem = Inventory:GetItem(source, 'box_cariaque_liquor', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_cariaque_liquor', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:cariaque', function(source)
    exports.ox_inventory:AddItem(source, 'bb_cariaque', UT.alcohol.cariaque)
end)
lib.callback.register('miut:server:canceled:cariaque', function(source)
    exports.ox_inventory:AddItem(source, 'box_cariaque_liquor', 1)
end)

-- bleuterd
lib.callback.register('miut:server:remove:bleuterd', function(source)
    local hasitem = Inventory:GetItem(source, 'box_bleuterd_liquor', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_bleuterd_liquor', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:bleuterd', function(source)
    exports.ox_inventory:AddItem(source, 'cb_bleuterd', UT.alcohol.bleuterd)
end)
lib.callback.register('miut:server:canceled:bleuterd', function(source)
    exports.ox_inventory:AddItem(source, 'box_bleuterd_liquor', 1)
end)

-- ragga
lib.callback.register('miut:server:remove:ragga', function(source)
    local hasitem = Inventory:GetItem(source, 'box_ragga_liquor', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_ragga_liquor', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:ragga', function(source)
    exports.ox_inventory:AddItem(source, 'rb_ragga', UT.alcohol.ragga)
end)
lib.callback.register('miut:server:canceled:ragga', function(source)
    exports.ox_inventory:AddItem(source, 'box_ragga_liquor', 1)
end)

-- tequilya
lib.callback.register('miut:server:remove:tequilya', function(source)
    local hasitem = Inventory:GetItem(source, 'box_tequilya_liquor', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_tequilya_liquor', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:tequilya', function(source)
    exports.ox_inventory:AddItem(source, 'tb_tequilya', UT.alcohol.ragga)
end)
lib.callback.register('miut:server:canceled:tequilya', function(source)
    exports.ox_inventory:AddItem(source, 'box_tequilya_liquor', 1)
end)

-- nogo
lib.callback.register('miut:server:remove:nogo', function(source)
    local hasitem = Inventory:GetItem(source, 'box_nogo_liquor', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_nogo_liquor', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:nogo', function(source)
    exports.ox_inventory:AddItem(source, 'vb_nogo', UT.alcohol.nogo)
end)
lib.callback.register('miut:server:canceled:nogo', function(source)
    exports.ox_inventory:AddItem(source, 'box_nogo_liquor', 1)
end)

-- mount
lib.callback.register('miut:server:remove:mount', function(source)
    local hasitem = Inventory:GetItem(source, 'box_mount_liquor', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_mount_liquor', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:mount', function(source)
    exports.ox_inventory:AddItem(source, 'wb_mount', UT.alcohol.mount)
end)
lib.callback.register('miut:server:canceled:mount', function(source)
    exports.ox_inventory:AddItem(source, 'box_mount_liquor', 1)
end)

-- richards
lib.callback.register('miut:server:remove:richards', function(source)
    local hasitem = Inventory:GetItem(source, 'box_richards_liquor', 1, true)
    if hasitem then
        exports.ox_inventory:RemoveItem(source, 'box_richards_liquor', 1)
    else
        print('nyopendedoor')
    end
end)
lib.callback.register('miut:server:add:richards', function(source)
    exports.ox_inventory:AddItem(source, 'wb_richards', UT.alcohol.richards)
end)
lib.callback.register('miut:server:canceled:richards', function(source)
    exports.ox_inventory:AddItem(source, 'box_richards_liquor', 1)
end)