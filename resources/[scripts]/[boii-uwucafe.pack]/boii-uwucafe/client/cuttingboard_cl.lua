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
for k, v in pairs(Config.JobSettings.Locations.Food.Cuttingboard) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
                event = 'boii-uwucafe:cl:CuttingboardMenu',
                icon = Language.Targeting['cuttingboardicon'],
                label = Language.Targeting['cuttingboardlabel'],
                job = Config.JobSettings.Job
            },
        },
        distance = v.distance,
    })
end

-- Events
-- Sushi
RegisterNetEvent('boii-uwucafe:cl:Sushi', function(args)
    local args = tonumber(args)
    if args == 1 then
        itemadd = Config.Food.Cuttingboard.Sushi.Iwashi.Return.name
    elseif args == 2 then
        itemadd = Config.Food.Cuttingboard.Sushi.Inada.Return.name
    elseif args == 3 then
        itemadd = Config.Food.Cuttingboard.Sushi.Guchi.Return.name
    elseif args == 4 then
        itemadd = Config.Food.Cuttingboard.Sushi.Akoudai.Return.name
    elseif args == 5 then
        itemadd = Config.Food.Cuttingboard.Sushi.Ohyou.Return.name
    end
    Core.Functions.Progressbar('uwu_makesushi', Language.Cuttingboard.Sushi['makesushi'], Config.Food.Hob.Bento.Time*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = Config.Food.Hob.Animations.Dict,
        anim = Config.Food.Hob.Animations.Anim,
        flags = Config.Food.Hob.Animations.Flags
    }, {}, {}, function()
        TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
        TriggerEvent('boii-uwucafe:notify', Language.Cuttingboard.Sushi['madesushi'], 'success')
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
    end)
end)

-- Sashimi
RegisterNetEvent('boii-uwucafe:cl:Sashimi', function(args)
    local args = tonumber(args)
    if args == 1 then
        itemadd = Config.Food.Cuttingboard.Sashimi.Aji.Return.name
    elseif args == 2 then
        itemadd = Config.Food.Cuttingboard.Sashimi.Akoudai.Return.name
    elseif args == 3 then
        itemadd = Config.Food.Cuttingboard.Sashimi.Ohyou.Return.name
    elseif args == 4 then
        itemadd = Config.Food.Cuttingboard.Sashimi.Beef.Return.name
    elseif args == 5 then
        itemadd = Config.Food.Cuttingboard.Sashimi.Venison.Return.name
    end
    Core.Functions.Progressbar('uwu_makesashimi', Language.Cuttingboard.Sashimi['makesashimi'], Config.Food.Cuttingboard.Sashimi.Time*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = Config.Food.Hob.Animations.Dict,
        anim = Config.Food.Hob.Animations.Anim,
        flags = Config.Food.Hob.Animations.Flags
    }, {}, {}, function()
        TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
        TriggerEvent('boii-uwucafe:notify', Language.Cuttingboard.Sashimi['madesashimi'], 'success')
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
    end)
end)