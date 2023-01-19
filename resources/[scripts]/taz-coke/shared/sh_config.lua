Config = Config or {}

Config.TextLocations = {
    -- // Grave Digging // --
    [1] = {['Coords'] = vector3(-1769.56, -296.79, 45.52), ['Text'] = '[<i class="far fa-eye"></i>] Rob', ['Distance'] = 1.5},
    [2] = {['Coords'] = vector3(-1763.7, -303.41, 45.59), ['Text'] = '[<i class="far fa-eye"></i>] Rob', ['Distance'] = 1.5},
    [3] = {['Coords'] = vector3(-1781.87, -278.87, 45.01), ['Text'] = '[<i class="far fa-eye"></i>] Rob', ['Distance'] = 1.5},
    [4] = {['Coords'] = vector3(-1793.82, -242.77, 48.03), ['Text'] = '[<i class="far fa-eye"></i>] Rob', ['Distance'] = 1.5},
    [5] = {['Coords'] = vector3(-1755.84, -294.18, 46.11), ['Text'] = '[<i class="far fa-eye"></i>] Rob', ['Distance'] = 1.5},
    [6] = {['Coords'] = vector3(-1742.41, -209.76, 56.96), ['Text'] = '[<i class="far fa-eye"></i>] Rob', ['Distance'] = 1.5},
    [7] = {['Coords'] = vector3(-1739.49, -211.72, 56.48), ['Text'] = '[<i class="far fa-eye"></i>] Rob', ['Distance'] = 1.5},
    -- // Coke // --
    [8] = {['Coords'] = vector3(870.53, -2313.19, 30.57), ['Text'] = '[<i class="far fa-eye"></i>] Enter', ['Distance'] = 1.5},
    [9] = {['Coords'] = vector3(1088.68, -3187.68, -38.99), ['Text'] = '[<i class="far fa-eye"></i>] Leave', ['Distance'] = 1.5},
    [10] = {['Coords'] = vector3(1090.23, -3196.56, -38.99), ['Text'] = '[<i class="far fa-eye"></i>] Process', ['Distance'] = 1.5},
    [11] = {['Coords'] = vector3(1095.04, -3196.66, -38.99), ['Text'] = '[<i class="far fa-eye"></i>] Bag', ['Distance'] = 1.5},
    -- // Meth // --
    [12] = {['Coords'] = vector3(916.38, 3576.89, 33.56), ['Text'] = '[<i class="far fa-eye"></i>] Enter', ['Distance'] = 1.5},
    [13] = {['Coords'] = vector3(969.57, -147.07, -46.39), ['Text'] = '[<i class="far fa-eye"></i>] Leave', ['Distance'] = 1.5},
    [14] = {['Coords'] = vector3(978.23, -146.69, -48.53), ['Text'] = '[<i class="far fa-eye"></i>] Process', ['Distance'] = 1.5},
    [15] = {['Coords'] = vector3(982.51, -146.28, -49.0), ['Text'] = '[<i class="far fa-eye"></i>] Increase Temperature', ['Distance'] = 1.5},
    [16] = {['Coords'] = vector3(978.96, -144.05, -49.0), ['Text'] = '[<i class="far fa-eye"></i>] Decrease Temperature', ['Distance'] = 1.5},
    [17] = {['Coords'] = vector3(987.36, -141.37, -49.0), ['Text'] = '[<i class="far fa-eye"></i>] Bag', ['Distance'] = 1.5},
    -- // Weed // --
    [18] = {['Coords'] = vector3(2222.26, 5577.41, 53.84), ['Text'] = '[<i class="far fa-eye"></i>] Pick', ['Distance'] = 20.0},
}

-- // Drugs // --

Config.LabLocations = {
    ['CokeLabEnter'] = {['Coords'] = vector4(870.53, -2313.19, 30.57, 173.89)},
    ['CokeLabExit'] = {['Coords'] = vector4(1088.68, -3187.68, -38.99, 176.04)},
    ['MethLabEnter'] = {['Coords'] = vector4(916.42, 3576.94, 33.56, 89.13)},
    ['MethLabExit'] = {['Coords'] = vector4(969.57, -147.07, -46.4, 267.52)},
}

-- // Dealers // --

Config.Dealers = {
    [1] = {
        ['Name'] = 'Grandma Mary',
        ['Type'] = 'medic-dealer',
        ['Coords'] = {['X'] = 635.17, ['Y'] = 2775.11, ['Z'] = 42.01},
        ['Products'] = {
            [1] = {
                ['name'] = "painkillers",
                ['price'] = 450,
                ['amount'] = 50,
                ['resetamount'] = 50,
                ['info'] = {},
                ['type'] = "item",
                ['slot'] = 1,
            },
            [2] = {
                ['name'] = "bandage",
                ['price'] = 100,
                ['amount'] = 50,
                ['resetamount'] = 50,
                ['info'] = {},
                ['type'] = "item",
                ['slot'] = 2,
            },
        },
    },
}