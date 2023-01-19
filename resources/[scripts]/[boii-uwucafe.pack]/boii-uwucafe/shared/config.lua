----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}

-- Core settings you can ignore these if you have not renamed your core
Config.CoreSettings = {
    Core = 'QBCore', -- The name of your core. Default; QBCore
    CoreFolder = 'qb-core', -- The name of your core folder. Default; qb-core
    TargetName = 'qb-target', -- The name of your third eye targeting. Default; qb-target
    MenuName = 'qb-menu', -- The name of your menu. Default; qb-menu
    InputName = 'qb-input', -- The name of your input menu for billing. Default; qb-input
    SkillBarName = 'qb-skillbar', -- The name of your skillbar. Default; qb-skillbar
    MetaDataEvent = 'QBCore:Server:SetMetaData', -- The name of your set metadata event. Default; 'QBCore:Server:SetMetaData'
    DutyEvent = 'QBCore:ToggleDuty', -- The name of your duty event. Default; 'QBCore:ToggleDuty'
    AddStressEvent = 'hud:server:GainStress', -- Event to remove stress from player. Default; 'hud:server:GainStress'
    RemoveStressEvent = 'hud:server:RelieveStress', -- Event to remove stress from player. Default; 'hud:server:RelieveStress'
    ManagementEvent = 'qb-bossmenu:client:OpenMenu', -- Name of your boss menu event. Default; 'qb-bossmenu:client:OpenMenu'
    PhoneEvent = 'qb-phone:RefreshPhone', -- The name of your phone event this is needed for billing. Default; 'qb-phone:RefreshPhone'
    ClothingEvent = 'qb-clothing:client:openOutfitMenu', -- The name of your clothing event this is needed to open outfit menu. Default; 'qb-clothing:client:OpenOutfitMenu'
    FuelScript = 'LegacyFuel' -- The name of your fuel script. Default; LegacyFuel
}

-- Blip settings
Config.Blips = {
    {title='UwU Cafe', colour=5, id=52, x = -580.34, y = -1061.41, z = 22.35, scale = 0.6, useblip = true},
}

-- Job settings
Config.JobSettings = {
    Job = 'uwu', -- The name of your job in shared.lua
    Raid = { 
        Job = 'police', -- The name of your job in shared.lua that is allowed to raid storage locations
        Time = math.random(8,15), -- Time required to raid storages
        Animations = {
            Dict = 'mini@safe_cracking',
            Anim = 'door_open_succeed_stand',
            Flags = 49
        }
    },
    MenuItem = 'uwumenu', -- Item used to display menu
    Locations = {
        Duty = {{name = 'uwu_duty', coords = vector3(-593.98, -1053.27, 22.34), length = 3.0, width = 0.8, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 23.50, distance = 1.5}},
        Clothing = {{name = 'uwu_clothing', coords = vector3(-586.57, -1049.86, 22.34), length = 1.4, width = 1.4, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 23.50, distance = 3.0}},
        Wash = {
            {name = 'uwu_wash', coords = vector3(-587.99, -1062.58, 22.36), length = 1.0, width = 1.0, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 22.90, distance = 1.5},
            {name = 'uwu_wash2', coords = vector3(-570.25, -1051.41, 22.37), length = 0.4, width = 0.4, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 22.90, distance = 0.5},
            {name = 'uwu_wash3', coords = vector3(-570.09, -1057.0, 21.93), length = 0.4, width = 0.4, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 22.90, distance = 0.5}
        },
        Management = {{name = 'uwu_management', coords = vector3(-596.08, -1052.79, 23.25), length = 1.0, width = 1.0, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 22.90, distance = 1.5}},
        EPOS = {
            {name = 'uwu_pay', coords = vector3(-584.15, -1058.66, 22.34), radius = 0.5, debugPoly = false, useZ = true, distance = 1.5},
            {name = 'uwu_pay2', coords = vector3(-584.15, -1061.39, 22.34), radius = 0.5, debugPoly = false, useZ = true, distance = 1.5}
        },
        Store = {
            Dry = {
                {name = 'uwu_drystore', coords = vector3(-585.27, -1055.33, 22.34), length = 1.0, width = 2.0, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 23.90, distance = 1.5}
            },
            Cold = { 
                {name = 'uwu_fridge', coords = vector3(-588.51, -1067.07, 22.34), length = 2.5, width = 1.0, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 23.70, distance = 1.5}
            }
        },
        Storage = {
            Job = {{name = 'uwu_jobstorage', coords = vector3(-590.12, -1068.07, 22.34), length = 1.3, width = 1.0, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 23.60, distance = 1.5}},
            Boss = {{name = 'uwu_bossstorage', coords = vector3(-597.35, -1049.48, 22.34), length = 1.0, width = 1.5, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 23.70, distance = 1.5}},
            Tray = {{name = 'uwu_tray', coords = vector3(-584.15, -1059.3, 22.34), length = 0.6, width = 0.6, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 22.90, distance = 1.5}},
            Tray2 = {{name = 'uwu_tray2', coords = vector3(-584.15, -1062.04, 22.34), length = 0.6, width = 0.6, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 22.90, distance = 1.5}},
            Tray3 = {{name = 'uwu_tray3', coords = vector3(-587.57, -1059.55, 22.34), length = 2.0, width = 1.4, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 22.90, distance = 1.5}}
        },
        Drinks = {
            Hot = {
                {name = 'uwu_hotdrinks', coords = vector3(-586.84, -1061.92, 22.34), radius = 0.5, debugPoly = false, useZ = true, distance = 1.5}
            }
        },
        Food = {
            Hob = {
                {name = 'uwu_hob', coords = vector3(-590.94, -1056.53, 22.5), length = 0.8, width = 0.8, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 22.90, distance = 1.5}
            },
            Cuttingboard = {
                {name = 'uwu_cuttingboard', coords = vector3(-590.96, -1063.1, 22.26), length = 0.6, width = 0.6, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 22.90, distance = 1.5}
            },
            Mixer = { 
                {name = 'uwu_mixer', coords = vector3(-590.67, -1064.16, 22.34), length = 0.5, width = 0.5, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 22.90, distance = 1.5}
            }
        },
        Dishes = {{name = 'uwu_dishstorage', coords = vector3(-588.0, -1063.79, 22.34), length = 1.0, width = 1.0, heading = 0.0, debugPoly = false, minZ = 21.50, maxZ = 22.90, distance = 1.5}}
    }
}

-- Store settings
Config.Store = {
    Dry = {
        Items = {
            [1] = {name = 'emptyplasticcup', price = 1, amount = 1000, info = {}, type = 'item', slot = 1},
            [2] = {name = 'emptyglassbottle', price = 1, amount = 1000, info = {}, type = 'item', slot = 2},
            [3] = {name = 'coffeebean', price = 1, amount = 1000, info = {}, type = 'item', slot = 3},
            [4] = {name = 'blacktealeaf', price = 1, amount = 1000, info = {}, type = 'item', slot = 4},
            [5] = {name = 'greentealeaf', price = 1, amount = 1000, info = {}, type = 'item', slot = 5},
            [6] = {name = 'rice', price = 1, amount = 1000, info = {}, type = 'item', slot = 6},
            [7] = {name = 'ramennoodles', price = 1, amount = 1000, info = {}, type = 'item', slot = 7},
            [8] = {name = 'bobateasyrup', price = 1, amount = 1000, info = {}, type = 'item', slot = 8},
            [9] = {name = 'flour', price = 1, amount = 1000, info = {}, type = 'item', slot = 9},
            [10] = {name = 'sodiumbicarbonate', price = 1, amount = 1000, info = {}, type = 'item', slot = 10},
            [11] = {name = 'adzukibeans', price = 1, amount = 1000, info = {}, type = 'item', slot = 11}
        }
    },
    Cold = {
        Items = {
            [1] = {name = 'water', price = 1, amount = 1000, info = {}, type = 'item', slot = 1},
            [2] = {name = 'carbonatedwater', price = 1, amount = 1000, info = {}, type = 'item', slot = 2},
            [3] = {name = 'cocacola', price = 1, amount = 1000, info = {}, type = 'item', slot = 3},
            [4] = {name = 'pepsi', price = 1, amount = 1000, info = {}, type = 'item', slot = 4},
            [5] = {name = 'drpepper', price = 1, amount = 1000, info = {}, type = 'item', slot = 5},
            [6] = {name = 'mountaindew', price = 1, amount = 1000, info = {}, type = 'item', slot = 6},
            [7] = {name = 'lemonade', price = 1, amount = 1000, info = {}, type = 'item', slot = 7},
            [8] = {name = 'milk', price = 1, amount = 1000, info = {}, type = 'item', slot = 8},
            [9] = {name = 'tapiocapearls', price = 1, amount = 1000, info = {}, type = 'item', slot = 9},
            [10] = {name = 'egg', price = 1, amount = 1000, info = {}, type = 'item', slot = 10},
            [11] = {name = 'lettuce', price = 1, amount = 1000, info = {}, type = 'item', slot = 11},
            [12] = {name = 'seaweed', price = 1, amount = 1000, info = {}, type = 'item', slot = 12},
            [13] = {name = 'cherry', price = 1, amount = 1000, info = {}, type = 'item', slot = 13},
            [14] = {name = 'lemon', price = 1, amount = 1000, info = {}, type = 'item', slot = 14},
            [15] = {name = 'pineapple', price = 1, amount = 1000, info = {}, type = 'item', slot = 15},
            [16] = {name = 'coconut', price = 1, amount = 1000, info = {}, type = 'item', slot = 16},
            [17] = {name = 'orange', price = 1, amount = 1000, info = {}, type = 'item', slot = 17},
            [18] = {name = 'apple', price = 1, amount = 1000, info = {}, type = 'item', slot = 18},
            [19] = {name = 'strawberry', price = 1, amount = 1000, info = {}, type = 'item', slot = 19},
            [20] = {name = 'blueberry', price = 1, amount = 1000, info = {}, type = 'item', slot = 20},
            [21] = {name = 'meat_deer', price = 1, amount = 1000, info = {}, type = 'item', slot = 21},
            [22] = {name = 'meat_cow', price = 1, amount = 1000, info = {}, type = 'item', slot = 22},
            [23] = {name = 'meat_pig', price = 1, amount = 1000, info = {}, type = 'item', slot = 23},
            [24] = {name = 'meat_chicken', price = 1, amount = 1000, info = {}, type = 'item', slot = 24},
            [25] = {name = 'sardine', price = 1, amount = 1000, info = {}, type = 'item', slot = 25},
            [26] = {name = 'mackerel', price = 1, amount = 1000, info = {}, type = 'item', slot = 26},
            [27] = {name = 'croaker', price = 1, amount = 1000, info = {}, type = 'item', slot = 27},
            [28] = {name = 'perch', price = 1, amount = 1000, info = {}, type = 'item', slot = 28},
            [29] = {name = 'rockfish', price = 1, amount = 1000, info = {}, type = 'item', slot = 29},
            [30] = {name = 'halibut', price = 1, amount = 1000, info = {}, type = 'item', slot = 30}
        }
    }
}

-- Storage settings
Config.Storage = {
    Boss = {
        Name = 'uwu_boss_storage',
        Size = 1000000,
        Slots = 41
    },
    Job = {
        Name = 'uwu_job_storage',
        Size = 2000000,
        Slots = 41
    },
    Tray = {
        Name = 'uwu_tray1',
        Size = 50000,
        Slots = 5
    },
    Tray2 = {
        Name = 'uwu_tray2',
        Size = 50000,
        Slots = 5
    },
    Tray3 = {
        Name = 'uwu_tray3',
        Size = 150000,
        Slots = 41
    },
}

Config.Food = {
    Hob = {
        Animations = {
            Dict = 'mini@safe_cracking',
            Anim = 'door_open_succeed_stand',
            Flags = 49
        },
        Bento = {
            Required = {name = 'clean_bentobox', label = 'Clean Bento Box'},
            Time = math.random(3,7), -- Time in (s) to prepare bento box
            Aji = {               
                Required = {
                    -- Do not use more than 3 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'mackerel', label = 'Mackerel', amount = 1},
                    ['2'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['3'] = {name = 'lettuce', label = 'Lettuce', amount = 1},
                },
                Return = {name = 'ajibento', label = 'Aji Bento'}
            },
            Inada = {
                Required = {
                    -- Do not use more than 3 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'perch', label = 'Perch', amount = 1},
                    ['2'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['3'] = {name = 'lettuce', label = 'Lettuce', amount = 1},
                },
                Return = {name = 'inadabento', label = 'Inada Bento'}
            },
            Akoudai = {
                Required = {
                    -- Do not use more than 3 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'rockfish', label = 'Rockfish', amount = 1},
                    ['2'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['3'] = {name = 'lettuce', label = 'Lettuce', amount = 1},
                },
                Return = {name = 'akoudaibento', label = 'Akoudai Bento'}
            },
            Katsu = {
                Required = {
                    -- Do not use more than 3 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'meat_chicken', label = 'Chicken', amount = 1},
                    ['2'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['3'] = {name = 'lettuce', label = 'Lettuce', amount = 1},
                },
                Return = {name = 'katsubento', label = 'Katsu Bento'}
            },
            Chashu = {
                Required = {
                    -- Do not use more than 3 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'meat_pig', label = 'Pork', amount = 1},
                    ['2'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['3'] = {name = 'lettuce', label = 'Lettuce', amount = 1},
                },
                Return = {name = 'chashubento', label = 'Chashu Bento'}
            },
        },
        Ramen = {
            Required = {name = 'clean_bowl', label = 'Clean Bowl'},
            Time = math.random(8,14), -- Time in (s) to prepare ramen
            Iwashi = {
                Required = {
                    -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'sardine', label = 'Sardine', amount = 2},
                    ['2'] = {name = 'ramennoodles', label = 'Ramen Noodles', amount = 1},
                },
                Return = {name = 'iwashiramen', label = 'Iwashi Ramen'}
            },
            Aji = {
                Required = {
                    -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'mackerel', label = 'Mackerel', amount = 2},
                    ['2'] = {name = 'ramennoodles', label = 'Ramen Noodles', amount = 1},
                },
                Return = {name = 'ajiramen', label = 'Aji Ramen'}
            },
            Ohyou = {
                Required = {
                    -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'halibut', label = 'Halibut', amount = 1},
                    ['2'] = {name = 'ramennoodles', label = 'Ramen Noodles', amount = 1},
                },
                Return = {name = 'ohyouramen', label = 'O-hyou Ramen'}
            },
            Chicken = {
                Required = {
                    -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'meat_chicken', label = 'Chicken', amount = 2},
                    ['2'] = {name = 'ramennoodles', label = 'Ramen Noodles', amount = 1},
                },
                Return = {name = 'chickenramen', label = 'Chicken Ramen'}
            },
            Beef = {
                Required = {
                    -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'meat_cow', label = 'Beef', amount = 1},
                    ['2'] = {name = 'ramennoodles', label = 'Ramen Noodles', amount = 1},
                },
                Return = {name = 'beeframen', label = 'Beef Ramen'}
            }
        }
    },
    Cuttingboard = {
        Animations = {
            Dict = 'mini@safe_cracking',
            Anim = 'door_open_succeed_stand',
            Flags = 49
        },
        Required = {
            ['1'] = {name = 'weapon_knife', label = 'Knife'},
            ['2'] = {name = 'clean_plate', label = 'Clean Plate'}
        },
        Sushi = {
            Time = math.random(3,7), -- Time in (s) to prepare sushi
            Iwashi = {
                Required = {
                    -- Do not use more than 3 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'sardine', label = 'Sardine', amount = 1},
                    ['2'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['3'] = {name = 'seaweed', label = 'Seaweed', amount = 1},
                },
                Return = {name = 'iwashisushi', label = 'Iwashi Sushi'}
            },
            Inada = {
                Required = {
                    -- Do not use more than 3 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'perch', label = 'Perch', amount = 1},
                    ['2'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['3'] = {name = 'seaweed', label = 'Seaweed', amount = 1},
                },
                Return = {name = 'inadasushi', label = 'Inada Sushi'}
            },
            Guchi = {
                Required = {
                    -- Do not use more than 3 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'croaker', label = 'Croaker', amount = 1},
                    ['2'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['3'] = {name = 'seaweed', label = 'Seaweed', amount = 1},
                },
                Return = {name = 'guchisushi', label = 'Ishimochi Guchi Sushi'}
            },
            Akoudai = {
                Required = {
                    -- Do not use more than 3 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'rockfish', label = 'Rockfish', amount = 1},
                    ['2'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['3'] = {name = 'seaweed', label = 'Seaweed', amount = 1},
                },
                Return = {name = 'guchisushi', label = 'Ishimochi Guchi Sushi'}
            },
            Ohyou = {
                Required = {
                    -- Do not use more than 3 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'halibut', label = 'Halibut', amount = 1},
                    ['2'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['3'] = {name = 'seaweed', label = 'Seaweed', amount = 1},
                },
                Return = {name = 'ohyousushi', label = 'O-hyou Sushi'}
            },
        },
        Sashimi = {
            Time = math.random(3,7), -- Time in (s) to prepare sushi
            Aji = {
                Required = {
                    -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'mackerel', label = 'Mackerel', amount = 1},
                    ['2'] = {name = 'lettuce', label = 'Lettuce', amount = 1},
                },
                Return = {name = 'ajisashimi', label = 'Aji Sashimi'}
            },
            Akoudai = {
                Required = {
                    -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'rockfish', label = 'Rockfish', amount = 1},
                    ['2'] = {name = 'lettuce', label = 'Lettuce', amount = 1},
                },
                Return = {name = 'akoudaisashimi', label = 'Akoudai Sashimi'}
            },
            Ohyou = {
                Required = {
                    -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'halibut', label = 'Halibut', amount = 1},
                    ['2'] = {name = 'lettuce', label = 'Lettuce', amount = 1},
                },
                Return = {name = 'ohyousashimi', label = 'O-hyou Sashimi'}
            },
            Beef = {
                Required = {
                    -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'meat_cow', label = 'Beef', amount = 1},
                    ['2'] = {name = 'lettuce', label = 'Lettuce', amount = 1},
                },
                Return = {name = 'beefsashimi', label = 'Beef Sashimi'}
            },
            Venison = {
                Required = {
                    -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                    ['1'] = {name = 'meat_deer', label = 'Venison', amount = 1},
                    ['2'] = {name = 'lettuce', label = 'Lettuce', amount = 1},
                },
                Return = {name = 'deersashimi', label = 'Venison Sashimi'}
            }
        }
    },
    Mixer = {
        Animations = {
            Dict = 'mini@safe_cracking',
            Anim = 'door_open_succeed_stand',
            Flags = 49
        },
        Unbaked = {
            Time = math.random(8,17), -- Time in (s) to prepare unbaked
            Required = {name = 'clean_plate', label = 'Clean Plate'},
            Nishigashi = {
                Required = {
                    ['1'] = {name = 'water', label = 'Bottle of Water', amount = 1},
                    ['2'] = {name = 'adzukibeans', label = 'Adzuki Beans', amount = 3},
                    ['3'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['4'] = {name = 'flour', label = 'Flour', amount = 1}
                },
                Return = {name = 'nishdaifuki', label = 'Nishigashi Daifuku'}
            },
            Kuromame = {
                Required = {
                    ['1'] = {name = 'water', label = 'Bottle of Water', amount = 1},
                    ['2'] = {name = 'adzukibeans', label = 'Adzuki Beans', amount = 3},
                    ['3'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['4'] = {name = 'flour', label = 'Flour', amount = 1},
                    ['5'] = {name = 'strawberry', label = 'Strawberry', amount = 2}
                },
                Return = {name = 'kurodaifuku', label = 'Kuromame Daifuku'}
            },
            Mitarashi = {
                Required = {
                    ['1'] = {name = 'adzukibeans', label = 'Adzuki Beans', amount = 1},
                    ['2'] = {name = 'strawberry', label = 'Strawberry', amount = 3},
                    ['3'] = {name = 'apple', label = 'Apple', amount = 1},
                    ['4'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['5'] = {name = 'flour', label = 'Flour', amount = 2}
                },
                Return = {name = 'mitadango', label = 'Mitarashi Dango'}
            },
            Matche = {
                Required = {
                    ['1'] = {name = 'greentealeaf', label = 'Green Tea Leaves', amount = 5},
                    ['2'] = {name = 'egg', label = 'Egg', amount = 3},
                    ['3'] = {name = 'milk', label = 'Milk', amount = 1},
                    ['4'] = {name = 'flour', label = 'Flour', amount = 1},
                    ['5'] = {name = 'sodiumbicarbonate', label = 'Baking Soda', amount = 1}
                },
                Return = {name = 'matchacrepe', label = 'Matche Mille'}
            },
            Mizu = {
                Required = {
                    ['1'] = {name = 'water', label = 'Bottle of Water', amount = 1},
                    ['2'] = {name = 'adzukibeans', label = 'Adzuki Beans', amount = 3},
                    ['3'] = {name = 'greentealeaf', label = 'Green Tea Leaves', amount = 1},
                    ['4'] = {name = 'rice', label = 'Rice', amount = 1},
                    ['5'] = {name = 'flour', label = 'Flour', amount = 1}
                },
                Return = {name = 'mizuyokan', label = 'Mizu Yokan'}
            }
        }
    }
}

-- Drinks settings
Config.Drinks = {
    Hot = {
        Animations = {
            Dict = 'mini@safe_cracking',
            Anim = 'door_open_succeed_stand',
            Flags = 49
        },
        Required = {name = 'clean_cup', label = 'Clean Cup'},
        Coffee = {
            Time = math.random(3,7), -- Time in (s) to use coffee machine
            Required = {name = 'coffeebean', label = 'Coffee Beans', amount = 3},
            Return = {name = 'cup_coffee', label = 'Cup of Coffee'}
        },
        Tea = {
            Time = math.random(3,7), -- Time in (s) to use coffee machine
            Required = {name = 'blacktealeaf', label = 'Black Tea Leaves', amount = 3},
            Return = {name = 'cup_tea', label = 'Cup of Tea'}
        },
        GreenTea = {
            Time = math.random(3,7), -- Time in (s) to use coffee machine
            Required = {name = 'greentealeaf', label = 'Green Tea Leaves', amount = 3},
            Return = {name = 'cup_greentea', label = 'Cup of Green Tea'}
        }
    },
    Mixer = {
        Animations = {
            Dict = 'mini@safe_cracking',
            Anim = 'door_open_succeed_stand',
            Flags = 49
        },
        Ramune = {
            Time = math.random(3,7), -- Time in (s) to mix ramune
            Required = {
                -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                ['1'] = {name = 'emptyglassbottle', label = 'Empty Glass Bottle'},
                ['2'] = {name = 'carbonatedwater', label = 'Carbonated Water'}
            },
            Cherry = {
                Required = {name = 'cherry', label = 'Cherry', amount = 3},
                Return  = {name = 'ramunecherry', label = 'Ramune Cherry'}
            },
            Lemon = {
                Required = {name = 'lemon', label = 'Lemon', amount = 3},
                Return  = {name = 'ramunelemon', label = 'Ramune Lemon'}
            },
            Pineapple = {
                Required = {name = 'pineapple', label = 'Pineapple', amount = 3},
                Return  = {name = 'ramunepapple', label = 'Ramune Pineapple'}
            },
            Coconut = {
                Required = {name = 'coconut', label = 'Coconut', amount = 3},
                Return  = {name = 'ramunecoconut', label = 'Ramune Coconut'}
            },
            Orange = {
                Required = {name = 'orange', label = 'Orange', amount = 3},
                Return  = {name = 'ramuneorange', label = 'Ramune Orange'}
            },
            Apple = {
                Required = {name = 'apple', label = 'Apple', amount = 3},
                Return  = {name = 'ramuneapple', label = 'Ramune Apple'}
            },
            Strawberry = {
                Required = {name = 'strawberry', label = 'Strawberry', amount = 3},
                Return  = {name = 'ramunestrawberry', label = 'Ramune Strawberry'}
            },
            Blueberry = {
                Required = {name = 'blueberry', label = 'Orange', amount = 3},
                Return  = {name = 'ramuneblueberry', label = 'Ramune Orange'}
            }
        },
        Boba = {
            Time = math.random(3,7), -- Time in (s) to mix boba tea
            Required = {
                -- Do not use more than 2 items here unless you know what your are doing! Editing code is required!
                ['1'] = {name = 'emptyplasticcup', label = 'Empty Plastic Cup'},
                ['2'] = {name = 'bobateasyrup', label = 'Boba Tea Syrup'},
                ['3'] = {name = 'milk', label = 'Milk'},
                ['4'] = {name = 'tapiocapearls', label = 'Tapioca Pearls', amount = 3}
            },
            Boba = {
                Required = {name = 'blacktealeaf', label = 'Black Tea Leaves', amount = 5},
                Return = {name = 'bobatea', label = 'Boba Tea'}
            },
            Matcha = {
                Required = {name = 'greentealeaf', label = 'Black Tea Leaves', amount = 5},
                Return = {name = 'matchabobatea', label = 'Matcha Boba Tea'}
            },
            Ichigo = {
                Required = {
                    ['1'] = {name = 'blacktealeaf', label = 'Black Tea Leaves', amount = 5},
                    ['2'] = {name = 'strawberry', label = 'Strawberry', amount = 2}
                },
                Return = {name = 'ichigobobatea', label = 'Ichigo Boba Tea'}
            },
            Lemon = {
                Required = {
                    ['1'] = {name = 'blacktealeaf', label = 'Black Tea Leaves', amount = 5},
                    ['2'] = {name = 'lemon', label = 'Lemon', amount = 2}
                },
                Return = {name = 'lemonbobatea', label = 'Lemon Boba Tea'}
            },
            Blueberry = {
                Required = {
                    ['1'] = {name = 'greentealeaf', label = 'Black Tea Leaves', amount = 5},
                    ['2'] = {name = 'blueberry', label = 'Blueberry', amount = 2}
                },
                Return = {name = 'bluebbobatea', label = 'Blueberry Boba Tea'}
            }
        }
    }
}

-- Wash settings
Config.Wash = {
    Self = {
        Face = {
            Animations = {
                -- Animation used when washing face
                Dict = 'switch@michael@wash_face',
                Anim = 'exit_michael',
                Flags = 49
            },
            Time = math.random(3,7), -- Time in (s) to wash face
            Stress = math.random(1,5), -- Amount of stress removed when washing face
        },
        Hands = {
            Animations = {
                -- Animation used when washing hands
                Dict = 'mp_arresting',
                Anim = 'a_uncuff',
                Flags = 49
            },
            Time = math.random(3,7), -- Time in (s) to wash hands
            Stress = math.random(1,5), -- Amount of stress removed when washing hands
        },
    },
    Dishes = {
        Animations = {
            Wash = {
                -- Animation used when washing dishes
                Dict = 'mp_arresting',
                Anim = 'a_uncuff',
                Flags = 49
            },
            Store = {
                -- Animation used when storing/taking from mid height locations
                Dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@',
                Anim = 'weed_spraybottle_crouch_idle_01_inspector',
                Flags = 49
            }
        },
        Plate = {
            Time = math.random(3,7), -- Time in (s) to wash
            Time2 = math.random(2,4), -- Time in (s) to take
            Time3 = math.random(2,4), -- Time in (s) to store
            Required = {name = 'dirty_plate', label = 'Dirty Plate'},
            Return = {name = 'clean_plate', label = 'Clean Plate'}
        },
        Bowl = {
            Time = math.random(3,7), -- Time in (s) to wash
            Time2 = math.random(2,4), -- Time in (s) to take
            Time3 = math.random(2,4), -- Time in (s) to store
            Required = {name = 'dirty_bowl', label = 'Dirty Bowl'},
            Return = {name = 'clean_bowl', label = 'Clean Bowl'}
        },
        Cup = {
            Time = math.random(3,7), -- Time in (s) to wash
            Time2 = math.random(2,4), -- Time in (s) to take
            Time3 = math.random(2,4), -- Time in (s) to store
            Required = {name = 'dirty_cup', label = 'Dirty Cup'},
            Return = {name = 'clean_cup', label = 'Clean Cup'} 
        },
        Glass = {
            Time = math.random(3,7), -- Time in (s) to wash
            Time2 = math.random(2,4), -- Time in (s) to take
            Time3 = math.random(2,4), -- Time in (s) to store
            Required = {name = 'dirty_glass', label = 'Dirty Glass'},
            Return = {name = 'clean_glass', label = 'Clean Glass'} 
        },
        Bento = {
            Time = math.random(3,7), -- Time in (s) to wash
            Time2 = math.random(2,4), -- Time in (s) to take
            Time3 = math.random(2,4), -- Time in (s) to store
            Required = {name = 'dirty_bentobox', label = 'Dirty Bento Box'},
            Return = {name = 'clean_bentobox', label = 'Clean Bento Box'} 
        },
    }
}

-- Plushie settings
Config.Plushies = {
    Time = math.random(5,10), -- Time in (s) to show plushies
    Plushies = { -- Do not change these!!
        'arcadeplush01',
        'arcadeplush02',
        'arcadeplush03',
        'arcadeplush04',
        'arcadeplush05',
        'arcadeplush06',
        'arcadeplush07',
        'arcadeplush08',
        'arcadeplush09',
    }
}

-- Garage settings
Config.Garage = {
    MoneyType = 'bank', -- Money type used for vehicle deposits
    Vehicle = 'speedo', -- White widow company vehicle use any vehicle you want here
    Deposit = 100, -- Price to take out company van will return 50%
    Spawn = vector4(-595.57, -1059.11, 22.34, 89.65), -- Vehicle spawn location
    Heading = 89.65, -- Vehicle spawn heading
    Ped = { 
        {name = 'Garage', x = -597.53, y = -1055.26, z = 22.34, h = 171.7, hash = 0xF06B849D, model = 's_m_m_autoshop_02', scenario = 'WORLD_HUMAN_CLIPBOARD'}
    }   
}

-- Cats
Config.Cats = {
    Stress = math.random(1,3), -- Amount of stress to remove when petting
    Peds = {
        {name = 'Cat1', x = -576.8, y = -1069.31, z = 22.99, h = 356.01, hash = 0x573201B8, model = 'a_c_cat_01', sleeping = true},
        {name = 'Cat2', x = -585.47, y = -1069.29, z = 22.99, h = 324.64, hash = 0x573201B8, model = 'a_c_cat_01', sleeping = true},
        {name = 'Cat3', x = -582.03, y = -1055.94, z = 22.43, h = 52.99, hash = 0x573201B8, model = 'a_c_cat_01', sleeping = true},
        {name = 'Cat4', x = -573.54, y = -1051.5, z = 22.34, h = 131.77, hash = 0x573201B8, model = 'a_c_cat_01', sleeping = true},
        {name = 'Cat5', x = -582.03, y = -1055.94, z = 22.43, h = 52.99, hash = 0x573201B8, model = 'a_c_cat_01', sleeping = false},
        {name = 'Cat6', x = -576.07, y = -1059.53, z = 22.34, h = 147.88, hash = 0x573201B8, model = 'a_c_cat_01', sleeping = false}
    }
} 
