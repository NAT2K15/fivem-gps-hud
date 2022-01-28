local vehicle = false

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
     if(vehicle == true) then
        SendNUIMessage({type = "ui", display = true})
        RemoveBlip(GetNorthRadarBlip())
     else 
        SendNUIMessage({type = "ui", display = false})
     end
   end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        if IsPedInAnyVehicle(PlayerPedId(), true) and IsPauseMenuActive() then
            vehicle = false
        elseif  IsPedInAnyVehicle(PlayerPedId(), true) then
            vehicle = true
        else
            vehicle = false
        end
    end
end)