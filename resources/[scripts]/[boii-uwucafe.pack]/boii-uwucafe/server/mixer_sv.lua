----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Ramune
RegisterServerEvent('boii-uwucafe:sv:Ramune', function(args)
    local pData = Core.Functions.GetPlayer(source)
    local args = tonumber(args)
    local bottle = Config.Drinks.Mixer.Ramune.Required['1'].name
    local water = Config.Drinks.Mixer.Ramune.Required['2'].name
    if args == 1 then
        itemname = Config.Drinks.Mixer.Ramune.Cherry.Required.name
        amount = Config.Drinks.Mixer.Ramune.Cherry.Required.amount
        enoughlang = Language.Mixer.Ramune['enoughcherry']
        nolang = Language.Mixer.Ramune['nocherry']
    elseif args == 2 then
        itemname = Config.Drinks.Mixer.Ramune.Lemon.Required.name
        amount = Config.Drinks.Mixer.Ramune.Lemon.Required.amount
        enoughlang = Language.Mixer.Ramune['enoughlemon']
        nolang = Language.Mixer.Ramune['nolemon']
    elseif args == 3 then
        itemname = Config.Drinks.Mixer.Ramune.Pineapple.Required.name
        amount = Config.Drinks.Mixer.Ramune.Pineapple.Required.amount
        enoughlang = Language.Mixer.Ramune['enoughpineapple']
        nolang = Language.Mixer.Ramune['nopineapple']
    elseif args == 4 then
        itemname = Config.Drinks.Mixer.Ramune.Coconut.Required.name
        amount = Config.Drinks.Mixer.Ramune.Coconut.Required.amount
        enoughlang = Language.Mixer.Ramune['enoughcoconut']
        nolang = Language.Mixer.Ramune['nococonut']
    elseif args == 5 then
        itemname = Config.Drinks.Mixer.Ramune.Orange.Required.name
        amount = Config.Drinks.Mixer.Ramune.Orange.Required.amount
        enoughlang = Language.Mixer.Ramune['enoughorange']
        nolang = Language.Mixer.Ramune['noorange']
    elseif args == 6 then
        itemname = Config.Drinks.Mixer.Ramune.Apple.Required.name
        amount = Config.Drinks.Mixer.Ramune.Apple.Required.amount
        enoughlang = Language.Mixer.Ramune['enoughapple']
        nolang = Language.Mixer.Ramune['noapple']
    elseif args == 7 then
        itemname = Config.Drinks.Mixer.Ramune.Strawberry.Required.name
        amount = Config.Drinks.Mixer.Ramune.Strawberry.Required.amount
        enoughlang = Language.Mixer.Ramune['enoughstrawberry']
        nolang = Language.Mixer.Ramune['nostrawberry']
    elseif args == 8 then
        itemname = Config.Drinks.Mixer.Ramune.Blueberry.Required.name
        amount = Config.Drinks.Mixer.Ramune.Blueberry.Required.amount
        enoughlang = Language.Mixer.Ramune['enoughblueberry']
        nolang = Language.Mixer.Ramune['noblueberry']
    end
    if pData.Functions.GetItemByName(bottle) ~= nil then
        if pData.Functions.GetItemByName(water) ~= nil then
            if pData.Functions.GetItemByName(itemname) ~= nil then
                if pData.Functions.GetItemByName(itemname).amount >= amount then
                    pData.Functions.RemoveItem(bottle, 1)
                    pData.Functions.RemoveItem(water, 1)
                    pData.Functions.RemoveItem(itemname, itemamount)
                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[bottle], 'remove', 1)
                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[water], 'remove', 1)
                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[itemname], 'remove', amount)
                    TriggerClientEvent('boii-uwucafe:cl:Ramune', source, args)
                else
                    TriggerClientEvent('boii-uwucafe:notify', source, enoughlang, 'error')
                end
            else
                TriggerClientEvent('boii-uwucafe:notify', source, nolang, 'error')
            end
        else
            TriggerClientEvent('boii-uwucafe:notify', source, Language.Mixer.Ramune['nowater'], 'error')
        end
    else
        TriggerClientEvent('boii-uwucafe:notify', source, Language.Mixer.Ramune['nobottle'], 'error')
    end
end)    

-- Boba tea
RegisterServerEvent('boii-uwucafe:sv:Boba', function(args)
    local pData = Core.Functions.GetPlayer(source)
    local args = tonumber(args)
    local cup = Config.Drinks.Mixer.Boba.Required['1'].name
    local syrup = Config.Drinks.Mixer.Boba.Required['2'].name
    local milk = Config.Drinks.Mixer.Boba.Required['3'].name
    local pearls = Config.Drinks.Mixer.Boba.Required['4'].name
    local pearlsamount = Config.Drinks.Mixer.Boba.Required['4'].amount
    if args == 1 then
        item1name = Config.Drinks.Mixer.Boba.Boba.Required.name
        item1amount = Config.Drinks.Mixer.Boba.Boba.Required.amount
        enoughlang = Language.Mixer.Boba['enoughboba']
        nolang = Language.Mixer.Boba['noboba']
    elseif args == 2 then
        item1name = Config.Drinks.Mixer.Boba.Matcha.Required.name
        item1amount = Config.Drinks.Mixer.Boba.Matcha.Required.amount
        enoughlang = Language.Mixer.Boba['enoughmatcha']
        nolang = Language.Mixer.Bobap['enoughmatcha']
    elseif args == 3 then
        item1name = Config.Drinks.Mixer.Boba.Ichigo.Required['1'].name
        item1amount = Config.Drinks.Mixer.Boba.Ichigo.Required['1'].amount
        item2name = Config.Drinks.Mixer.Boba.Ichigo.Required['2'].name
        item2amount = Config.Drinks.Mixer.Boba.Ichigo.Required['2'].amount
        enoughlang = Language.Mixer.Boba['enoughichigo1']
        nolang = Language.Mixer.Boba['enoughichigo1']
        enoughlang2 = Language.Mixer.Boba['enoughichigo2']
        nolang2 = Language.Mixer.Boba['enoughichigo2']
        type = fruit
    elseif args == 4 then
        item1name = Config.Drinks.Mixer.Boba.Lemon.Required['1'].name
        item1amount = Config.Drinks.Mixer.Boba.Lemon.Required['1'].amount
        item2name = Config.Drinks.Mixer.Boba.Lemon.Required['2'].name
        item2amount = Config.Drinks.Mixer.Boba.Lemon.Required['2'].amount
        enoughlang = Language.Mixer.Boba['enoughlemon']
        nolang = Language.Mixer.Bobap['enoughlemon']
        enoughlang2 = Language.Mixer.Boba['enoughlemon2']
        nolang2 = Language.Mixer.Boba['enoughlemon2']
        type = fruit
    elseif args == 5 then
        item1name = Config.Drinks.Mixer.Boba.Blueberry.Required['1'].name
        item1amount = Config.Drinks.Mixer.Boba.Blueberry.Required['1'].amount
        item2name = Config.Drinks.Mixer.Boba.Blueberry.Required['2'].name
        item2amount = Config.Drinks.Mixer.Boba.Blueberry.Required['2'].amount
        enoughlang = Language.Mixer.Boba['enoughblueberry']
        nolang = Language.Mixer.Boba['enoughblueberry']
        enoughlang2 = Language.Mixer.Boba['enoughblueberry2']
        nolang2 = Language.Mixer.Boba['enoughblueberry2']
        type = fruit
    end
    if pData.Functions.GetItemByName(cup) ~= nil then
        if pData.Functions.GetItemByName(syrup) ~= nil then
            if pData.Functions.GetItemByName(milk) ~= nil then
                if pData.Functions.GetItemByName(pearls) ~= nil then
                    if pData.Functions.GetItemByName(pearls).amount >= pearlsamount then
                        if pData.Functions.GetItemByName(item1name) ~= nil then
                            if pData.Functions.GetItemByName(item1name).amount >= item1amount then
                                if type == fruit then
                                    if pData.Functions.GetItemByName(item2name) ~= nil then
                                        if pData.Functions.GetItemByName(item2name).amount >= item2amount then
                                            pData.Functions.RemoveItem(item2name, item2amount)
                                            TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item2name], 'remove', item2amount)
                                        else
                                            TriggerClientEvent('boii-uwucafe:notify', source, enoughlang2, 'error')
                                            return
                                        end
                                    else
                                        TriggerClientEvent('boii-uwucafe:notify', source, nolang2, 'error')
                                        return
                                    end
                                end
                                pData.Functions.RemoveItem(cup, 1)
                                pData.Functions.RemoveItem(syrup, 1)
                                pData.Functions.RemoveItem(milk, 1)
                                pData.Functions.RemoveItem(pearls, pearlsamount)
                                pData.Functions.RemoveItem(item1name, item1amount)
                                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[cup], 'remove', 1)
                                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[syrup], 'remove', 1)
                                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[milk], 'remove', 1)
                                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[pearls], 'remove', pearlsamount)
                                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item1name], 'remove', item1amount)
                                TriggerClientEvent('boii-uwucafe:cl:Boba', source, args)
                            else
                                TriggerClientEvent('boii-uwucafe:notify', source, enoughlang, 'error')         
                            end
                        else
                            TriggerClientEvent('boii-uwucafe:notify', source, nolang, 'error')
                        end
                    else
                        TriggerClientEvent('boii-uwucafe:notify', source, Language.Mixer.Boba['enoughpearls'], 'error')         
                    end
                else
                    TriggerClientEvent('boii-uwucafe:notify', source, Language.Mixer.Boba['nopearls'], 'error')
                end
            else
                TriggerClientEvent('boii-uwucafe:notify', source, Language.Mixer.Boba['nomilk'], 'error')
            end
        else
            TriggerClientEvent('boii-uwucafe:notify', source, Language.Mixer.Boba['nosyrup'], 'error')
        end
    else
        TriggerClientEvent('boii-uwucafe:notify', source, Language.Mixer.Boba['nocup'], 'error')
    end
end)

-- Unbaked
RegisterServerEvent('boii-uwucafe:sv:Unbaked', function(args)
    local pData = Core.Functions.GetPlayer(source)
    local args = tonumber(args)
    local plate = Config.Food.Mixer.Unbaked.Required.name
    if args == 1 then
        item1name = Config.Food.Mixer.Unbaked.Nishigashi.Required['1'].name
        item1amount = Config.Food.Mixer.Unbaked.Nishigashi.Required['1'].amount
        item2name = Config.Food.Mixer.Unbaked.Nishigashi.Required['2'].name
        item2amount = Config.Food.Mixer.Unbaked.Nishigashi.Required['2'].amount
        item3name = Config.Food.Mixer.Unbaked.Nishigashi.Required['3'].name
        item3amount = Config.Food.Mixer.Unbaked.Nishigashi.Required['3'].amount 
        item4name = Config.Food.Mixer.Unbaked.Nishigashi.Required['4'].name
        item4amount = Config.Food.Mixer.Unbaked.Nishigashi.Required['4'].amount
        enoughlang1 = Language.Mixer.Unbaked['enoughnish1']
        nolang1 = Language.Mixer.Unbaked['nonish1']
        enoughlang2 = Language.Mixer.Unbaked['enoughnish2']
        nolang2 = Language.Mixer.Unbaked['nonish2']
        enoughlang3 = Language.Mixer.Unbaked['enoughnish3']
        nolang3 = Language.Mixer.Unbaked['nonish3']
        enoughlang4 = Language.Mixer.Unbaked['enoughnish4']
        nolang4 = Language.Mixer.Unbaked['nonish4']
    elseif args == 2 then
        item1name = Config.Food.Mixer.Unbaked.Kuromame.Required['1'].name
        item1amount = Config.Food.Mixer.Unbaked.Kuromame.Required['1'].amount
        item2name = Config.Food.Mixer.Unbaked.Kuromame.Required['2'].name
        item2amount = Config.Food.Mixer.Unbaked.Kuromame.Required['2'].amount
        item3name = Config.Food.Mixer.Unbaked.Kuromame.Required['3'].name
        item3amount = Config.Food.Mixer.Unbaked.Kuromame.Required['3'].amount 
        item4name = Config.Food.Mixer.Unbaked.Kuromame.Required['4'].name
        item4amount = Config.Food.Mixer.Unbaked.Kuromame.Required['4'].amount
        item5name = Config.Food.Mixer.Unbaked.Kuromame.Required['5'].name
        item5amount = Config.Food.Mixer.Unbaked.Kuromame.Required['5'].amount
        enoughlang1 = Language.Mixer.Unbaked['enoughkuro1']
        nolang1 = Language.Mixer.Unbaked['nokuro1']
        enoughlang2 = Language.Mixer.Unbaked['enoughkuro2']
        nolang2 = Language.Mixer.Unbaked['nokuro2']
        enoughlang3 = Language.Mixer.Unbaked['enoughkuro3']
        nolang3 = Language.Mixer.Unbaked['nokuro3']
        enoughlang4 = Language.Mixer.Unbaked['enoughkuro4']
        nolang4 = Language.Mixer.Unbaked['nokuro4']
        enoughlang5 = Language.Mixer.Unbaked['enoughkuro5']
        nolang5 = Language.Mixer.Unbaked['nokuro5']
        type = item5
    elseif args == 3 then
        item1name = Config.Food.Mixer.Unbaked.Mitarashi.Required['1'].name
        item1amount = Config.Food.Mixer.Unbaked.Mitarashi.Required['1'].amount
        item2name = Config.Food.Mixer.Unbaked.Mitarashi.Required['2'].name
        item2amount = Config.Food.Mixer.Unbaked.Mitarashi.Required['2'].amount
        item3name = Config.Food.Mixer.Unbaked.Mitarashi.Required['3'].name
        item3amount = Config.Food.Mixer.Unbaked.Mitarashi.Required['3'].amount 
        item4name = Config.Food.Mixer.Unbaked.Mitarashi.Required['4'].name
        item4amount = Config.Food.Mixer.Unbaked.Mitarashi.Required['4'].amount
        item5name = Config.Food.Mixer.Unbaked.Mitarashi.Required['5'].name
        item5amount = Config.Food.Mixer.Unbaked.Mitarashi.Required['5'].amount
        enoughlang1 = Language.Mixer.Unbaked['enoughmita1']
        nolang1 = Language.Mixer.Unbaked['nomita1']
        enoughlang2 = Language.Mixer.Unbaked['enoughmita2']
        nolang2 = Language.Mixer.Unbaked['nomita2']
        enoughlang3 = Language.Mixer.Unbaked['enoughmita3']
        nolang3 = Language.Mixer.Unbaked['nomita3']
        enoughlang4 = Language.Mixer.Unbaked['enoughmita4']
        nolang4 = Language.Mixer.Unbaked['nomita4']
        enoughlang5 = Language.Mixer.Unbaked['enoughmita5']
        nolang5 = Language.Mixer.Unbaked['nomita5']
        type = item5
    elseif args == 4 then
        item1name = Config.Food.Mixer.Unbaked.Matche.Required['1'].name
        item1amount = Config.Food.Mixer.Unbaked.Matche.Required['1'].amount
        item2name = Config.Food.Mixer.Unbaked.Matche.Required['2'].name
        item2amount = Config.Food.Mixer.Unbaked.Matche.Required['2'].amount
        item3name = Config.Food.Mixer.Unbaked.Matche.Required['3'].name
        item3amount = Config.Food.Mixer.Unbaked.Matche.Required['3'].amount 
        item4name = Config.Food.Mixer.Unbaked.Matche.Required['4'].name
        item4amount = Config.Food.Mixer.Unbaked.Matche.Required['4'].amount
        item5name = Config.Food.Mixer.Unbaked.Matche.Required['5'].name
        item5amount = Config.Food.Mixer.Unbaked.Matche.Required['5'].amount
        enoughlang1 = Language.Mixer.Unbaked['enoughmatche1']
        nolang1 = Language.Mixer.Unbaked['nomatche1']
        enoughlang2 = Language.Mixer.Unbaked['enoughmatche2']
        nolang2 = Language.Mixer.Unbaked['nomatche2']
        enoughlang3 = Language.Mixer.Unbaked['enoughmatche3']
        nolang3 = Language.Mixer.Unbaked['nomatche3']
        enoughlang4 = Language.Mixer.Unbaked['enoughmatche4']
        nolang4 = Language.Mixer.Unbaked['nomatche4']
        enoughlang5 = Language.Mixer.Unbaked['enoughmatche5']
        nolang5 = Language.Mixer.Unbaked['nomatche5']
        type = item5
    elseif args == 5 then
        item1name = Config.Food.Mixer.Unbaked.Mizu.Required['1'].name
        item1amount = Config.Food.Mixer.Unbaked.Mizu.Required['1'].amount
        item2name = Config.Food.Mixer.Unbaked.Mizu.Required['2'].name
        item2amount = Config.Food.Mixer.Unbaked.Mizu.Required['2'].amount
        item3name = Config.Food.Mixer.Unbaked.Mizu.Required['3'].name
        item3amount = Config.Food.Mixer.Unbaked.Mizu.Required['3'].amount 
        item4name = Config.Food.Mixer.Unbaked.Mizu.Required['4'].name
        item4amount = Config.Food.Mixer.Unbaked.Mizu.Required['4'].amount
        item5name = Config.Food.Mixer.Unbaked.Mizu.Required['5'].name
        item5amount = Config.Food.Mixer.Unbaked.Mizu.Required['5'].amount
        enoughlang1 = Language.Mixer.Unbaked['enoughmizu1']
        nolang1 = Language.Mixer.Unbaked['nomizu1']
        enoughlang2 = Language.Mixer.Unbaked['enoughmizu2']
        nolang2 = Language.Mixer.Unbaked['nomizu2']
        enoughlang3 = Language.Mixer.Unbaked['enoughmizu3']
        nolang3 = Language.Mixer.Unbaked['nomizu3']
        enoughlang4 = Language.Mixer.Unbaked['enoughmizu4']
        nolang4 = Language.Mixer.Unbaked['nomizu4']
        enoughlang5 = Language.Mixer.Unbaked['enoughmizu5']
        nolang5 = Language.Mixer.Unbaked['nomizu5']
        type = item5
    end
    if pData.Functions.GetItemByName(plate) ~= nil then
        if pData.Functions.GetItemByName(item1name) ~= nil then
            if pData.Functions.GetItemByName(item1name).amount >= item1amount then
                if pData.Functions.GetItemByName(item2name) ~= nil then
                    if pData.Functions.GetItemByName(item2name).amount >= item2amount then
                        if pData.Functions.GetItemByName(item3name) ~= nil then
                            if pData.Functions.GetItemByName(item3name).amount >= item3amount then
                                if pData.Functions.GetItemByName(item4name) ~= nil then
                                    if pData.Functions.GetItemByName(item4name).amount >= item4amount then
                                        if type == item5 then
                                            if pData.Functions.GetItemByName(item5name) ~= nil then
                                                if pData.Functions.GetItemByName(item5name).amount >= item5amount then
                                                    pData.Functions.RemoveItem(item5name, item5amount)
                                                    TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item5name], 'remove', item5amount)
                                                else
                                                    TriggerClientEvent('boii-uwucafe:notify', source, enoughlang5, 'error')
                                                    return
                                                end
                                            else
                                                TriggerClientEvent('boii-uwucafe:notify', source, nolang5, 'error')
                                                return
                                            end
                                        end
                                        pData.Functions.RemoveItem(plate, 1)
                                        pData.Functions.RemoveItem(item1name, item1amount)
                                        pData.Functions.RemoveItem(item2name, item2amount)
                                        pData.Functions.RemoveItem(item3name, item3amount)
                                        pData.Functions.RemoveItem(item4name, item4amount)
                                        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[plate], 'remove', 1)
                                        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item1name], 'remove', item1amount)
                                        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item2name], 'remove', item2amount)
                                        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item3name], 'remove', item3amount)
                                        TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[item4name], 'remove', item4amount)
                                        TriggerClientEvent('boii-uwucafe:cl:Unbaked', source, args)
                                    else
                                        TriggerClientEvent('boii-uwucafe:notify', source, enoughlang4, 'error') 
                                    end
                                else
                                    TriggerClientEvent('boii-uwucafe:notify', source, nolang4, 'error') 
                                end
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
        TriggerClientEvent('boii-uwucafe:notify', source, Language.Mixer.Unbaked['noplate'], 'error') 
    end
end)