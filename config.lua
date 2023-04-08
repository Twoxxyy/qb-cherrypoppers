Config = {}

-- Set to whatever job name you want to use.
Config.Job = 'cherrypoppers'

-- Change ped and ped location for the employees shared garage. 
Config.GaragePed = {
    { coords = vector4(-462.67, -48.08, 44.52, 181.73), ped = 'ig_floyd' },
    -- add more locations as needed
}

-- Change blip locations for a different MLO than Don's Ice Cream.
Config.blips = {
    title="Cherry Poppers", -- Name displayed with blip
    colour=1, -- Color of the blip
    id=89, -- You can see more id's here: https://docs.fivem.net/docs/game-references/blips/
    scale=0.65, -- Set the size of the blip
    pos = vector3(-466.51, -26.78, 45.76) -- Set the location of the blip
}

-- Set the spawn for the employee car
Config.CarSpawn = vector4(-462.13, -52.89, 44.42, 87.64)

-- Add or remove any items you want from here. 
Config.Items = {
label = "Shop",
    slots = 7,
    items = {
        [1] = {
            name = "cp-sugar", -- spawn name of item/ingredient
            price = 0, -- price employee pays for the item/ingredient
            amount = 100, -- how many of the item are in the shop
            info = {},
            type = "item", -- keep as item unless using a weapon for some reason?
            slot = 1, -- which slot in the shop you want it to be.
        },
        [2] = {
            name = "cp-milk",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "cp-strawberry",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "cp-chocolate",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "cp-vanilla",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "cp-icecreamcone",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "cp-cup",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 7,
        },
    }
}
