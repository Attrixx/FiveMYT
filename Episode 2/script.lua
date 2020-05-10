RegisterCommand("weapon", function(source,args)
    local weapon = GetHashKey("WEAPON_" .. args[1])
    GiveWeaponToPed(
        GetPlayerPed(-1), -- Player Ped 
        weapon, -- Weapon Hash 
        tonumber(args[2]), -- Ammo Amount 
        false, -- Is Hidden? (bool) 
        false -- Equip Now? (bool)
    )
end)

RegisterCommand("setammo", function(source,args)
    local weapon = GetHashKey("WEAPON_" .. args[1])
    SetPedAmmo(
        GetPlayerPed(-1), -- Player Ped 
        weapon, -- Weapon Hash 
        tonumber(args[2]) -- Ammo Amount
    )
end)

RegisterCommand("infammo", function(source,args)
    local weapon = GetHashKey("WEAPON_" .. args[1])
    SetPedInfiniteAmmo(
        GetPlayerPed(-1), 
        args[2], -- bool (true / false)
        weapon
    )
end)

function sendMsg(msg)
    TriggerEvent("chatMessage", "", {0,255,0}, msg)
end

function sendMsgRed(msg)
    TriggerEvent("chatMessage", "", {255,0,0}, msg)
end