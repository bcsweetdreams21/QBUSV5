----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local TargetName = Config.CoreSettings.TargetName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Targeting
for k, v in pairs(Config.JobSettings.Locations.Store.Cold) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
                event = 'boii-uwucafe:cl:OpenStore',
                icon = Language.Targeting['storeicon'],
                label = Language.Targeting['storelabel'],
                job = Config.JobSettings.Job,
                cold = true
            },
        },
        distance = v.distance,
    })
end
for k, v in pairs(Config.JobSettings.Locations.Store.Dry) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
                event = 'boii-uwucafe:cl:OpenStore',
                icon = Language.Targeting['storeicon'],
                label = Language.Targeting['storelabel'],
                job = Config.JobSettings.Job,
                dry = true
            },
        },
        distance = v.distance,
    })
end

-- Event
RegisterNetEvent('boii-uwucafe:cl:OpenStore', function(data)
    if data.cold then
        local store = {}
        store.label = 'uwu_coldstore'
        store.items = Config.Store.Cold.Items
        store.slots = #Config.Store.Cold.Items
        TriggerServerEvent('inventory:server:OpenInventory', 'shop', store.label, store)  
    elseif data.dry then
        local store = {}
        store.label = 'uwu_drystore'
        store.items = Config.Store.Dry.Items
        store.slots = #Config.Store.Dry.Items
        TriggerServerEvent('inventory:server:OpenInventory', 'shop', store.label, store)  
    end  
end)