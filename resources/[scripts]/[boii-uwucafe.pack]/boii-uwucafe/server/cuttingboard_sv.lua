----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Events
-- Sushi
RegisterServerEvent('boii-uwucafe:sv:Sushi', function(args)
    local pData = Core.Functions.GetPlayer(source)
    local args = tonumber(args)
    local knife = Config.Food.Cuttingboard.Required['1'].name
    local plate = Config.Food.Cuttingboard.Required['2'].name
    if args == 1 then
        item1name = Config.Food.Cuttingboard.Sushi.Iwashi.Required['1'].name
        item1amount = Config.Food.Cuttingboard.Sushi.Iwashi.Required['1'].amount
        item2name = Config.Food.Cuttingboard.Sushi.Iwashi.Required['2'].name
        item2amount = Config.Food.Cuttingboard.Sushi.Iwashi.Required['2'].amount
        item3name = Config.Food.Cuttingboard.Sushi.Iwashi.Required['3'].name
        item3amount = Config.Food.Cuttingboard.Sushi.Iwashi.Required['3'].amount
        enoughlang1 = Language.Cuttingboard.Sushi['enoughiwashi1']
        enoughlang2 = Language.Cuttingboard.Sushi['enoughiwashi2']
        enoughlang3 = Language.Cuttingboard.Sushi['enoughiwashi3']
        nolang1 = Language.Cuttingboard.Sushi['noiwashi1']
        nolang2 = Language.Cuttingboard.Sushi['noiwashi2']
        nolang3 = Language.Cuttingboard.Sushi['noiwashi3']
    elseif args == 2 then
        item1name = Config.Food.Cuttingboard.Sushi.Inada.Required['1'].name
        item1amount = Config.Food.Cuttingboard.Sushi.Inada.Required['1'].amount
        item2name = Config.Food.Cuttingboard.Sushi.Inada.Required['2'].name
        item2amount = Config.Food.Cuttingboard.Sushi.Inada.Required['2'].amount
        item3name = Config.Food.Cuttingboard.Sushi.Inada.Required['3'].name
        item3amount = Config.Food.Cuttingboard.Sushi.Inada.Required['3'].amount
        enoughlang1 = Language.Cuttingboard.Sushi['enoughinada1']
        enoughlang2 = Language.Cuttingboard.Sushi['enoughinada2']
        enoughlang3 = Language.Cuttingboard.Sushi['enoughinada3']
        nolang1 = Language.Cuttingboard.Sushi['noinada1']
        nolang2 = Language.Cuttingboard.Sushi['noinada2']
        nolang3 = Language.Cuttingboard.Sushi['noinada3']
    elseif args == 3 then
        item1name = Config.Food.Cuttingboard.Sushi.Guchi.Required['1'].name
        item1amount = Config.Food.Cuttingboard.Sushi.Guchi.Required['1'].amount
        item2name = Config.Food.Cuttingboard.Sushi.Guchi.Required['2'].name
        item2amount = Config.Food.Cuttingboard.Sushi.Guchi.Required['2'].amount
        item3name = Config.Food.Cuttingboard.Sushi.Guchi.Required['3'].name
        item3amount = Config.Food.Cuttingboard.Sushi.Guchi.Required['3'].amount
        enoughlang1 = Language.Cuttingboard.Sushi['enoughguchi1']
        enoughlang2 = Language.Cuttingboard.Sushi['enoughguchi2']
        enoughlang3 = Language.Cuttingboard.Sushi['enoughguchi3']
        nolang1 = Language.Cuttingboard.Sushi['noguchi1']
        nolang2 = Language.Cuttingboard.Sushi['noguchi2']
        nolang3 = Language.Cuttingboard.Sushi['noguchi3']
    elseif args == 4 then
        item1name = Config.Food.Cuttingboard.Sushi.Akoudai.Required['1'].name
        item1amount = Config.Food.Cuttingboard.Sushi.Akoudai.Required['1'].amount
        item2name = Config.Food.Cuttingboard.Sushi.Akoudai.Required['2'].name
        item2amount = Config.Food.Cuttingboard.Sushi.Akoudai.Required['2'].amount
        item3name = Config.Food.Cuttingboard.Sushi.Akoudai.Required['3'].name
        item3amount = Config.Food.Cuttingboard.Sushi.Akoudai.Required['3'].amount
        enoughlang1 = Language.Cuttingboard.Sushi['enoughakoudai1']
        enoughlang2 = Language.Cuttingboard.Sushi['enoughakoudai2']
        enoughlang3 = Language.Cuttingboard.Sushi['enoughakoudai3']
        nolang1 = Language.Cuttingboard.Sushi['noakoudai1']
        nolang2 = Language.Cuttingboard.Sushi['noakoudai2']
        nolang3 = Language.Cuttingboard.Sushi['noakoudai3']
    elseif args == 5 then
        item1name = Config.Food.Cuttingboard.Sushi.Ohyou.Required['1'].name
        item1amount = Config.Food.Cuttingboard.Sushi.Ohyou.Required['1'].amount
        item2name = Config.Food.Cuttingboard.Sushi.Ohyou.Required['2'].name
        item2amount = Config.Food.Cuttingboard.Sushi.Ohyou.Required['2'].amount
        item3name = Config.Food.Cuttingboard.Sushi.Ohyou.Required['3'].name
        item3amount = Config.Food.Cuttingboard.Sushi.Ohyou.Required['3'].amount
        enoughlang1 = Language.Cuttingboard.Sushi['enoughohyou1']
        enoughlang2 = Language.Cuttingboard.Sushi['enoughohyou2']
        enoughlang3 = Language.Cuttingboard.Sushi['enoughohyou3']
        nolang1 = Language.Cuttingboard.Sushi['noohyou1']
        nolang2 = Language.Cuttingboard.Sushi['noohyou2']
        nolang3 = Language.Cuttingboard.Sushi['noohyou3']
    end
    if pData.Functions.GetItemByName(knife) ~= nil then
        if pData.Functions.GetItemByName(plate) ~= nil then
            if pData.Functions.GetItemByName(item1name) ~= nil then
                if pData.Functions.GetItemByName(item1name).amount >= item1amount then
                    if pData.Functions.GetItemByName(item2name) ~= nil then
                        if pData.Functions.GetItemByName(item2name).amount >= item2amount then
                            if pData.Functions.GetItemByName(item3name) ~= nil then
                                if pData.Functions.GetItemByName(item3name).amount >= item3amount then
                                    pData.Functions.RemoveItem(plate, 1)
                                    pData.Functions.RemoveItem(item1name, item1amount)
                                    pData.Functions.RemoveItem(item2name, item2amount)
                                    pData.Functions.RemoveItem(item3name, item3amount)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[plate], 'remove', 1)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item1name], 'remove', item1amount)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item2name], 'remove', item2amount)
                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item3name], 'remove', item3amount)
                                    TriggerClientEvent('boii-uwucafe:cl:Sushi', source, args)
                                else
                                    TriggerClientEvent('boii-uwucafe:notify', source, enoughlang3, 'error')
                                end
                            else
                                TriggerClientEvent('boii-uwucafe:notify', source, nolang3, 'error')
                            end
                        else
                            TriggerClientEvent('boii-uwucafe:notify', source, enoughlang2, 'error')
                        end
                    else
                        TriggerClientEvent('boii-uwucafe:notify', source, nolang2, 'error')
                    end
                else
                    TriggerClientEvent('boii-uwucafe:notify', source, enoughlang1, 'error')
                end
            else
                TriggerClientEvent('boii-uwucafe:notify', source, nolang1, 'error')
            end
        else
            TriggerClientEvent('boii-uwucafe:notify', source, Language.Cuttingboard['noplate'], 'error')
        end
    else
        TriggerClientEvent('boii-uwucafe:notify', source, Language.Cuttingboard['noknife'], 'error')
    end
end)

-- Sashimi
RegisterServerEvent('boii-uwucafe:sv:Sashimi', function(args)
    local pData = Core.Functions.GetPlayer(source)
    local args = tonumber(args)
    local knife = Config.Food.Cuttingboard.Required['1'].name
    local plate = Config.Food.Cuttingboard.Required['2'].name
    if args == 1 then
        item1name = Config.Food.Cuttingboard.Sashimi.Aji.Required['1'].name
        item1amount = Config.Food.Cuttingboard.Sashimi.Aji.Required['1'].amount
        item2name = Config.Food.Cuttingboard.Sashimi.Aji.Required['2'].name
        item2amount = Config.Food.Cuttingboard.Sashimi.Aji.Required['2'].amount
        enoughlang1 = Language.Cuttingboard.Sashimi['enoughaji1']
        enoughlang2 = Language.Cuttingboard.Sashimi['enoughaji2']
        nolang1 = Language.Cuttingboard.Sashimi['noaji1']
        nolang2 = Language.Cuttingboard.Sashimi['noaji2']
    elseif args == 2 then
        item1name = Config.Food.Cuttingboard.Sashimi.Akoudai.Required['1'].name
        item1amount = Config.Food.Cuttingboard.Sashimi.Akoudai.Required['1'].amount
        item2name = Config.Food.Cuttingboard.Sashimi.Akoudai.Required['2'].name
        item2amount = Config.Food.Cuttingboard.Sashimi.Akoudai.Required['2'].amount
        enoughlang1 = Language.Cuttingboard.Sashimi['enoughakoudai1']
        enoughlang2 = Language.Cuttingboard.Sashimi['enoughakoudai2']
        nolang1 = Language.Cuttingboard.Sashimi['noakoudai1']
        nolang2 = Language.Cuttingboard.Sashimi['noakoudai2']
    elseif args == 3 then
        item1name = Config.Food.Cuttingboard.Sashimi.Ohyou.Required['1'].name
        item1amount = Config.Food.Cuttingboard.Sashimi.Ohyou.Required['1'].amount
        item2name = Config.Food.Cuttingboard.Sashimi.Ohyou.Required['2'].name
        item2amount = Config.Food.Cuttingboard.Sashimi.Ohyou.Required['2'].amount
        enoughlang1 = Language.Cuttingboard.Sashimi['enoughohyou1']
        enoughlang2 = Language.Cuttingboard.Sashimi['enoughohyou2']
        nolang1 = Language.Cuttingboard.Sashimi['noohyou1']
        nolang2 = Language.Cuttingboard.Sashimi['noohyou2']
    elseif args == 4 then
        item1name = Config.Food.Cuttingboard.Sashimi.Beef.Required['1'].name
        item1amount = Config.Food.Cuttingboard.Sashimi.Beef.Required['1'].amount
        item2name = Config.Food.Cuttingboard.Sashimi.Beef.Required['2'].name
        item2amount = Config.Food.Cuttingboard.Sashimi.Beef.Required['2'].amount
        enoughlang1 = Language.Cuttingboard.Sashimi['enoughbeef1']
        enoughlang2 = Language.Cuttingboard.Sashimi['enoughbeef2']
        nolang1 = Language.Cuttingboard.Sashimi['nobeef1']
        nolang2 = Language.Cuttingboard.Sashimi['nobeef2']
    elseif args == 5 then
        item1name = Config.Food.Cuttingboard.Sashimi.Venison.Required['1'].name
        item1amount = Config.Food.Cuttingboard.Sashimi.Venison.Required['1'].amount
        item2name = Config.Food.Cuttingboard.Sashimi.Venison.Required['2'].name
        item2amount = Config.Food.Cuttingboard.Sashimi.Venison.Required['2'].amount
        enoughlang1 = Language.Cuttingboard.Sashimi['enoughvenison1']
        enoughlang2 = Language.Cuttingboard.Sashimi['enoughvenison2']
        nolang1 = Language.Cuttingboard.Sashimi['novenison1']
        nolang2 = Language.Cuttingboard.Sashimi['novenison']
    end
    if pData.Functions.GetItemByName(knife) ~= nil then
        if pData.Functions.GetItemByName(plate) ~= nil then
            if pData.Functions.GetItemByName(item1name) ~= nil then
                if pData.Functions.GetItemByName(item1name).amount >= item1amount then
                    if pData.Functions.GetItemByName(item2name) ~= nil then
                        if pData.Functions.GetItemByName(item2name).amount >= item2amount then
                            pData.Functions.RemoveItem(plate, 1)
                            pData.Functions.RemoveItem(item1name, item1amount)
                            pData.Functions.RemoveItem(item2name, item2amount)
                            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[plate], 'remove', 1)
                            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item1name], 'remove', item1amount)
                            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item2name], 'remove', item2amount)
                            TriggerClientEvent('boii-uwucafe:cl:Sashimi', source, args)
                        else
                            TriggerClientEvent('boii-uwucafe:notify', source, enoughlang2, 'error')
                        end
                    else
                        TriggerClientEvent('boii-uwucafe:notify', source, nolang2, 'error')
                    end
                else
                    TriggerClientEvent('boii-uwucafe:notify', source, enoughlang1, 'error')
                end
            else
                TriggerClientEvent('boii-uwucafe:notify', source, nolang1, 'error')
            end
        else
            TriggerClientEvent('boii-uwucafe:notify', source, Language.Cuttingboard['noplate'], 'error')
        end
    else
        TriggerClientEvent('boii-uwucafe:notify', source, Language.Cuttingboard['noknife'], 'error')
    end
end)