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

-- stream
files {
-- props
    'stream/**/**/*.ytyp',
    'stream/**/**/*.ymf',
    'stream/**/**/*.ydr',
-- vehicles
    'stream/**/**/*.ytd',
    'stream/**/**/*.yft',
    'stream/**/**/vehicles.meta',
    'stream/**/**/carvariations.meta',
    'stream/**/**/carcols.meta',
    'stream/**/**/handling.meta',
    'stream/**/**/vehiclelayouts.meta',
    'stream/**/**/dlctext.meta',
    'stream/**/**/contentunlocks.meta',

}

-- vehicles
data_file 'HANDLING_FILE' 'stream/**/**/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/**/**/vehicles.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/**/**/vehiclelayouts.meta'
data_file 'CARCOLS_FILE' 'stream/**/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'stream/**/**/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'stream/**/**/dlctext.meta'
data_file 'VEHICLE_METADATA_FILE' 'stream/**/**/contentunlocks.meta'
data_file 'AMBIENT_PED_MODEL_SET_FILE' 'stream/**/**/ambientpedmodelsets.meta'
-- props
data_file 'DLC_ITYP_REQUEST' 'stream/**/**/badges.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/**/**/bzzz_effect_cigarpack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/**/**/bzzz_food_dessert_a.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/**/**/bzzz_food_icecream_pack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/**/**/bzzz_food_xmas22.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/**/**/bzzz_foodpack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/**/**/dingus.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/**/**/knjgh_pizzas.ytyp'