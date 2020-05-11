    RegisterCommand("vehicle", function(source, args)
        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(),0.0,8.0,0.5))
        local veh = args[1]
        if veh == nil then veh = "faggio" end
        local vehicleHash = GetHashKey(veh)
        RequestModel(vehicleHash)

        Citizen.CreateThread(function()
            local waiting = 0
            while not HasModelLoaded(vehicleHash) do
                waiting = waiting + 100
                Citizen.Wait(100)
                if waiting > 5000 then
                    break
                end
            end
            CreateVehicle(vehicleHash, x, y, z, GetEntityHeading(PlayerPedId()) + 90 , 1, 0)
        end)
    end)