----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local TargetName = Config.CoreSettings.TargetName
local RemoveStress = Config.CoreSettings.RemoveStressEvent
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Targeting
-- Wash self/dishes
for k, v in pairs(Config.JobSettings.Locations.Wash) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
            name=v.name,
            heading= v.heading,
            debugPoly= v.debugPoly,
            minZ = v.minZ,
            maxZ = v.maxZ,
        },{
        options = {
            {
                event = 'boii-uwucafe:cl:WashSelf',
                icon = Language.Targeting['washicon'],
                label = Language.Targeting['washfacelabel'],
                face = true

            },
            {
                event = 'boii-uwucafe:cl:WashSelf',
                icon = Language.Targeting['washicon'],
                label = Language.Targeting['washhandslabel'],
                face = false
            },
            {
                event = 'boii-uwucafe:cl:WashDishes',
                icon = Language.Targeting['washdishesicon'],
                label = Language.Targeting['platelabel'],
                job = Config.JobSettings.Job,
                plate = true
            },
            
            {
                event = 'boii-uwucafe:cl:WashDishes',
                icon = Language.Targeting['washdishesicon'],
                label = Language.Targeting['bowllabel'],
                job = Config.JobSettings.Job,
                bowl = true
            },
            {
                event = 'boii-uwucafe:cl:WashDishes',
                icon = Language.Targeting['washdishesicon'],
                label = Language.Targeting['cuplabel'],
                job = Config.JobSettings.Job,
                cup = true
            },
            {
                event = 'boii-uwucafe:cl:WashDishes',
                icon = Language.Targeting['washdishesicon'],
                label = Language.Targeting['glasslabel'],
                job = Config.JobSettings.Job,
                glass = true
            },
            {
                event = 'boii-uwucafe:cl:WashDishes',
                icon = Language.Targeting['washdishesicon'],
                label = Language.Targeting['bentolabel'],
                job = Config.JobSettings.Job,
                bento = true
            }
        },
        distance = v.distance,
    })
end
-- Store/take dishes
for k, v in pairs(Config.JobSettings.Locations.Dishes) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
            name=v.name,
            heading= v.heading,
            debugPoly= v.debugPoly,
            minZ = v.minZ,
            maxZ = v.maxZ,
        },{
        options = {
            {
                event = 'boii-uwucafe:cl:Plates',
                icon = Language.Targeting['platesicon'],
                label = Language.Targeting['takeplatelabel'],
                job = Config.JobSettings.Job,
                take = true
            },
            {
                event = 'boii-uwucafe:cl:Plates',
                icon = Language.Targeting['platesicon'],
                label = Language.Targeting['storeplatelabel'],
                job = Config.JobSettings.Job,
                take = false
            },
            {
                event = 'boii-uwucafe:cl:Bowls',
                icon = Language.Targeting['bowlsicon'],
                label = Language.Targeting['takebowllabel'],
                job = Config.JobSettings.Job,
                take = true
            },
            {
                event = 'boii-uwucafe:cl:Bowls',
                icon = Language.Targeting['bowlsicon'],
                label = Language.Targeting['storebowllabel'],
                job = Config.JobSettings.Job,
                take = false
            },
            {
                event = 'boii-uwucafe:cl:Bentos',
                icon = Language.Targeting['bentoicon'],
                label = Language.Targeting['takebentolabel'],
                job = Config.JobSettings.Job,
                take = true
            },
            {
                event = 'boii-uwucafe:cl:Bentos',
                icon = Language.Targeting['bentoicon'],
                label = Language.Targeting['storebentolabel'],
                job = Config.JobSettings.Job,
                take = false
            },
            {
                event = 'boii-uwucafe:cl:Glasses',
                icon = Language.Targeting['glassesicon'],
                label = Language.Targeting['takeglasslabel'],
                job = Config.JobSettings.Job,
                take = true
            },
            {
                event = 'boii-uwucafe:cl:Glasses',
                icon = Language.Targeting['glassesicon'],
                label = Language.Targeting['storeglasslabel'],
                job = Config.JobSettings.Job,
                take = false
            },
            {
                event = 'boii-uwucafe:cl:Cups',
                icon = Language.Targeting['cupsicon'],
                label = Language.Targeting['takecuplabel'],
                job = Config.JobSettings.Job,
                take = true
            },
            {
                event = 'boii-uwucafe:cl:Cups',
                icon = Language.Targeting['cupsicon'],
                label = Language.Targeting['storecuplabel'],
                job = Config.JobSettings.Job,
                take = false
            },
        },
        distance = v.distance,
    })
end
-- Events
-- Wash self 
RegisterNetEvent('boii-uwucafe:cl:WashSelf', function(data)
    if data.face then
        lang = Language.Wash['washface']
        lang2 = Language.Wash['washedface']
        timer = Config.Wash.Self.Face.Time
        stressamount = Config.Wash.Self.Face.Stress
        animdict = Config.Wash.Self.Face.Animations.Dict
        anims = Config.Wash.Self.Face.Animations.Anim
        flags = Config.Wash.Self.Face.Animations.Flags
    else
        lang = Language.Wash['washhands']
        lang2 = Language.Wash['washedhands']
        timer = Config.Wash.Self.Hands.Time
        stressamount = Config.Wash.Self.Hands.Stress
        animdict = Config.Wash.Self.Hands.Animations.Dict
        anims = Config.Wash.Self.Hands.Animations.Anim
        flags = Config.Wash.Self.Hands.Animations.Flags
    end
    Core.Functions.Progressbar('uwu_washself', lang, timer*1000, false, false, {
        disableMovement = true, --
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = animdict, 
        anim = anims,
        flags = flags
    }, {}, {}, function()  
		TriggerEvent('boii-uwucafe:notify', lang2, 'success')
        TriggerServerEvent(RemoveStress, stressamount)
    end, function()
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancel'], 'error')
    end)
end)
-- Wash dishes
RegisterNetEvent('boii-uwucafe:cl:WashDishes', function(data)
    if data.plate then
        itemremove = Config.Wash.Dishes.Plate.Required.name
        itemadd = Config.Wash.Dishes.Plate.Return.name
        timer = Config.Wash.Dishes.Plate.Time
        lang = Language.Wash['washedplate']
        lang2 = Language.Wash['nodirtyplate']
    elseif data.bowl then
        itemremove = Config.Wash.Dishes.Bowl.Required.name
        itemadd = Config.Wash.Dishes.Bowl.Return.name
        timer = Config.Wash.Dishes.Bowl.Time
        lang = Language.Wash['washedbowl']
        lang2 = Language.Wash['nodirtybowl']
    elseif data.cup then
        itemremove = Config.Wash.Dishes.Cup.Required.name
        itemadd = Config.Wash.Dishes.Cup.Return.name
        timer = Config.Wash.Dishes.Cup.Time
        lang = Language.Wash['washedcup']
        lang2 = Language.Wash['nodirtycup']
    elseif data.glass then
        itemremove = Config.Wash.Dishes.Glass.Required.name
        itemadd = Config.Wash.Dishes.Glass.Return.name
        timer = Config.Wash.Dishes.Glass.Time
        lang = Language.Wash['washedglass']
        lang2 = Language.Wash['nodirtyglass']
    elseif data.bento then
        itemremove = Config.Wash.Dishes.Bento.Required.name
        itemadd = Config.Wash.Dishes.Bento.Return.name
        timer = Config.Wash.Dishes.Bento.Time
        lang = Language.Wash['washedbento']
        lang2 = Language.Wash['nodirtybento']
    end
    local HasItem = Core.Functions.HasItem(itemremove)
    if HasItem then
        TriggerServerEvent('boii-uwucafe:sv:RemoveItem', itemremove, 1)
        Wait(200)
        Core.Functions.Progressbar('uwu_washdishes', Language.Wash['washdishes'], timer*1000, false, true,{
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = Config.Wash.Dishes.Animations.Wash.Dict,
            anim = Config.Wash.Dishes.Animations.Wash.Anim,
            flags = Config.Wash.Dishes.Animations.Wash.Flags
        }, {}, {}, function()
            TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
            TriggerEvent('boii-uwucafe:notify', lang, 'success')
        end, function() -- Cancel
            TriggerEvent('inventory:client:busy:status', false)
            TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
        end)
    else
        TriggerEvent('boii-uwucafe:notify', lang2, 'error')
    end
end)

-- Glasses
RegisterNetEvent('boii-uwucafe:cl:Glasses', function(data)
    local player = PlayerPedId()
    if data.take then
        itemadd = Config.Wash.Dishes.Glass.Return.name
        timer = Config.Wash.Dishes.Glass.Time2
        lang = Language.Wash['takingglass']
        lang2 = Language.Wash['takeglass']
        TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
    else
        itemremove = Config.Wash.Dishes.Glass.Return.name
        timer = Config.Wash.Dishes.Glass.Time3
        lang = Language.Wash['storingglass']
        lang2 = Language.Wash['storeglass']
        local HasItem = Core.Functions.HasItem(itemremove)
        if HasItem then 
            TriggerServerEvent('boii-uwucafe:sv:RemoveItem', itemremove, 1)
        else
            TriggerEvent('boii-uwucafe:notify', Language.Wash['noglass'], 'error') 
            return 
        end
    end
    Wait(200)
    Core.Functions.Progressbar('uwu_glasses', lang, timer*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = Config.Wash.Dishes.Animations.Store.Dict,
        anim = Config.Wash.Dishes.Animations.Store.Anim,
        flags = Config.Wash.Dishes.Animations.Store.Flags
    }, {}, {}, function()
        TriggerEvent('boii-uwucafe:notify', lang2, 'success')
        ClearPedTasks(player)
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
        ClearPedTasks(player)
    end)
end)

-- Plates
RegisterNetEvent('boii-uwucafe:cl:Plates', function(data)
    local player = PlayerPedId()
    if data.take then
        itemadd = Config.Wash.Dishes.Plate.Return.name
        timer = Config.Wash.Dishes.Plate.Time2
        lang = Language.Wash['takingplate']
        lang2 = Language.Wash['takeplate']
        TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
    else
        itemremove = Config.Wash.Dishes.Plate.Return.name
        timer = Config.Wash.Dishes.Plate.Time3
        lang = Language.Wash['storingplate']
        lang2 = Language.Wash['storeplate']
        local HasItem = Core.Functions.HasItem(itemremove)
        if HasItem then 
            TriggerServerEvent('boii-uwucafe:sv:RemoveItem', itemremove, 1)
        else
            TriggerEvent('boii-uwucafe:notify', Language.Wash['noplate'], 'error') 
            return 
        end
    end
    Wait(200)
    Core.Functions.Progressbar('uwu_plates', lang, timer*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = Config.Wash.Dishes.Animations.Store.Dict,
        anim = Config.Wash.Dishes.Animations.Store.Anim,
        flags = Config.Wash.Dishes.Animations.Store.Flags
    }, {}, {}, function()
        TriggerEvent('boii-uwucafe:notify', lang2, 'success')
        ClearPedTasks(player)
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
        ClearPedTasks(player)
    end)
end)

-- Bowls
RegisterNetEvent('boii-uwucafe:cl:Bowls', function(data)
    local player = PlayerPedId()
    if data.take then
        itemadd = Config.Wash.Dishes.Bowl.Return.name
        timer = Config.Wash.Dishes.Bowl.Time2
        lang = Language.Wash['takingbowl']
        lang2 = Language.Wash['takebowl']
        TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
    else
        itemremove = Config.Wash.Dishes.Bowl.Return.name
        timer = Config.Wash.Dishes.Bowl.Time3
        lang = Language.Wash['storingbowl']
        lang2 = Language.Wash['storebowl']
        local HasItem = Core.Functions.HasItem(itemremove)
        if HasItem then 
            TriggerServerEvent('boii-uwucafe:sv:RemoveItem', itemremove, 1)
        else
            TriggerEvent('boii-uwucafe:notify', Language.Wash['nobowl'], 'error') 
            return 
        end
    end
    Wait(200)
    Core.Functions.Progressbar('uwu_bowls', lang, timer*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = Config.Wash.Dishes.Animations.Store.Dict,
        anim = Config.Wash.Dishes.Animations.Store.Anim,
        flags = Config.Wash.Dishes.Animations.Store.Flags
    }, {}, {}, function()
        TriggerEvent('boii-uwucafe:notify', lang2, 'success')
        ClearPedTasks(player)
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
        ClearPedTasks(player)
    end)
end)

-- Bowls
RegisterNetEvent('boii-uwucafe:cl:Bentos', function(data)
    local player = PlayerPedId()
    if data.take then
        itemadd = Config.Wash.Dishes.Bento.Return.name
        timer = Config.Wash.Dishes.Bento.Time2
        lang = Language.Wash['takingbento']
        lang2 = Language.Wash['takebento']
        TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
    else
        itemremove = Config.Wash.Dishes.Bento.Return.name
        timer = Config.Wash.Dishes.Bento.Time3
        lang = Language.Wash['storingbento']
        lang2 = Language.Wash['storebento']
        local HasItem = Core.Functions.HasItem(itemremove)
        if HasItem then 
            TriggerServerEvent('boii-uwucafe:sv:RemoveItem', itemremove, 1)
        else
            TriggerEvent('boii-uwucafe:notify', Language.Wash['nobento'], 'error') 
            return 
        end
    end
    Wait(200)
    Core.Functions.Progressbar('uwu_bowls', lang, timer*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = Config.Wash.Dishes.Animations.Store.Dict,
        anim = Config.Wash.Dishes.Animations.Store.Anim,
        flags = Config.Wash.Dishes.Animations.Store.Flags
    }, {}, {}, function()
        TriggerEvent('boii-uwucafe:notify', lang2, 'success')
        ClearPedTasks(player)
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
        ClearPedTasks(player)
    end)
end)

-- Cups
RegisterNetEvent('boii-uwucafe:cl:Cups', function(data)
    local player = PlayerPedId()
    if data.take then
        itemadd = Config.Wash.Dishes.Cup.Return.name
        timer = Config.Wash.Dishes.Cup.Time2
        lang = Language.Wash['takingcup']
        lang2 = Language.Wash['takecup']
        TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
    else
        itemremove = Config.Wash.Dishes.Cup.Return.name
        timer = Config.Wash.Dishes.Cup.Time3
        lang = Language.Wash['storingcup']
        lang2 = Language.Wash['storecup']
        local HasItem = Core.Functions.HasItem(itemremove)
        if HasItem then 
            TriggerServerEvent('boii-uwucafe:sv:RemoveItem', itemremove, 1)
        else
            TriggerEvent('boii-uwucafe:notify', Language.Wash['nocup'], 'error') 
            return 
        end
    end
    Wait(200)
    Core.Functions.Progressbar('uwu_cups', lang, timer*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = Config.Wash.Dishes.Animations.Store.Dict,
        anim = Config.Wash.Dishes.Animations.Store.Anim,
        flags = Config.Wash.Dishes.Animations.Store.Flags
    }, {}, {}, function()
        TriggerEvent('boii-uwucafe:notify', lang2, 'success')
        ClearPedTasks(player)
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
        ClearPedTasks(player)
    end)
end)