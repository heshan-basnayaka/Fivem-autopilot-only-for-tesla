RegisterCommand("startap", function(source, args, raw)
    local src = source
    TriggerClientEvent("autopilot:start", src)
end)
