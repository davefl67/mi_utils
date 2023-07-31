UT = {}

UT.grill = {
    time = 15000, -- time to set up grill prop
}

UT.smoking = {

    vape = {
        model = 'xm3_prop_xm3_vape_01a', -- change to 'h4_prop_battle_vape_01' if below mpchristmas3 build
        damage = true,  -- allow damage when done smoking
        dmgamt = 128     -- amount of damage divided by max health
    },

    cigarrette = {
        time = 25000,   -- length of animation
        damage = true,  -- allow damage when done smoking
        dmgamt = 64     -- amount of damage divided by max health
    },

    cigar = {
        time = 25000,   -- length of animation
        damage = true,  -- allow damage when done smoking
        dmgamt = 32     -- amount of damage divided by max health
    },

}

UT.bombs = {

    explosive = {
        time = 5000,
        min = 1,
        max = 5,
    },

    gas = {
        time = 5000,
        min = 1,
        max = 5,
        dur = 10000,
        damage = true,
        damageamt = 0.3,
    },

    chemical = {
        -- soon
    },

}

UT.vehicle = {
    -- vehicle repair
    repair = true, -- allow use of repair item
    repairtime = 25000, -- time of progress bar
    -- vehicle clean
    clean = true, -- allow use of cleaning item
    cleantime = 25000, -- time of progress bar
}

UT.divegear = {
    time = 150.00, -- sets new time for oxygen level in seconds
    restrict = false -- allow players to use gear while in water
}

UT.armor = {

    level1 = {
        time = 5000,
        amt = 30
    },

    level2 = {
        time = 10000,
        amt = 60
    },

    level3 = {
        time = 15000,
        amt = 100
    }

}

UT.drugs = {

    weedsativa = {
        time = 10000,
        dur = 10000
    },

    weedindica = {
        time = 10000,
        dur = 10000
    },

    weedhybrid = {
        time = 10000,
        dur = 10000
    },

    crack_cocaine = {
        dur = 10000
    },

    crack_rocks = {
        time = 10000,
        dur = 10000
    },

    pillecstasy = {
        dur = 10000
    },

    pillmolly = {
        dur = 10000
    },

    jenkem = {
        dur = 10000
    },

}