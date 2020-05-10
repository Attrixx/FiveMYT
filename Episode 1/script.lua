RegisterCommand("armour", function(source, args)
    local input = args[1]
    SetPedArmour(
        GetPlayerPed(-1), --Ped 
        tonumber(input) --Int / Armor to give Min: 0, Max: 100
    )
    sendMsg("Set your armor to: " .. input)
end)

RegisterCommand("health", function(source, args)
    local input = args[1]
    SetEntityHealth(
            GetPlayerPed(-1), --Entity 
            tonumber(input) -- Int / Health to give Min: 100, Max: 150
        )
    sendMsg("Set your health to: " .. input)
end)

RegisterCommand("die", function(source, args)
    SetEntityHealth(
        GetPlayerPed(-1), -- Entity
        0 -- Sets health to 0
    )
    sendMsgRed("You should probably call a suicidal hotline mate.")
end)

function sendMsg(msg)
    TriggerEvent("chatMessage", "", {0,255,0}, msg)
end

function sendMsgRed(msg)
    TriggerEvent("chatMessage", "", {255,0,0}, msg)
end