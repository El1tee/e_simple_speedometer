Citizen.CreateThread( function()
    while true do 
        Citizen.Wait(5)
        local ped = GetPlayerPed(-1)
        if(IsPedInAnyVehicle(ped)) then
	        local vehicle = GetVehiclePedIsIn(ped, false)
            if GetPedInVehicleSeat(vehicle, -1) == ped then
                Draw2DText(0.68, 0.98, 0.4,0.4, "" .. math.floor(GetEntitySpeed(GetPlayerPed(-1)) * 3.6) .. " km/h", 255, 255, 255, 255)
                Draw2DText(0.56, 0.98, 0.4,0.4, "Gas: " .. tostring(math.ceil(GetVehicleFuelLevel(vehicle))) .. "%", 255, 255, 255, 255)
            end
        else
            Wait(1000)
        end
    end
end)

function Draw2DText(x,y ,width,height,text,r,g,b,a)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(0.3, 0.6)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/10 + 0.005)
end
