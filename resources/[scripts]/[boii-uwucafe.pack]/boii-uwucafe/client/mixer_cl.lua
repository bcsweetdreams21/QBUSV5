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
for k, v in pairs(Config.JobSettings.Locations.Food.Mixer) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
                event = 'boii-uwucafe:cl:MixerMainMenu',
                icon = Language.Targeting['mixericon'],
                label = Language.Targeting['mixerlabel'],
                job = Config.JobSettings.Job
            },
        },
        distance = v.distance,
    })
end

-- Events
RegisterNetEvent('boii-uwucafe:cl:Ramune', function(args)
    local args = tonumber(args)
    if args == 1 then
        itemadd = Config.Drinks.Mixer.Ramune.Cherry.Return.name
    elseif args == 2 then
        itemadd = Config.Drinks.Mixer.Ramune.Lemon.Return.name
    elseif args == 3 then
        itemadd = Config.Drinks.Mixer.Ramune.Pineapple.Return.name
    elseif args == 4 then
        itemadd = Config.Drinks.Mixer.Ramune.Coconut.Return.name
    elseif args == 5 then
        itemadd = Config.Drinks.Mixer.Ramune.Orange.Return.name
    elseif args == 6 then
        itemadd = Config.Drinks.Mixer.Ramune.Apple.Return.name
    elseif args == 7 then
        itemadd = Config.Drinks.Mixer.Ramune.Strawberry.Return.name
    elseif args == 8 then
        itemadd = Config.Drinks.Mixer.Ramune.Blueberry.Return.name
    end
    Core.Functions.Progressbar('uwu_mixramune', Language.Mixer.Ramune['mixramune'], Config.Drinks.Mixer.Ramune.Time*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = Config.Drinks.Mixer.Animations.Dict,
        anim = Config.Drinks.Mixer.Animations.Anim,
        flags = Config.Drinks.Mixer.Animations.Flags
    }, {}, {}, function()
        TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
        TriggerEvent('boii-uwucafe:notify', Language.Mixer.Ramune['mixedramune'], 'success')
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
    end)
end)

-- Boba tea
RegisterNetEvent('boii-uwucafe:cl:Boba', function(args)
    local args = tonumber(args)
    if args == 1 then
        itemadd = Config.Drinks.Mixer.Boba.Boba.Return.name
    elseif args == 2 then
        itemadd = Config.Drinks.Mixer.Boba.Matcha.Return.name
    elseif args == 3 then
        itemadd = Config.Drinks.Mixer.Boba.Ichigo.Return.name
    elseif args == 4 then
        itemadd = Config.Drinks.Mixer.Boba.Lemon.Return.name
    elseif args == 5 then
        itemadd = Config.Drinks.Mixer.Boba.Blueberry.Return.name
    end
    Core.Functions.Progressbar('uwu_mixboba', Language.Mixer.Boba['mixboba'], Config.Drinks.Mixer.Boba.Time*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = Config.Drinks.Mixer.Animations.Dict,
        anim = Config.Drinks.Mixer.Animations.Anim,
        flags = Config.Drinks.Mixer.Animations.Flags
    }, {}, {}, function()
        TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
        TriggerEvent('boii-uwucafe:notify', Language.Mixer.Boba['mixedboba'], 'success')
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
    end)
end)

-- Unbaked
RegisterNetEvent('boii-uwucafe:cl:Unbaked', function(args)
    local args = tonumber(args)
    if args == 1 then
        itemadd = Config.Food.Mixer.Unbaked.Nishigashi.Return.name
    elseif args == 2 then
        itemadd = Config.Food.Mixer.Unbaked.Kuromame.Return.name
    elseif args == 3 then
        itemadd = Config.Food.Mixer.Unbaked.Mitarashi.Return.name
    elseif args == 4 then
        itemadd = Config.Food.Mixer.Unbaked.Matche.Return.name
    elseif args == 5 then
        itemadd = Config.Food.Mixer.Unbaked.Mizu.Return.name
    end
    Core.Functions.Progressbar('uwu_mixunbaked', Language.Mixer.Unbaked['mixdesert'], Config.Food.Mixer.Unbaked.Time*1000, false, true,{
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = Config.Food.Mixer.Animations.Dict,
        anim = Config.Food.Mixer.Animations.Anim,
        flags = Config.Food.Mixer.Animations.Flags
    }, {}, {}, function()
        TriggerServerEvent('boii-uwucafe:sv:AddItem', itemadd, 1)
        TriggerEvent('boii-uwucafe:notify', Language.Mixer.Unbaked['mixeddesert'], 'success')
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
    end)
end)