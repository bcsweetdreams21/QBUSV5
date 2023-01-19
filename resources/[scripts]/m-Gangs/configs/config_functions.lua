local QBCore = exports[Config.Core.Name]:GetCoreObject()

function Notify(msg, type)
    if type == "primary" then 
        QBCore.Functions.Notify(msg, "primary")
    end
    if type == "success" then
        QBCore.Functions.Notify(msg, "success")
    end
    if type == "error" then
        QBCore.Functions.Notify(msg, "error")
    end
end

function progressBar(msg, time)
    QBCore.Functions.Progressbar("progressBar", msg, time, false, false, {disableMovement = true,disableCarMovement = true,disableMouse = false,
    disableCombat = true}, {}, {}, {}, function() end)
end