local QBCore = exports['qb-core']:GetCoreObject()

-- // Events // --

RegisterNetEvent('taz-illegal:client:coke:enter:cokelab', function()
    local Distance = #(GetEntityCoords(PlayerPedId()) - vector3(Config.LabLocations['CokeLabEnter']['Coords']['x'], Config.LabLocations['CokeLabEnter']['Coords']['y'], Config.LabLocations['CokeLabEnter']['Coords']['z']))
    if Distance < 2 then
        QBCore.Functions.TriggerCallback('ol-base:server:validateItem', function(Result)
			if Result then
                EnterCokeLab()
            else
                QBCore.Functions.Notify('You need an key..', 'error', 500)
            end
        end, {key_b = 1})
    else
        QBCore.Functions.ExploitBan()
    end
end)

RegisterNetEvent('taz-illegal:client:coke:exit:cokelab', function()
    local Distance = #(GetEntityCoords(PlayerPedId()) - vector3(Config.LabLocations['CokeLabExit']['Coords']['x'], Config.LabLocations['CokeLabExit']['Coords']['y'], Config.LabLocations['CokeLabExit']['Coords']['z']))
    if Distance < 2 then
        ExitCokeLab()
    else
        QBCore.Functions.ExploitBan()
    end
end)

RegisterNetEvent('taz-illegal:client:coke:get:cocaine:bricks', function(data)
    local Entity = data.entity
    if not UsedSeat[Entity] then
        QBCore.Functions.TriggerCallback('ol-base:server:validateItem', function(Result)
            if Result then 
                TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
                QBCore.Functions.Progressbar('cocaine-bricks', 'Taking Something', 15000, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function()
                    SetSeatUsed(Entity)
                    TriggerServerEvent('taz-illegal:server:done:action', 'Bricks')
                    ClearPedTasks(PlayerPedId())
                end, function()
                    ClearPedTasks(PlayerPedId())
                end)
            else
                QBCore.Functions.Notify('You need an knife to cut open the seat..', 'error', 500)
            end
        end, {weapon_knife = 1})
    else
        QBCore.Functions.Notify('You already token something..', 'error', 500)
    end
end)

RegisterNetEvent('taz-illegal:client:coke:process:cocaine', function()
    QBCore.Functions.TriggerCallback('ol-base:server:validateItem', function(Result)
        if Result then
            TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
            QBCore.Functions.Progressbar('cocaine-process', 'Processing', 15000, false, true, {
	        	disableMovement = true,
	        	disableCarMovement = true,
	        	disableMouse = false,
	        	disableCombat = true,
	        }, {}, {}, {}, function()
	        	TriggerServerEvent('taz-illegal:server:done:action', 'Process')
	        	ClearPedTasks(PlayerPedId())
	        end, function()
	        	ClearPedTasks(PlayerPedId())
	        end)
        else
            QBCore.Functions.Notify('You need an cocaine brick to process..', 'error', 500)
        end
    end, {cokebrick = 1})
end)

RegisterNetEvent('taz-illegal:client:coke:bag:cocaine', function()
    QBCore.Functions.TriggerCallback('ol-base:server:validateItem', function(Result)
        if Result then
            TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
            QBCore.Functions.Progressbar('cocaine-bag', 'Bagging', 15000, false, true, {
	        	disableMovement = true,
	        	disableCarMovement = true,
	        	disableMouse = false,
	        	disableCombat = true,
	        }, {}, {}, {}, function()
	        	TriggerServerEvent('taz-illegal:server:done:action', 'Bag')
	        	ClearPedTasks(PlayerPedId())
	        end, function()
	        	ClearPedTasks(PlayerPedId())
	        end)
        else
            QBCore.Functions.Notify('You need 50x cocaine and 10x empty bag..', 'error', 500)
        end
    end, {coke = 25, empty_weed_bag = 5})
end)

-- // Functions // --

function EnterCokeLab()
    exports['qb-smallresources']:RequestAnimationDict('anim@heists@keycard@') 
    TaskPlayAnim(PlayerPedId(), 'anim@heists@keycard@', 'exit', 5.0, 1.0, -1, 16, 0, 0, 0, 0)
    Wait(400)
    ClearPedTasks(PlayerPedId())
    SetEntityCoords(PlayerPedId(), Config.LabLocations['CokeLabExit']['Coords']['x'], Config.LabLocations['CokeLabExit']['Coords']['y'], Config.LabLocations['CokeLabExit']['Coords']['z'] - 0.98)
end

function ExitCokeLab()
    exports['qb-smallresources']:RequestAnimationDict('anim@heists@keycard@') 
    TaskPlayAnim(PlayerPedId(), 'anim@heists@keycard@', 'exit', 5.0, 1.0, -1, 16, 0, 0, 0, 0)
    Wait(400)
    ClearPedTasks(PlayerPedId())
    SetEntityCoords(PlayerPedId(), Config.LabLocations['CokeLabEnter']['Coords']['x'], Config.LabLocations['CokeLabEnter']['Coords']['y'], Config.LabLocations['CokeLabEnter']['Coords']['z'] - 0.98)
end

function SetSeatUsed(Entity)
    UsedSeat[Entity] = true
    SetTimeout(120000, function() -- 2 Minutes
        UsedSeat[Entity] = false
    end)
end