---------------- labo cocaine -----------------------------
Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(500)
        local coords = GetEntityCoords(PlayerPedId())
        local zone   = vector3(1207.47, -3122.56, 4.54)
        local zone2   = vector3(1088.68, -3187.56, -39.99)
	    local distance = #(coords - zone)
        local distance2 = #(coords - zone2)
      
        if distance < 1.5 then
            SetEntityCoords(PlayerPedId(), 1088.69, -3191.37, -39.99, true)
        end
        if distance2 < 1.5 then
            SetEntityCoords(PlayerPedId(), 1203.04, -3119.71, 4.54, true)
        end
        if distance > 10 or distance2 > 10 then
            Citizen.Wait(2000)
        end
    end
end)
----------------------------------------------------------        
---------------- labo meth--------------------------------
Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(500)
        local coords = GetEntityCoords(PlayerPedId())
        local zone   = vector3(723.38, -697.98, 27.54)
        local zone2   = vector3(996.92, -3200.56, -37.39)
	    local distance = #(coords - zone)
        local distance2 = #(coords - zone2)
      
        if distance < 1.5 then
            SetEntityCoords(PlayerPedId(), 998.64, -3195.60, -38.39, true)
        end
        if distance2 < 1.5 then
            SetEntityCoords(PlayerPedId(), 723.41, -706.36, 25.73, true)
        end
        if distance > 10 or distance2 > 10 then
            Citizen.Wait(2000)
        end
    end
end)
----------------------------------------------------------
----------------------------------------------------------