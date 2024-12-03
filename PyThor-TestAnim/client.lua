local function playAnimation(dict, name, flag, duration)
    if not dict or dict == '' or not name or name == '' then return end
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(0)
    end
    TaskPlayAnim(PlayerPedId(), dict, name, 8.0, -8.0, duration or -1, flag or 1, 0, false, false, false)
end

RegisterCommand(Config.Command.startAnim, function(_, args)
    local dict = args[1]
    local name = args[2]
    if not dict or not name then
        print("Usage: /" .. Config.Command.startAnim .. " [dict] [name]")
        return
    end
    playAnimation(dict, name, Config.Animation.flag, Config.Animation.duration)
end, false)

RegisterCommand(Config.Command.stopanim, function()
    ClearPedTasks(PlayerPedId())
end, false)
