----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local Core = Config.CoreSettings.Core
local CoreFolder = Config.CoreSettings.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local TargetName = Config.CoreSettings.TargetName
local InputName = Config.CoreSettings.InputName
local DutyEvent = Config.CoreSettings.DutyEvent
local ClothingEvent = Config.CoreSettings.ClothingEvent
local FuelScript = Config.CoreSettings.FuelScript
local RemoveStress = Config.CoreSettings.RemoveStressEvent
local MetaDataEvent = Config.CoreSettings.MetaDataEvent
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

--<!>-- NOTIFICATIONS START --<!>--
RegisterNetEvent('boii-uwucafe:notify')
AddEventHandler('boii-uwucafe:notify', function(msg, type)
    Core.Functions.Notify(msg,type)
end)
--<!>-- NOTIFICATIONS END --<!>--

--<!>-- BLIPS START --<!>--
CreateThread(function()
    for k, v in pairs(Config.Blips) do
        if v.useblip then
            v.blip = AddBlipForCoord(v.x, v.y, v.z)
            SetBlipSprite(v.blip, v.id)
            SetBlipDisplay(v.blip, 4)
            SetBlipScale(v.blip, v.scale)
            SetBlipColour(v.blip, v.colour)
            SetBlipAsShortRange(v.blip, true)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(v.title)
            EndTextCommandSetBlipName(v.blip)
        end
    end
end)
--<!>-- BLIPS END --<!>--

--<!>-- TOGGLE DUTY START --<!>--
for k, v in pairs(Config.JobSettings.Locations.Duty) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
            name=v.name,
            heading= v.heading,
            debugPoly= v.debugPoly,
            minZ = v.minZ,
            maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-uwucafe:cl:DutyMenu',
            icon = Language.Targeting['dutyicon'],
            label = Language.Targeting['dutylabel'],
            job = Config.JobSettings.Job
            },
        },
        distance = v.distance,
    })
end
--<!>-- TOGGLE DUTY END --<!>--

--<!>-- JOB MANAGEMENT START --<!>--
for k, v in pairs(Config.JobSettings.Locations.Management) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
        name=v.name,
        heading= v.heading,
        debugPoly= v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ,
        },{
        options = {
            {
            event = Config.CoreSettings.ManagementEvent,
            icon = Language.Targeting['bossicon'],
            label = Language.Targeting['bosslabel'],
            job = {[Config.JobSettings.Job] = 5,[Config.JobSettings.Job] = 6}
            },
        },
        distance = v.distance,
    })
end
--<!>-- JOB MANAGEMENT END --<!>--

--<!>-- OUTFITS START --<!>--
for k, v in pairs(Config.JobSettings.Locations.Clothing) do
    exports[TargetName]:AddBoxZone(v.name, v.coords, v.length, v.width, {
            name=v.name,
            heading= v.heading,
            debugPoly= v.debugPoly,
            minZ = v.minZ,
            maxZ = v.maxZ,
        },{
        options = {
            {
            event = 'boii-uwucafe:cl:ChangeOutfit',
            icon = Language.Targeting['outfiticon'],
            label = Language.Targeting['outfitlabel'],
            job = Config.JobSettings.Job
            },
        },
        distance = v.distance,
    })
end
RegisterNetEvent('boii-uwucafe:cl:ChangeOutfit', function()
    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'Clothes1', 0.5)
    TriggerEvent(ClothingEvent)
end)
--<!>-- OUTFITS END --<!>--

--<!>-- EPOS START --<!>--
-- EPOS
for k, v in pairs(Config.JobSettings.Locations.EPOS) do
    exports[TargetName]:AddCircleZone(v.name, v.coords, v.radius, { 
            name= v.name, 
            debugPoly= v.debugPoly, 
            useZ= v.useZ, 
        },{ 
        options = { 
            {
                event = 'boii-uwucafe:cl:Pay',
                icon = Language.Targeting['eposicon'],
                label = Language.Targeting['eposlabel'],
                job = Config.JobSettings.Job
            }, 
        },
        distance = v.distance
    })
end
--<!>-- EPOS START --<!>--

--<!>-- VEHICLE RENTAL START --<!>--
CreateThread(function()
	for k ,v in pairs(Config.Garage.Ped) do
		RequestModel(GetHashKey(v.model))
		while not HasModelLoaded(GetHashKey(v.model)) do
			Wait(1)
		end
		garageped = CreatePed(4, v.hash,v.x,v.y,v.z-1, 3374176, false, true)
		SetEntityHeading(garageped, v.h)
		FreezeEntityPosition(garageped, true)
		SetEntityInvincible(garageped, true)
		SetBlockingOfNonTemporaryEvents(garageped, true)
		TaskStartScenarioInPlace(garageped, v.scenario, 0, true)
		-- qb-target ped export
		exports[TargetName]:AddTargetModel(v.model, {options = {{event = 'boii-uwucafe:cl:AccessGarage',icon = Language.Targeting['garageicon'],label = Language.Targeting['garagelabel'],job = Config.JobSettings.Job}}, distance = 8.0})
	end
end)
RegisterNetEvent('boii-uwucafe:cl:RentVehicle', function()
	Core.Functions.TriggerCallback('boii-uwucafe:sv:MoneyCheck', function(price)
		if price then
            Core.Functions.SpawnVehicle(Config.Garage.Vehicle, function(van)
                SetVehicleNumberPlateText(van, 'UWU')
                exports[FuelScript]:SetFuel(van, 100.0)
                SetEntityHeading(van, Config.Garage.Heading)
                TaskWarpPedIntoVehicle(PlayerPedId(), van, -1)
                TriggerEvent('vehiclekeys:client:SetOwner', Core.Functions.GetPlate(van))
                SetVehicleEngineOn(van, true, true)
            end, Config.Garage.Spawn, true)  
		end
	end)
end)
RegisterNetEvent('boii-uwucafe:cl:ReturnVehicle', function()
	local player = PlayerPedId()
	if IsPedInAnyVehicle(player) then
        local van = GetVehiclePedIsIn(player,true) 
        Core.Functions.DeleteVehicle(van)
        SetEntityCoords(player, Config.Garage.Spawn.x, Config.Garage.Spawn.y, Config.Garage.Spawn.z, 0, 0, 0, false) 
        SetEntityHeading(player, Config.Garage.Heading)
        TriggerServerEvent('boii-uwucafe:sv:ReturnDeposit')
	end
end)
--<!>-- VEHICLE RENTAL END --<!>--

CreateThread(function()
	for k ,v in pairs(Config.Cats.Peds) do
		RequestModel(GetHashKey(v.model))
		while not HasModelLoaded(GetHashKey(v.model)) do
			Wait(1)
		end
        if v.sleeping == true then
            cats = CreatePed(28, v.hash,v.x,v.y,v.z-1, 3374176, false, true)
            SetEntityHeading(cats, v.h)
            RequestAnimDict('creatures@cat@amb@world_cat_sleeping_ground@idle_a')
            while not HasAnimDictLoaded('creatures@cat@amb@world_cat_sleeping_ground@idle_a') do
                Wait(50)
            end
            TaskPlayAnim(cats, 'creatures@cat@amb@world_cat_sleeping_ground@idle_a', 'idle_a' ,8.0, -8, -1, 1, 0, false, false, false)
            SetEntityInvincible(cats, true)
            SetBlockingOfNonTemporaryEvents(cats, true)
        else
            cats = CreatePed(28, v.hash,v.x,v.y,v.z-1, 3374176, false, true)
            SetEntityHeading(cats, v.h)
            SetEntityInvincible(cats, true)
            TaskWanderStandard(cats, 0, 0)
            SetBlockingOfNonTemporaryEvents(cats, true)
        end
		-- qb-target ped export
		exports[TargetName]:AddTargetModel(v.model, {options = {{event = 'boii-uwucafe:cl:PetCat',icon = Language.Targeting['caticon'],label = Language.Targeting['catlabel']}}, distance = 2.0})
	end
end)


