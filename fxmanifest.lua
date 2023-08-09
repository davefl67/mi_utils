-- FX Information
fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

-- Resource Information
name 'mi_utils'
author 'MI_Agimir'
version '1.0.1'
repository 'https://github.com/MesaIndigo/mi_utils'
description 'For support with streaming assets pertaining to M.I. Resources'

-- dependencies
dependencies {
    'ox_inventory',
    'ox_lib',
    'ox_target'
}

-- shared
shared_scripts {
	'@ox_lib/init.lua',
    'shared/items.lua',
    'shared/config.lua',
}
-- client
client_scripts {
    '@ox_core/imports/client.lua',
    'client/aspects/*.lua',
    'client/main.lua'
}
-- server
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@ox_core/imports/server.lua',
    'server/events.lua',
    'server/version.lua',
    'server/main.lua'
}

files {
    'web/peds/*.png'
}