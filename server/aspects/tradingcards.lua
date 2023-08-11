-- Secret Rare, Ultra Rare, Holo Rare, Rare, Uncommon, Common

local tradingcardmeta = {
    [1] = {
        label = 'L.S. Lore: Micael DeSanta',
        description = 'Look, you wake up one day and, and your legs, they just give, and you just can\'t run anymore.',
        type = 'Ultra Rare',
        image = 'card_michaelds'
    },
    [2] = {
        label = 'L.S. Lore: Franklin Clinton',
        description = 'Man, if you told me a few years ago I end up in this legit-ass business... I\'d laugh at your fucking face.',
        type = 'Ultra Rare',
        image = 'card_franklincn'
    },
    [3] = {
        label = 'L.S. Lore: Trevor Philips',
        description = 'What happens in the dark, comes out in the light..',
        type = 'Ultra Rare',
        image = 'card_trevorps'
    },




    [4] = {
        label = 'L.S. Lore: Lester Crest',
        description = 'We are about to put the Darwinism back in Social Darwinism, and brother, it is gonna be fun.',
        type = 'Holo Rare',
        image = 'card_lestercs'
    },
    [5] = {
        label = 'L.S. Lore: Dave Norton',
        description = 'Corrupt? Only a little. Definitely below average.',
        type = 'Holo Rare',
        image = 'card_davenn'
    },
    [6] = {
        label = 'L.S. Lore: Lamar Davis',
        description = 'When there\'s some shit to be won, Goddamnit, I want it. I don\'t give a fuck what it is. Y\'know what I\'m talkin\' about? I take no prisoners. I go hard doing this shit. Big dog. Big nuts.',
        type = 'Holo Rare',
        image = 'card_lamards'
    },
    [7] = {
        label = 'L.S. Lore: Steve Haines',
        description = 'Then I guess you getting involved with a clapped out old agent who\'s been living off of past glories was your first mistake. You\'re my boy now, amigo.',
        type = 'Holo Rare',
        image = 'card_stevehs'
    },
    [8] = {
        label = 'L.S. Lore : Devin Westin',
        description = 'Why? Because they have things nobody else has, because they can afford it, because frankly I\'m rich enough to do whatever the fuck I want...',
        type = 'Holo Rare',
        image = 'card_devinwn'
    },
    [9] = {
        label = 'L.S. Lore: Amanda De Santa',
        description = 'Thank you, Michael, whatever the fuck our fake last name is. You have ruined my serenity yet again. My yoga is fucked!.',
        type = 'Holo Rare',
        image = 'card_amandada'
    },
    [10] = {
        label = 'L.S. Lore: Jimmy De Santa',
        description = 'God help the morally bankrupt planet your generation have left us if you\'re the good guy.',
        type = 'Holo Rare',
        image = 'card_jimmyda'
    },
    [11] = {
        label = 'L.S. Lore: Tracey De Santa',
        description = '...You\'re dead. Dad, he said I had a massive... Jimmy called me a bitch!',
        type = 'Holo Rare',
        image = 'card_traceyda'
    },
    [12] = {
        label = 'L.S. Lore: Brad Snider',
        description = 'Did you see that shit? I fuckin\' put that bitch\'s face against the glass. Did you see that?',
        type = 'Holo Rare',
        image = 'card_bradsr'
    },
    [13] = {
        label = 'L.S. Lore: Harold "Stretch" Joseph',
        description = 'The man they couldn\'t hold down is back. Come on, now.',
        type = 'Holo Rare',
        image = 'card_haroldsj'
    },
    [14] = {
        label = 'L.S. Lore: Wei Cheng',
        description = 'I want to expand into Blaine County, but your business and your temperament prevent me from making inroads.',
        type = 'Holo Rare',
        image = 'card_weicg'
    },
    [15] = {
        label = 'L.S. Lore: Martin Madrazo',
        description = 'I love you... in an appropriate way I mean. If I didn\'t, you would be dead, of course.',
        type = 'Holo Rare',
        image = 'card_martinmo'
    },
    [16] = {
        label = 'L.S. Lore: Solomon Richards',
        description = 'You know they always say, never work with children or animals. Well, I wanna add to that list. Never work with directors or actors.',
        type = 'Holo Rare',
        image = 'card_solomonrs'
    },
    [17] = {
        label = 'L.S. Lore: Ron Jakowski',
        description = 'I ain\'t got a story. I\'m an independent thinker. Living out here, away from the man.',
        type = 'Holo Rare',
        image = 'card_ronji'
    },
    [18] = {
        label = 'L.S. Lore: Wade Hebert',
        description = 'Are we gonna stop for ice cream?',
        type = 'Holo Rare',
        image = 'card_wadeht'
    },
    [19] = {
        label = 'L.S. Lore: Molly Schultz',
        description = 'Mr. Weston is one of the most brilliant investors the world has ever known. He\'s... He\'s obviously a maverick.',
        type = 'Holo Rare',
        image = 'card_mollysz'
    },




}

--[[
    [x] = {
        label = 'L.S. Lore: name',
        description = 'desc',
        type = 'call Rare',
        image = 'card'
    },
]]

RegisterCommand('givecard', function(source)
    local hookId = exports.ox_inventory:registerHook('createItem', function(payload)
        local gtavcard = tradingcardmeta[payload.metadata.type]
        if not gtavcard then return end
        return gtavcard
    end, {
        itemFilter = {
            lstradingcard = true
        }
    })
    local metachance = tradingcardmeta[math.random(1, #tradingcardmeta)]
    Inventory:AddItem(source, 'lstradingcard', 1, metachance)
end, false)

exports('lstradingcard', function(event, item, inventory, slot, data)
    if event == 'usingItem' then
        local itemSlot = exports.ox_inventory:GetSlot(inventory.id, slot)
    end
end)