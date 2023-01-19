Config = {}

Config.Core = {
    Name = "qb-core", -- Your core name
    Menu = "qb-menu", -- Your qb-menu name
    Target = "qb-target", -- Your qb-target name
    Keys = "vehiclekeys:client:SetOwner", -- Your trigger keys
    Fuel = "ps-fuel", -- Your fuel
    InvLink = "qb-inventory", -- Your inventory
    Webhook = "", -- Webhook for logs
}

Config.GangsAvailable = { "ballas", "vagos", "triads", "aztecas", "lostmc", "altruists", "marabunta", "families"} -- All Gangs
Config.Reputation = {
    Warehouse = { min = 5, max = 10}, -- How much reputation gang earn after stealing the warehouse
}

Config.EnableWarehouses = true -- Enable steal warehouses?
Config.Minigame = { -- This is the minigame when you go steal the warehouse
    NumberOfCircles = 2,
    MS = 20,
}
Config.Cooldown = 1 -- Cooldown to steal warehouses
Config.Warehouses = { -- Warehouses
    [1] = {
        Name = "Location 01",  -- Name of warehouse
        Position = { x = 2455.81, y = 1593.57, z = 33.04 }, -- Location of warehouse
        Blip = { enable = true, name = "Warehouse 01", scale = 0.8, sprite = 437}, -- Blip of warehouse
        Stealable = true, -- dont touch
        Time = 5000, -- Time of progressbar to robbing the drugs
        RewardQty = {  Min = 2, Max = 25, }, -- Amount of one drug of Rewards
        Rewards = { -- Rewards after stealing the warehouse
            'weed-bad-ql',
            'weed-med-ql',
            'meth-bad-ql',
            'meth-med-ql',
            'coke-bad-ql',
            'coke-med-ql',
        }
    },
    [2] = {
        Name = "Location 02", -- Name of warehouse
        Position = { x = 1208.61, y = 1855.34, z = 78.91 }, -- Location of warehouse
        Blip = { enable = true, name = "Warehouse 02", scale = 0.8, sprite = 437}, -- Blip of warehouse
        Stealable = true, -- dont touch
        Time = 5000, -- Time of progressbar to robbing the drugs
        RewardQty = {  Min = 2, Max = 25, }, -- Amount of one drug of Rewards
        Rewards = { -- Rewards after stealing the warehouse
            'weed-bad-ql',
            'weed-med-ql',
            'meth-bad-ql',
            'meth-med-ql',
            'coke-bad-ql',
            'coke-med-ql',
        }
    },
    [3] = {
        Name = "Location 03", -- Name of warehouse
        Position = { x = 1710.84, y = 4760.08, z = 42.04 }, -- Location of warehouse
        Blip = { enable = true, name = "Warehouse 03", scale = 0.8, sprite = 437}, -- Blip of warehouse
        Stealable = true, -- dont touch
        Time = 5000, -- Time of progressbar to robbing the drugs
        RewardQty = {  Min = 2, Max = 25, }, -- Amount of one drug of Rewards
        Rewards = { -- Rewards after stealing the warehouse
            'weed-bad-ql',
            'weed-med-ql',
            'meth-bad-ql',
            'meth-med-ql',
            'coke-bad-ql',
            'coke-med-ql',
        }
    }     
}

Config.NPC = { -- This is the npc's for garages
    [1] = {type = 4, hash= GetHashKey("g_m_y_ballaorig_01"), x = -0.22,  y = -1827.47,  z = 24.26, h = 232.53}, -- Ballas Ped
    [2] = {type = 4, hash= GetHashKey("s_m_y_garbage"), x = -642.32,  y = -1226.07,  z = 10.12, h = 305.52}, -- Triads Ped
    [3] = {type = 4, hash= GetHashKey("g_m_y_mexgoon_02"), x = 339.28,  y = -1990.58,  z = 22.81, h = 230.55}, -- Vagos Ped
    [4] = {type = 4, hash= GetHashKey("g_m_y_korean_02"), x = 486.84,  y = -1527.78,  z = 28.29, h = 52.67}, -- Aztecas Ped
    [5] = {type = 4, hash= GetHashKey("g_m_y_lost_01"), x = 93.45,  y = 3614.07,  z = 39.01, h = 58.82}, -- Lost Mc Ped
    [6] = {type = 4, hash= GetHashKey("mp_m_exarmy_01"), x = -1100.22,  y = 4943.49,  z = 217.37, h = 249.83}, -- Altruists Ped
    [7] = {type = 4, hash= GetHashKey("g_m_importexport_01"), x = 1252.45,  y = -1582.77,  z = 53.55, h = 214.90}, -- Marabunta Ped
    [8] = {type = 4, hash= GetHashKey("g_m_importexport_01"), x = -172.12,  y = -1637.09,  z = 32.44, h = 87.94}, -- Families Ped
}

Config.Blips = {
    [1] = {enable = true, x = -2.45, y = -1811.15, z = 29.15, sprite = 57, display = 4, scale = 2.0, colour = 7, name = "Ballas Gang"},
    [2] = {enable = true, x = -653.54, y = -1229.6, z = 11.55, sprite = 57, display = 4, scale = 2.0, colour = 22, name = "Triads Gang"},
    [3] = {enable = true, x = 326.36, y = -2000.35, z = 24.21, sprite = 57, display = 4, scale = 2.0, colour = 46, name = "Vagos Gang"},
    [4] = {enable = true, x = 495.64, y = -1527.97, z = 29.29, sprite = 57, display = 4, scale = 2.0, colour = 10, name = "Aztecas Gang"},
    [5] = {enable = true, x = 101.72, y = 3619.37, z = 40.49, sprite = 57, display = 4, scale = 2.0, colour = 40, name = "Lost MC Gang"},
    [6] = {enable = true, x = -1105.43, y = 4942.61, z = 218.35, sprite = 57, display = 4, scale = 2.0, colour = 62, name = "Altruists Gang"},
    [7] = {enable = true, x = 1250.3, y = -1580.79, z = 54.55, sprite = 57, display = 4, scale = 2.0, colour = 41, name = "Marabunta Gang"},
    [8] = {enable = true, x = -162.71, y = -1613.08, z = 33.65, sprite = 57, display = 4, scale = 2.0, colour = 21, name = "Families Gang"},
}

Config.Gangs = {
    ["ballas"] = {
        {
            gang = "ballas", -- Necessary gang
            stash = vector3(-2.45, -1811.15, 29.15), -- Location of stash
            weight = 500000, -- Weight of stash
            slots = 35, -- Slots of stash
            name = "Stash_Ballas", -- Name of stash
            garage = vector3(-0.22, -1827.47, 25.26), -- Location to list of vehicles
            spawn = vector4(3.07, -1829.5, 25.0, 139.33), -- Location where vehile spawns
            colors = { 145, 0 }, -- Primary & Secondary colour id https://pastebin.com/pwHci0xK
            vehicles = { -- Vehicle available 
                sanchez = "Sanchez",
                chino2 = "Lowrider",
            },
        },
    },
    ["triads"] = {
        {
            gang = "triads", -- Necessary gang
            stash = vector3(-653.54, -1229.6, 11.55), -- Location of stash
            weight = 500000, -- Weight of stash
            slots = 35, -- Slots of stash
            name = "Stash_Triads", -- Name of stash
            garage = vector3(-642.32, -1226.07, 10.12), -- Location to list of vehicles
            spawn = vector4(-640.09, -1224.15, 11.42, 305.01), -- Location where vehile spawns
            colors = { 140, 144 }, -- Primary & Secondary colour id https://pastebin.com/pwHci0xK
            vehicles = { -- Vehicle available 
                sanchez = "Sanchez",
                chino2 = "Lowrider",
            },
        },
    },
    ["vagos"] = {
        {
            gang = "vagos", -- Necessary gang
            stash = vector3(326.36, -2000.35, 24.21), -- Location of stash
            weight = 500000, -- Weight of stash
            slots = 35, -- Slots of stash
            name = "Stash_Vagos", -- Name of stash
            garage = vector3(339.28, -1990.58, 22.81), -- Location to list of vehicles
            spawn = vector4(348.07, -1993.38, 24.06, 329.41), -- Location where vehile spawns
            colors = { 89, 89 }, -- Primary & Secondary colour id https://pastebin.com/pwHci0xK
            vehicles = { -- Vehicle available 
                sanchez = "Sanchez",
                chino2 = "Lowrider",
            },
        },
    },
    ["aztecas"] = {
        {
            gang = "aztecas", -- Necessary gang
            stash = vector3(495.64, -1527.97, 29.29), -- Location of stash
            weight = 500000, -- Weight of stash
            slots = 35, -- Slots of stash
            name = "Stash_Aztecas", -- Name of stash
            garage = vector3(486.84, -1527.78, 28.29), -- Location to list of vehicles
            spawn = vector4(482.54, -1526.31, 29.3, 17.42), -- Location where vehile spawns
            colors = { 2, 2 }, -- Primary & Secondary colour id https://pastebin.com/pwHci0xK
            vehicles = { -- Vehicle available 
                sanchez = "Sanchez",
                chino2 = "Lowrider",
            },
        },
    },
    ["lostmc"] = {
        {
            gang = "lostmc", -- Necessary gang
            stash = vector3(101.72, 3619.37, 40.49), -- Location of stash
            weight = 500000, -- Weight of stash
            slots = 35, -- Slots of stash
            name = "Stash_LostMC", -- Name of stash
            garage = vector3(93.45, 3614.07, 39.01), -- Location to list of vehicles
            spawn = vector4(92.97, 3621.92, 40.01, 94.44), -- Location where vehile spawns
            colors = { 14, 14 }, -- Primary & Secondary colour id https://pastebin.com/pwHci0xK
            vehicles = { -- Vehicle available 
                sanchez = "Sanchez",
                chino2 = "Lowrider",
            },
        },
    },
    ["altruists"] = {
        {
            gang = "altruists", -- Necessary gang
            stash = vector3(-1105.43, 4942.61, 218.35), -- Location of stash
            weight = 500000, -- Weight of stash
            slots = 35, -- Slots of stash
            name = "Stash_Altruists", -- Name of stash
            garage = vector3(-1100.22, 4943.49, 218.37), -- Location to list of vehicles
            spawn = vector4(-1093.41, 4942.85, 218.33, 159.32), -- Location where vehile spawns
            colors = { 14, 14 }, -- Primary & Secondary colour id https://pastebin.com/pwHci0xK
            vehicles = { -- Vehicle available 
                sanchez = "Sanchez",
                chino2 = "Lowrider",
            },
        },
    },
    ["marabunta"] = {
        {
            gang = "marabunta", -- Necessary gang
            stash = vector3(1250.3, -1580.79, 54.55), -- Location of stash
            weight = 500000, -- Weight of stash
            slots = 35, -- Slots of stash
            name = "Stash_Marabunta", -- Name of stash
            garage = vector3(-1252.45, -1582.77, 53.55), -- Location to list of vehicles
            spawn = vector4(1260.0, -1594.39, 53.06, 127.4), -- Location where vehile spawns
            colors = { 14, 14 }, -- Primary & Secondary colour id https://pastebin.com/pwHci0xK
            vehicles = { -- Vehicle available 
                sanchez = "Sanchez",
                chino2 = "Lowrider",
            },
        },
    },
    ["families"] = {
        {
            gang = "families", -- Necessary gang
            stash = vector3(-162.71, -1613.08, 33.65), -- Location of stash
            weight = 500000, -- Weight of stash
            slots = 35, -- Slots of stash
            name = "Stash_Families", -- Name of stash
            garage = vector3(1250.3, -1580.79, 54.55), -- Location to list of vehicles
            spawn = vector4(-175.94, -1635.15, 33.37, 25.63), -- Location where vehile spawns
            colors = { 14, 14 }, -- Primary & Secondary colour id https://pastebin.com/pwHci0xK
            vehicles = { -- Vehicle available 
                sanchez = "Sanchez",
                chino2 = "Lowrider",
            },
        },
    },
}



--░█████╗░██████╗░░█████╗░███████╗████████╗██╗███╗░░██╗░██████╗░
--██╔══██╗██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██║████╗░██║██╔════╝░
--██║░░╚═╝██████╔╝███████║█████╗░░░░░██║░░░██║██╔██╗██║██║░░██╗░
--██║░░██╗██╔══██╗██╔══██║██╔══╝░░░░░██║░░░██║██║╚████║██║░░╚██╗
--╚█████╔╝██║░░██║██║░░██║██║░░░░░░░░██║░░░██║██║░╚███║╚██████╔╝
--░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░░░░╚═╝░░░╚═╝╚═╝░░╚══╝░╚═════╝░


Config.CraftingLocations = {
    ['BallasLocation'] = {
        location = vector3(4.3, -1816.21, 29.15), -- Location to Craft the CircleZone for qb-target
        gang = "ballas", -- Job required to craft at this location (set to nil if no job required)
        items = {
            ['lockpick'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Lockpick', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 32,
                    },
                },
            },
            ['screwdriverset'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Screwdriver Set', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 42,
                    },
                },
            },
        }
    },
    ['TriadsLocation'] = {
        location = vector3(-647.58, -1225.24, 11.55), -- Location to Craft the CircleZone for qb-target
        gang = "triads", -- Job required to craft at this location (set to nil if no job required)
        items = {
            ['lockpick'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Lockpick', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 32,
                    },
                },
            },
            ['screwdriverset'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Screwdriver Set', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 42,
                    },
                },
            },
        }
    },
    ['VagosLocation'] = {
        location = vector3(326.78, -1996.27, 24.21), -- Location to Craft the CircleZone for qb-target
        gang = "vagos", -- Job required to craft at this location (set to nil if no job required)
        items = {
            ['lockpick'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Lockpick', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 32,
                    },
                },
            },
            ['screwdriverset'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Screwdriver Set', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 42,
                    },
                },
            },
        }
    },
    ['AztecasLocation'] = {
        location = vector3(492.82, -1528.38, 29.29), -- Location to Craft the CircleZone for qb-target
        gang = "aztecas", -- Job required to craft at this location (set to nil if no job required)
        items = {
            ['lockpick'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Lockpick', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 32,
                    },
                },
            },
            ['screwdriverset'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Screwdriver Set', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 42,
                    },
                },
            },
        }
    },
    ['LostmcLocation'] = {
        location = vector3(107.72, 3611.58, 40.51), -- Location to Craft the CircleZone for qb-target
        gang = "lostmc", -- Job required to craft at this location (set to nil if no job required)
        items = {
            ['lockpick'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Lockpick', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 32,
                    },
                },
            },
            ['screwdriverset'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Screwdriver Set', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 42,
                    },
                },
            },
        }
    },
    ['AltruistsLocation'] = {
        location = vector3(-1107.68, 4947.98, 218.35), -- Location to Craft the CircleZone for qb-target
        gang = "altruists", -- Job required to craft at this location (set to nil if no job required)
        items = {
            ['lockpick'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Lockpick', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 32,
                    },
                },
            },
            ['screwdriverset'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Screwdriver Set', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 42,
                    },
                },
            },
        }
    },
    ['MarabuntaLocation'] = {
        location = vector3(1247.23, -1576.35, 58.35), -- Location to Craft the CircleZone for qb-target
        gang = "marabunta", -- Job required to craft at this location (set to nil if no job required)
        items = {
            ['lockpick'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Lockpick', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 32,
                    },
                },
            },
            ['screwdriverset'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Screwdriver Set', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 42,
                    },
                },
            },
        }
    },
    ['FamiliesLocation'] = {
        location = vector3(1247.23, -1576.35, 58.35), -- Location to Craft the CircleZone for qb-target
        gang = "families", -- Job required to craft at this location (set to nil if no job required)
        items = {
            ['lockpick'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Lockpick', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 32,
                    },
                },
            },
            ['screwdriverset'] = { -- Name of Item to Craft
                amount = 1, -- Amount of Item to Give to the Player
                name = 'Screwdriver Set', -- Name of Item to Display on the UI
                materialsNeeded = { -- Materials Needed to Craft Item
                    [1] = {
                        item = 'metalscrap', -- Name of Item Needed
                        amount = 20, -- Amount of Item Needed
                    },
                    [2] = {
                        item = 'plastic',
                        amount = 42,
                    },
                },
            },
        }
    },
}
