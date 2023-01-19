----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Hot drinks
RegisterServerEvent('boii-uwucafe:sv:HotDrinks', function(args)
    local pData = Core.Functions.GetPlayer(source)
    local args = tonumber(args)
    local cupname = Config.Drinks.Hot.Required.name
    if args == 1 then
        itemname = Config.Drinks.Hot.Coffee.Required.name
        amount = Config.Drinks.Hot.Coffee.Required.amount
        enoughlang = Language.HotDrinks['enoughcoffee']
        nolang = Language.HotDrinks['nocoffee']
    elseif args == 2 then
        itemname = Config.Drinks.Hot.Tea.Required.name
        amount = Config.Drinks.Hot.Tea.Required.amount
        enoughlang = Language.HotDrinks['enoughtea']
        nolang = Language.HotDrinks['notea']
    elseif args == 3 then
        itemname = Config.Drinks.Hot.GreenTea.Required.name
        amount = Config.Drinks.Hot.GreenTea.Required.amount
        enoughlang = Language.HotDrinks['enoughgreentea']
        nolang = Language.HotDrinks['nogreentea']
    end
    if pData.Functions.GetItemByName(cupname) ~= nil then
        if pData.Functions.GetItemByName(itemname) ~= nil then
            if pData.Functions.GetItemByName(itemname).amount >= amount then
                pData.Functions.RemoveItem(cupname, 1)
                pData.Functions.RemoveItem(itemname, amount)
                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[cupname], 'remove', 1)
                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[itemname], 'remove', amount)
                TriggerClientEvent('boii-uwucafe:cl:HotDrinks', source, args)
            else
                TriggerClientEvent('boii-uwucafe:notify', source, enoughlang, 'error')
            end
        else
            TriggerClientEvent('boii-uwucafe:notify', source, nolang, 'error')
        end
    else
        TriggerClientEvent('boii-uwucafe:notify', source, Language.HotDrinks['nocup'], 'error')
    end
end)