UT = {}

UT.grill = {
    time = 15000, -- time to set up grill prop
}

UT.badges = {
    maxdist = 10.0, -- max distance to effect nearby peds
}

UT.mre = {
    main1 = 'mre_chilimac',
    main2 = 'mre_beefstew',
    main3 = 'mre_chkenchilada',
    main4 = 'mre_veggieomelet',
    main5 = 'mre_chknking',
    side1 = 'mre_corn',
    side2 = 'mre_tmsoup',
    bread = 'mre_bread',
    drink = 'water',
    snack = 'ps_qs'
}

UT.smoking = {

    vape = {
        model = 'xm3_prop_xm3_vape_01a', -- change to 'h4_prop_battle_vape_01' if below mpchristmas3 build
        time = 25000,   -- length of animation
        damage = true,  -- allow damage when done smoking
        dmgamt = 128     -- amount of damage divided by max health
    },

    cigarette = {
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

UT.riotshield = {
    time = 5000, -- time of progress bar
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

    weedsativa = { -- time = time doing animation / dur = duration of effect
        time = 10000,
        dur = 30000
    },

    weedindica = { -- time = time doing animation / dur = duration of effect
        time = 10000,
        dur = 30000
    },

    weedhybrid = { -- time = time doing animation / dur = duration of effect
        time = 10000,
        dur = 30000
    },

    crack_cocaine = { -- dur = duration of effect
        dur = 30000
    },

    crack_rocks = { -- time = time doing animation / dur = duration of effect
        time = 10000,
        dur = 30000
    },

    pillecstasy = { -- dur = duration of effect
        dur = 30000
    },

    pillmolly = { -- dur = duration of effect
        dur = 30000
    },

}
