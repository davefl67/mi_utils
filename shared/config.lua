-- config variables
CG = {}
CG.debug = true

-- disables all dispatch and removes police peds / vehicles
CG.dispatch = true

-- disables vehicle radios
CG.radios = true

-- disables player idle cam
CG.idle = true

-- hides default hud components
CG.hud = true

-- hides default aiming reticle
CG.aim = true

-- reduces damage from melee weapons
CG.dmg = true

-- calms the waters
CG.water = true

-- allow use of tackle
CG.tackle = false -- WIP, does not work

-- stops peds from dropping weapons on death
CG.noweapdrop = true

-- sets player skills
CG.skill = {
    allow = true,

    shooting = 30,
    stamina = 50,
    strength = 30,
    breathing = 30,
    wheelie = 50,
    flying = 50,
    stealth = 30
}

-- global variables
Debug = CG.debug
Target = exports.ox_target
Inventory = exports.ox_inventory

Ntfy = {
    id = 'notify',          -- don't worry about this
    pos ='top-right',       -- position of the notification
    bgndclr = '#76448A',    -- color of the background
    txtclr = '#ECF0F1',     -- color of the text
    descclr = '#F4D03F',    -- color of the description
    iconclr = '#F4D03F'     -- color of the icon
}
