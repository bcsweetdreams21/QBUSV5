QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1000)
        GenerateVehicleList()
        Citizen.Wait((1000 * 60) * 60)
    end
end)

RegisterServerEvent('qb-scrapyard:server:LoadVehicleList')
AddEventHandler('qb-scrapyard:server:LoadVehicleList', function()
    local src = source
    TriggerClientEvent("qb-scapyard:client:setNewVehicles", src, Config.CurrentVehicles)
end)


RegisterServerEvent('qb-scrapyard:server:ScrapVehicle')
AddEventHandler('qb-scrapyard:server:ScrapVehicle', function(listKey)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)
    if Config.CurrentVehicles[listKey] ~= nil then 
        for i = 1, math.random(3, 7), 1 do
            local item = Config.Items[math.random(1, #Config.Items)]
            Player.Functions.AddItem(item, math.random(35, 60))
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
            Citizen.Wait(500)
        end
        local Luck = math.random(1, 8)
        local Odd = math.random(1, 8)
        if Luck == Odd then
            local random = math.random(20, 40)
            Player.Functions.AddItem("rubber", random)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["rubber"], 'add')
        end
        Config.CurrentVehicles[listKey] = nil
        TriggerClientEvent("qb-scapyard:client:setNewVehicles", -1, Config.CurrentVehicles)
    end
end)

function GenerateVehicleList()
    Config.CurrentVehicles = {}
    for i = 1, 20, 1 do
        local randVehicle = Config.Vehicles[math.random(1, #Config.Vehicles)]
        if not IsInList(randVehicle) then
            Config.CurrentVehicles[i] = randVehicle
        end
    end
    TriggerClientEvent("qb-scapyard:client:setNewVehicles", -1, Config.CurrentVehicles)
end

function IsInList(name)
    local retval = false
    if Config.CurrentVehicles ~= nil and next(Config.CurrentVehicles) ~= nil then 
        for k, v in pairs(Config.CurrentVehicles) do
            if Config.CurrentVehicles[k] == name then 
                retval = true
            end
        end
    end
    return retval
end
