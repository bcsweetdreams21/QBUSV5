local QBCore = exports['qb-core']:GetCoreObject()

-- // Events // --

RegisterNetEvent('Taz-illegal-new:server:done:action', function(Type)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    if Type ~= nil then
        if Type == 'Bricks' then
            SetTimeout(250, function()
                QBCore.Functions.AddItem('cokebrick', 1, false, false, true)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cokebrick"], "add")
            end)
        elseif Type == 'Process' then
            SetTimeout(250, function()
                QBCore.Functions.RemoveItem('cokebrick', 1, false, true)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cokebrick"], "remove")
                QBCore.Functions.AddItem('coke', 25, false, false, true)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["coke"], "add")
            end)
        elseif Type == 'Bag' then
            SetTimeout(250, function()
                QBCore.Functions.RemoveItem('coke', 25, false, true)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["coke"], "remove")
                QBCore.Functions.RemoveItem('empty_weed_bag', 5, false, true)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["empty_weed_bag"], "remove")
                QBCore.Functions.AddItem('cokebag', 25, false, false, true)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cokebag"], "add")
            end)
        end
    end
end)