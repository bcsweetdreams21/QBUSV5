Config = {}

Config.bike1 = {
    ['coords'] = vector4(-1180.8, -1179.61, 5.47, 76.24),
    ['bike1'] =  'nightblade',
    ['plate'] = 'TRIBE', -- Make sure only 8 characters
}
Config.bike = {
    ['coords'] = vector4(-1181.11, -1177.56, 5.47, 76.45),
    ['bike'] =  'nightblade',
    ['plate'] = 'TRIBE', -- Make sure only 8 characters
}


r, g, b = 0, 0, 0  -- RGB Colour
x, y, z = 0, 0, 0  -- RGB Colour



    CreateThread(function()
        local model = GetHashKey(Config.bike1['bike1'])
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(0)
        end
        local veh = CreateVehicle(model, Config.bike1['coords'].x, Config.bike1['coords'].y, Config.bike1['coords'].z-0.5, false, false)
        SetModelAsNoLongerNeeded(model)
        SetEntityAsMissionEntity(veh, true, true)
        SetVehicleOnGroundProperly(veh)
        SetEntityInvincible(veh,true)
        SetVehicleDirtLevel(veh, 0.0)
        SetVehicleDoorsLocked(veh, 3)
        SetEntityHeading(veh,Config.bike1['coords'].w)
        SetVehicleCustomPrimaryColour(veh, r, g, b) -- bike1 colour
        SetVehicleCustomSecondaryColour(veh, r, g, b) -- bike1 colour
        SetVehicleExtraColours(veh, 1, 1)-- bike1 colour
        FreezeEntityPosition(veh, true)
        SetVehicleNumberPlateText(veh, Config.bike1['plate'])
    end)

    CreateThread(function()
        local model = GetHashKey(Config.bike['bike'])
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(0)
        end
        local veh = CreateVehicle(model, Config.bike['coords'].x, Config.bike['coords'].y, Config.bike['coords'].z-0.5, false, false)
        SetModelAsNoLongerNeeded(model)
        SetEntityAsMissionEntity(veh, true, true)
        SetVehicleOnGroundProperly(veh)
        SetEntityInvincible(veh,true)
        SetVehicleDirtLevel(veh, 0.0)
        SetVehicleDoorsLocked(veh, 3)
        SetEntityHeading(veh,Config.bike['coords'].w)
        SetVehicleCustomPrimaryColour(veh, x, y, z) -- bike colour
        SetVehicleCustomSecondaryColour(veh, x, y, z) -- bike colour
        SetVehicleExtraColours(veh, 1, 1)-- bike colour
        FreezeEntityPosition(veh, true)
        SetVehicleNumberPlateText(veh, Config.bike['plate'])
    end)

