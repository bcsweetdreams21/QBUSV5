----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Events
-- Bento box
RegisterServerEvent('boii-uwucafe:sv:BentoBox', function(args)
    local pData = Core.Functions.GetPlayer(source)
    local args = tonumber(args)
    local itemremove = Config.Food.Hob.Bento.Required.name
    if args == 1 then
        item1name = Config.Food.Hob.Bento.Aji.Required['1'].name
        item1amount = Config.Food.Hob.Bento.Aji.Required['1'].amount
        item2name = Config.Food.Hob.Bento.Aji.Required['2'].name
        item2amount = Config.Food.Hob.Bento.Aji.Required['2'].amount
        item3name = Config.Food.Hob.Bento.Aji.Required['3'].name
        item3amount = Config.Food.Hob.Bento.Aji.Required['3'].amount
        enoughlang1 = Language.Hob.Bento['enoughaji1']
        enoughlang2 = Language.Hob.Bento['enoughaji2']
        enoughlang3 = Language.Hob.Bento['enoughaji3']
        nolang1 = Language.Hob.Bento['noaji1']
        nolang2 = Language.Hob.Bento['noaji2']
        nolang3 = Language.Hob.Bento['noaji3']
    elseif args == 2 then
        item1name = Config.Food.Hob.Bento.Inada.Required['1'].name
        item1amount = Config.Food.Hob.Bento.Inada.Required['1'].amount
        item2name = Config.Food.Hob.Bento.Inada.Required['2'].name
        item2amount = Config.Food.Hob.Bento.Inada.Required['2'].amount
        item3name = Config.Food.Hob.Bento.Inada.Required['3'].name
        item3amount = Config.Food.Hob.Bento.Inada.Required['3'].amount
        enoughlang1 = Language.Hob.Bento['enoughinada1']
        enoughlang2 = Language.Hob.Bento['enoughinada2']
        enoughlang3 = Language.Hob.Bento['enoughinada3']
        nolang1 = Language.Hob.Bento['noinada1']
        nolang2 = Language.Hob.Bento['noinada2']
        nolang3 = Language.Hob.Bento['noinada3']
    elseif args == 3 then
        item1name = Config.Food.Hob.Bento.Akoudai.Required['1'].name
        item1amount = Config.Food.Hob.Bento.Akoudai.Required['1'].amount
        item2name = Config.Food.Hob.Bento.Akoudai.Required['2'].name
        item2amount = Config.Food.Hob.Bento.Akoudai.Required['2'].amount
        item3name = Config.Food.Hob.Bento.Akoudai.Required['3'].name
        item3amount = Config.Food.Hob.Bento.Akoudai.Required['3'].amount
        enoughlang1 = Language.Hob.Bento['enoughakoudai1']
        enoughlang2 = Language.Hob.Bento['enoughakoudai2']
        enoughlang3 = Language.Hob.Bento['enoughakoudai3']
        nolang1 = Language.Hob.Bento['noakoudai1']
        nolang2 = Language.Hob.Bento['noakoudai2']
        nolang3 = Language.Hob.Bento['noakoudai3']
    elseif args == 4 then
        item1name = Config.Food.Hob.Bento.Katsu.Required['1'].name
        item1amount = Config.Food.Hob.Bento.Katsu.Required['1'].amount
        item2name = Config.Food.Hob.Bento.Katsu.Required['2'].name
        item2amount = Config.Food.Hob.Bento.Katsu.Required['2'].amount
        item3name = Config.Food.Hob.Bento.Katsu.Required['3'].name
        item3amount = Config.Food.Hob.Bento.Katsu.Required['3'].amount
        enoughlang1 = Language.Hob.Bento['enoughkatsu1']
        enoughlang2 = Language.Hob.Bento['enoughkatsu2']
        enoughlang3 = Language.Hob.Bento['enoughkatsu3']
        nolang1 = Language.Hob.Bento['nokatsu1']
        nolang2 = Language.Hob.Bento['nokatsu2']
        nolang3 = Language.Hob.Bento['nokatsu3']
    elseif args == 5 then
        item1name = Config.Food.Hob.Bento.Chashu.Required['1'].name
        item1amount = Config.Food.Hob.Bento.Chashu.Required['1'].amount
        item2name = Config.Food.Hob.Bento.Chashu.Required['2'].name
        item2amount = Config.Food.Hob.Bento.Chashu.Required['2'].amount
        item3name = Config.Food.Hob.Bento.Chashu.Required['3'].name
        item3amount = Config.Food.Hob.Bento.Chashu.Required['3'].amount
        enoughlang1 = Language.Hob.Bento['enoughchasu1']
        enoughlang2 = Language.Hob.Bento['enoughchasu2']
        enoughlang3 = Language.Hob.Bento['enoughchasu3']
        nolang1 = Language.Hob.Bento['nochasu1']
        nolang2 = Language.Hob.Bento['nochasu2']
        nolang3 = Language.Hob.Bento['nochasu3']
    end
    if pData.Functions.GetItemByName(itemremove) ~= nil then
        if pData.Functions.GetItemByName(item1name) ~= nil then
            if pData.Functions.GetItemByName(item1name).amount >= item1amount then
                if pData.Functions.GetItemByName(item2name) ~= nil then
                    if pData.Functions.GetItemByName(item2name).amount >= item2amount then
                        if pData.Functions.GetItemByName(item3name) ~= nil then
                            if pData.Functions.GetItemByName(item3name).amount >= item3amount then
                                pData.Functions.RemoveItem(itemremove, 1)
                                pData.Functions.RemoveItem(item1name, item1amount)
                                pData.Functions.RemoveItem(item2name, item2amount)
                                pData.Functions.RemoveItem(item3name, item3amount)
                                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[itemremove], 'remove', 1)
                                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item1name], 'remove', item1amount)
                                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item2name], 'remove', item2amount)
                                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item3name], 'remove', item3amount)
                                TriggerClientEvent('boii-uwucafe:cl:BentoBox', source, args)
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
        TriggerClientEvent('boii-uwucafe:notify', source, Language.Hob.Bento['nobento'], 'error')
    end
end)
-- Ramen
RegisterServerEvent('boii-uwucafe:sv:Ramen', function(args)
    local pData = Core.Functions.GetPlayer(source)
    local args = tonumber(args)
    local itemremove = Config.Food.Hob.Ramen.Required.name
    if args == 1 then
        item1name = Config.Food.Hob.Ramen.Iwashi.Required['1'].name
        item1amount = Config.Food.Hob.Ramen.Iwashi.Required['1'].amount
        item2name = Config.Food.Hob.Ramen.Iwashi.Required['2'].name
        item2amount = Config.Food.Hob.Ramen.Iwashi.Required['2'].amount
        enoughlang1 = Language.Hob.Ramen['enoughiwashi1']
        enoughlang2 = Language.Hob.Ramen['enoughiwashi2']
        nolang1 = Language.Hob.Ramen['noiwashi1']
        nolang2 = Language.Hob.Ramen['noiwashi2']
    elseif args == 2 then
        item1name = Config.Food.Hob.Ramen.Aji.Required['1'].name
        item1amount = Config.Food.Hob.Ramen.Aji.Required['1'].amount
        item2name = Config.Food.Hob.Ramen.Aji.Required['2'].name
        item2amount = Config.Food.Hob.Ramen.Aji.Required['2'].amount
        enoughlang1 = Language.Hob.Ramen['enoughaji1']
        enoughlang2 = Language.Hob.Ramen['enoughaji2']
        nolang1 = Language.Hob.Ramen['noaji1']
        nolang2 = Language.Hob.Ramen['noaji2']
    elseif args == 3 then
        item1name = Config.Food.Hob.Ramen.Ohyou.Required['1'].name
        item1amount = Config.Food.Hob.Ramen.Ohyou.Required['1'].amount
        item2name = Config.Food.Hob.Ramen.Ohyou.Required['2'].name
        item2amount = Config.Food.Hob.Ramen.Ohyou.Required['2'].amount
        enoughlang1 = Language.Hob.Ramen['enoughohyou1']
        enoughlang2 = Language.Hob.Ramen['enoughohyou2']
        nolang1 = Language.Hob.Ramen['noohyou1']
        nolang2 = Language.Hob.Ramen['noohyou2']
    elseif args == 4 then
        item1name = Config.Food.Hob.Ramen.Chicken.Required['1'].name
        item1amount = Config.Food.Hob.Ramen.Chicken.Required['1'].amount
        item2name = Config.Food.Hob.Ramen.Chicken.Required['2'].name
        item2amount = Config.Food.Hob.Ramen.Chicken.Required['2'].amount
        enoughlang1 = Language.Hob.Ramen['enoughchicken1']
        enoughlang2 = Language.Hob.Ramen['enoughchicken2']
        nolang1 = Language.Hob.Ramen['nochicken1']
        nolang2 = Language.Hob.Ramen['nochicken2']
    elseif args == 5 then
        item1name = Config.Food.Hob.Ramen.Beef.Required['1'].name
        item1amount = Config.Food.Hob.Ramen.Beef.Required['1'].amount
        item2name = Config.Food.Hob.Ramen.Beef.Required['2'].name
        item2amount = Config.Food.Hob.Ramen.Beef.Required['2'].amount
        enoughlang1 = Language.Hob.Ramen['enoughbeef1']
        enoughlang2 = Language.Hob.Ramen['enoughbeef2']
        nolang1 = Language.Hob.Ramen['nobeef1']
        nolang2 = Language.Hob.Ramen['nobeef2']
    end
    if pData.Functions.GetItemByName(itemremove) ~= nil then
        if pData.Functions.GetItemByName(item1name) ~= nil then
            if pData.Functions.GetItemByName(item1name).amount >= item1amount then
                if pData.Functions.GetItemByName(item2name) ~= nil then
                    if pData.Functions.GetItemByName(item2name).amount >= item2amount then
                        pData.Functions.RemoveItem(itemremove, 1)
                        pData.Functions.RemoveItem(item1name, item1amount)
                        pData.Functions.RemoveItem(item2name, item2amount)
                        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[itemremove], 'remove', 1)
                        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item1name], 'remove', item1amount)
                        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item2name], 'remove', item2amount)
                        TriggerClientEvent('boii-uwucafe:cl:Ramen', source, args)
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
        TriggerClientEvent('boii-uwucafe:notify', source, Language.Hob.Ramen['nobowl'], 'error')
    end
end)