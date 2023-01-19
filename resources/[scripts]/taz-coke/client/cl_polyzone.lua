local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    Wait(1000)
    QBCore.Functions.AddCircleZone("CokeProcess", vector3(1090.53, -3195.86, -39.09), 0.35, {
        name="CokeProcess",
        useZ=true,
        debugPoly=false
    }, {
        options = {
            {
                event = "taz-illegal:client:coke:process:cocaine",
                icon = "fas fa-weight",
                label = "Process Cocaine Brick",
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddCircleZone("CokeBagging", vector3(1095.4, -3195.7, -39.09), 0.35, {
        name="CokeBagging",
        useZ=true,
        debugPoly=false
    }, {
        options = {
            {
                event = "taz-illegal:client:coke:bag:cocaine",
                icon = "fas fa-weight",
                label = "Bag Cocaine",
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddCircleZone("CokeBricks", vector3(-231.97, 6669.4, 0.81), 0.25, {
        name="CokeBricks",
        useZ=true,
        debugPoly=false
    }, {
        options = {
            {
                event = "taz-illegal:client:coke:get:cocaine:bricks",
                icon = "fas fa-chair",
                label = "Cut Open Seat",
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddCircleZone("CokeBricks2", vector3(-231.07, 6669.52, 0.71), 0.25, {
        name="CokeBricks2",
        useZ=true,
        debugPoly=false
    }, {
        options = {
            {
                event = "taz-illegal:client:coke:get:cocaine:bricks",
                icon = "fas fa-chair",
                label = "Cut Open Seat",
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddCircleZone("CokeBricks3", vector3(-226.67, 6670.57, 1.05), 0.25, {
        name="CokeBricks3",
        useZ=true,
        debugPoly=false
    }, {
        options = {
            {
                event = "taz-illegal:client:coke:get:cocaine:bricks",
                icon = "fas fa-chair",
                label = "Cut Open Seat",
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddCircleZone("CokeBricks4", vector3(-225.71, 6670.61, 1.05), 0.25, {
        name="CokeBricks4",
        useZ=true,
        debugPoly=false
    }, {
        options = {
            {
                event = "taz-illegal:client:coke:get:cocaine:bricks",
                icon = "fas fa-circle",
                label = "Cut Open Seat",
                entity = {},
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddBoxZone("MethLabEnter", vector3(915.81, 3576.92, 33.58), 0.7, 0.5, {
        name="MethLabEnter",
        heading=100,
        debugPoly=false,
        minZ=32.58,
        maxZ=34.78
    }, {
        options = {
            {
                event = "taz-illegal:client:meth:enter:methlab",
                icon = "fas fa-key",
                label = "Enter",
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddBoxZone("MethLabExit", vector3(968.83, -147.03, -46.4), 0.9, 0.5, {
        name="MethLabExit",
        heading=0,
        debugPoly=false,
        minZ=-47.4,
        maxZ=-45.0
    }, {
        options = {
            {
                event = "taz-illegal:client:meth:exit:methlab",
                icon = "fas fa-key",
                label = "Exit",
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddCircleZone("MethHydrochloricAcid", vector3(-1060.66, 4947.04, 210.82), 0.77, {
        name="MethHydrochloricAcid",
        useZ=true,
        debugPoly=false
    }, {
        options = {
            {
                event = "taz-illegal:client:meth:get:products",
                icon = "fas fa-radiation",
                label = "Collect Hydrochloric Acid",
                products = "hydrochloric"
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddCircleZone("MethSodiumHydroxide", vector3(-206.08, 6112.53, 31.46), 0.5, {
        name="MethSodiumHydroxide",
        useZ=true,
        debugPoly=false
    }, {
        options = {
            {
                event = "taz-illegal:client:meth:get:products",
                icon = "fas fa-radiation",
                label = "Collect Sodium Hydroxide",
                products = "hydroxide"
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddCircleZone("MethSulfuricAcid", vector3(1794.51, 4772.06, 34.53), 0.6, {
        name="MethSulfuricAcid",
        useZ=true,
        debugPoly=false
    }, {
        options = {
            {
                event = "taz-illegal:client:meth:get:products",
                icon = "fas fa-radiation",
                label = "Collect Sulfuric Acid",
                products = "sulfuric"
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddBoxZone("MethProcess", vector3(978.22, -147.1, -48.53), 1.6, 1.8, {
        name="MethProcess",
        heading=0,
        debugPoly=false,
        minZ=-50.33,
        maxZ=-45.53
    }, {
        options = {
            {
                event = "taz-illegal:client:meth:proccess",
                icon = "fas fa-vials",
                label = "Cook",
            },
        },
        distance = 2.5
    })
    QBCore.Functions.AddBoxZone("MethTemperatureUp", vector3(982.56, -145.59, -49.0), 1.2, 1.4, {
        name="MethTemperatureUp",
        heading=0,
        debugPoly=false,
        minZ=-50.3,
        maxZ=-47.3
    }, {
        options = {
            {
                event = "taz-illegal:client:meth:change:temperature",
                icon = "fas fa-thermometer-empty", 
                label = "Increase Temperature",
                temperature = "Increase"
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddBoxZone("MethTemperatureDown", vector3(979.59, -144.14, -49.0), 1.2, 0.5, {
        name="MethTemperatureDown",
        heading=354,
        debugPoly=false,
        minZ=-49.2,
        maxZ=-47.9
    }, {
        options = {
            {
                event = "taz-illegal:client:meth:change:temperature",
                icon = "fas fa-thermometer-full", 
                label = "Decrease Temperature",
                temperature = "Decrease"
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddBoxZone("MethPacking", vector3(987.44, -140.5, -49.0), 0.5, 0.7, {
        name="MethPacking",
        heading=1,
        debugPoly=false,
        minZ=-49.35,
        maxZ=-48.65
    }, {
        options = {
            {
                event = "taz-illegal:client:meth:pack:meth",
                icon = "fas fa-box", 
                label = "Packing",
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddBoxZone("LSDThyChloride", vector3(1233.03, -3016.34, 9.32), 2.5, 1.1, {
        name="LSDThyChloride",
        heading=0,
        debugPoly=false,
        minZ=8.32,
        maxZ=9.92
    }, {
        options = {
            {
                event = "taz-illegal:client:lsd:get:products",
                icon = "fas fa-radiation",
                label = "Collect",
                products = "thychloride",
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddBoxZone("LSDLsa", vector3(838.58, -2893.21, 11.27), 1.3, 0.7, {
        name="LSDLsa",
        heading=0,
        debugPoly=false,
        minZ=10.27,
        maxZ=12.87
    }, {
        options = {
            {
                event = "taz-illegal:client:lsd:get:products",
                icon = "fas fa-circle",
                label = "Open Crate",
                products = "lysergicacid",
                entity = {},
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddCircleZone("LSDProcess", vector3(-3115.33, 307.56, 3.06), 0.4, {
        name="LSDProcess",
        useZ=true,
        debugPoly=false,
    }, {
        options = {
            {
                event = "taz-illegal:client:lsd:process:products",
                icon = "fas fa-circle",
                label = "Process Products",
            },
        },
        distance = 1.5
    })
    local WeedProps = {
        `prop_weed_01`, 
        `prop_weed_02`,
    }
    QBCore.Functions.AddTargetModel(WeedProps, {
        options = {
            {
                event = "ol-drugs:client:do:action",
                icon = "fas fa-circle",
                label = "Harvest Weed",
                weedAction = "harvest"
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddCircleZone("WeedProcess", vector3(2195.08, 5601.79, 53.45), 0.4, {
        name="WeedProcess",
        useZ=true,
        debugPoly=Config.Debug
    }, {
        options = {
            {
                event = "ol-drugs:client:do:action",
                icon = "fas fa-circle",
                label = "Process Weed",
                weedAction = "process"
            },
        },
        distance = 1.5
    })
    QBCore.Functions.AddCircleZone("WeedPack", vector3(2192.65, 5595.62, 53.56), 0.3, {
        name="WeedPack",
        useZ=true,
        debugPoly=Config.Debug
    }, {
        options = {
            {
                event = "ol-drugs:client:do:action",
                icon = "fas fa-circle",
                label = "Pack Weed",
                weedAction = "pack"
            },
        },
        distance = 1.5
    })
end)