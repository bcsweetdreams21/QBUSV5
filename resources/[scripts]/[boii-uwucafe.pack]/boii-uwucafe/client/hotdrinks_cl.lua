----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local TargetName = Config.CoreSettings.TargetName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Targeting
for k, v in pairs(Config.JobSettings.Locations.Drinks.Hot) do
    exports[TargetName]:AddCircleZone(v.name, v.coords, v.radius, { 
            name= v.name, 
            debugPoly= v.debugPoly, 
            useZ= v.useZ, 
        },{ 
        options = { 
            { 
                event = 'boii-uwucafe:cl:HotDrinksMenu',
                icon = Language.Targeting['hotdrinksicon'],
                label = Language.Targeting['hotdrinkslabel'],
                job = Config.JobSettings.Job, 
            }, 
        },
        distance = v.distance
    })
end

RegisterNetEvent('boii-uwucafe:cl:HotDrinks', function(args)
    local args = tonumber(args)
    if args == 1 then
        itemadd = Config.Drinks.Hot.Coffee.Return.name
        timer = Config.Drinks.Hot.Coffee.Time
        lang = Language.HotDrinks['madecoffee']
    elseif args == 2 then
        itemadd = Config.Drinks.Hot.Tea.Return.name
        timer = Config.Drinks.Hot.Tea.Time
        lang = Language.HotDrinks['madetea']
    elseif args == 3 then
        itemadd = Config.Drinks.Hot.GreenTea.Return.name
        timer = Config.Drinks.Hot.GreenTea.Time
        lang = Language.HotDrinks['madegreentea']
    end
    Core.Functions.Progressbar('uwu_hotdrinks', Language.HotDrinks['makehot'], timer*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = Config.Drinks.Hot.Animations.Dict,
        anim = Config.Drinks.Hot.Animations.Anim,
        flags = Config.Drinks.Hot.Animations.Flags
    }, {}, {}, function()
        TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
        TriggerEvent('boii-uwucafe:notify', lang, 'success')
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
    end)
end)