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
for k, v in pairs(Config.JobSettings.Locations.Food.Hob) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
                event = 'boii-uwucafe:cl:HobMenu',
                icon = Language.Targeting['hobicon'],
                label = Language.Targeting['hoblabel'],
                job = Config.JobSettings.Job
            },
        },
        distance = v.distance,
    })
end

-- Events
-- Bento boxes
RegisterNetEvent('boii-uwucafe:cl:BentoBox', function(args)
    local args = tonumber(args)
    if args == 1 then
        itemadd = Config.Food.Hob.Bento.Aji.Return.name
    elseif args == 2 then
        itemadd = Config.Food.Hob.Bento.Inada.Return.name
    elseif args == 3 then
        itemadd = Config.Food.Hob.Bento.Akoudai.Return.name
    elseif args == 4 then
        itemadd = Config.Food.Hob.Bento.Katsu.Return.name
    elseif args == 5 then
        itemadd = Config.Food.Hob.Bento.Chashu.Return.name
    end
    Core.Functions.Progressbar('uwu_makebento', Language.Hob.Bento['makebento'], Config.Food.Hob.Bento.Time*1000, false, true,{
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
        TriggerEvent('boii-uwucafe:notify', Language.Hob.Bento['madebento'], 'success')
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
    end)
end)
-- Ramen bowls
RegisterNetEvent('boii-uwucafe:cl:Ramen', function(args)
    local args = tonumber(args)
    if args == 1 then
        itemadd = Config.Food.Hob.Ramen.Iwashi.Return.name
    elseif args == 2 then
        itemadd = Config.Food.Hob.Ramen.Aji.Return.name
    elseif args == 3 then
        itemadd = Config.Food.Hob.Ramen.Ohyou.Return.name
    elseif args == 4 then
        itemadd = Config.Food.Hob.Ramen.Chicken.Return.name
    elseif args == 5 then
        itemadd = Config.Food.Hob.Ramen.Beef.Return.name
    end
    Core.Functions.Progressbar('uwu_makeramen', Language.Hob.Ramen['makeramen'], Config.Food.Hob.Ramen.Time*1000, false, true,{
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
        TriggerEvent('boii-uwucafe:notify', Language.Hob.Ramen['maderamen'], 'success')
    end, function() -- Cancel
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('boii-uwucafe:notify', Language.Shared['cancelled'], 'primary')
    end)
end)