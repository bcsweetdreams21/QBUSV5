function loadFramework(esxObj, qbObj)
    if Config.Framework == Frameworks.ESX or Config.Framework == Frameworks.ESX_LIMIT then
        Citizen.CreateThread(function()
            while esxObj == nil or esxObj == {} do
                TriggerEvent(Config.Events['esx:getSharedObject'], function(obj) esxObj = obj end)
                Citizen.Wait(0)
            end
        end)
    elseif Config.Framework == Frameworks.QBCORE then
        qbObj = exports[Config.Events['qb-core']]:GetCoreObject()
    else
        dbg.critical('Wrong option in frameworks!')
    end
end
