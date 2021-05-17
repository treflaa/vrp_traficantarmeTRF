-------------------------------------------
------ Traficant de Arme | treflaa --------
--------- Discord : treflaa#2272 ----------
-------------------------------------------

vRPCtrf = {}
Tunnel.bindInterface("vrp_traficantarmeTRF",vRPCtrf)
Proxy.addInterface("vrp_traficantarmeTRF",vRPCtrf)
vRPStrf = Tunnel.getInterface("vrp_traficantarmeTRF","vrp_traficantarmeTRF")
vRP = Proxy.getInterface("vRP")


meniu = false

local coordsarme = {1688.0035400391,3285.6455078125,41.146541595459}
local componente = {1648.8048095703,3276.728515625,39.855491638184}

Citizen.CreateThread(function()

    local glock = CreateRuntimeTxd("Glock")
    local ak = CreateRuntimeTxd("AK-47")
    local sniper = CreateRuntimeTxd("Sniper")
    CreateRuntimeTextureFromImage(glock, "Glock", "icons/Glock.png")
    CreateRuntimeTextureFromImage(ak, "AK-47", "icons/AK-47.png")
    CreateRuntimeTextureFromImage(sniper, "Sniper", "icons/Sniper.png")
    
  end)


Citizen.CreateThread(function ()   
	local dealer = -459818001
	RequestModel(dealer)
	while not HasModelLoaded(dealer) do
		Citizen.Wait(1)
		RequestModel(dealer)
	end 
    local dealerped =  CreatePed(4, dealer, 1750.8719482422,-1584.5135498047,111.60640716553, 0, false, true)
    SetEntityHeading(dealerped, -320.404)
    FreezeEntityPosition(dealerped, true)
    SetEntityInvincible(dealerped, true)
    SetBlockingOfNonTemporaryEvents(dealerped, true)
end)


Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(1)
				if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 1750.8719482422,-1584.5135498047,112.60640716553, true ) < 1 then
				DrawSpecialText("Apasa [~y~E~s~] pentru a te angaja ca Traficant de Arme")
				if(IsControlJustPressed(1, 38)) then
				    vRPStrf.iagrupul()
			end
		end
	end
end)


Citizen.CreateThread(function()
    while true do
        Wait(1)
        local ped = PlayerPedId(-1)
        local pedc = GetEntityCoords(ped)
        if(Vdist(GetEntityCoords(GetPlayerPed(-1)),coordsarme[1],coordsarme[2],coordsarme[3]) <= 3.0) then
            DrawSpecialText("~w~Apasa ~y~[E] ~w~pentru a deschide ~y~meniul~w~!")
            DrawMarker(20, coordsarme[1],coordsarme[2],coordsarme[3], 0, 0, 0, 0, 0, 0, 0.4501,0.4501,0.4501, 255,255,255, 200, 0, 0, 0, 1, 0, 0, 0)
            if(Vdist(GetEntityCoords(GetPlayerPed(-1)),coordsarme[1],coordsarme[2],coordsarme[3]) <= 1.0) then
                if IsControlJustPressed(0, 38) then
                    meniu = true
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        local ped = PlayerPedId(-1)
        local pedc = GetEntityCoords(ped)
        if(Vdist(GetEntityCoords(GetPlayerPed(-1)),componente[1],componente[2],componente[3]) <= 7.0) then
            DrawSpecialText("~w~Apasa ~y~[E] ~w~pentru a incepe sa cauti ~y~componente~w~!")
            DrawMarker(20, componente[1],componente[2],componente[3], 0, 0, 0, 0, 0, 0, 0.4501,0.4501,0.4501, 255,255,255, 200, 0, 0, 0, 1, 0, 0, 0)
            if(Vdist(GetEntityCoords(GetPlayerPed(-1)),componente[1],componente[2],componente[3]) <= 1.0) then
                if IsControlJustPressed(0, 38) then
                    vRPCtrf.adunacomponentele()
                end
            end
        end
    end
end)

function vRPCtrf.iaglock()
    local ped = GetPlayerPed(-1)
    vRPCtrf.faceanimatia()
    vRPStrf.iaglockul()
    ClearPedTasks(ped)
end

function vRPCtrf.iaak()
    local ped = GetPlayerPed(-1)
    vRPCtrf.faceanimatia()
    vRPStrf.iaakul()
    ClearPedTasks(ped)
end

function vRPCtrf.iasniper()
    local ped = GetPlayerPed(-1)
    vRPCtrf.faceanimatia()
    vRPStrf.iasniperul()
    ClearPedTasks(ped)
end

function vRPCtrf.adunacomponentele()
    local ped = GetPlayerPed(-1)
    vRPCtrf.faceanimatia2()
    vRPStrf.gasestecomponentele()
    ClearPedTasks(ped)
end


function vRPCtrf.faceanimatia()
    local ped = GetPlayerPed(-1)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_HAMMERING", 0, true)
    vRP.notify({"1/10"})
    Wait(2000) 
    vRP.notify({"2/10"})
    vRP.notify({"Sa vedem ce gasim pe aici"})
    Wait(2000) 
    vRP.notify({"3/10"})
    Wait(2000) 
    vRP.notify({"4/10"})
    Wait(2000) 
    vRP.notify({"5/10"})
    Wait(2000) 
    vRP.notify({"6/10"})
    Wait(2000) 
    vRP.notify({"7/10"})
    Wait(2000) 
    vRP.notify({"8/10"})
    vRP.notify({"Inca putin"})
    Wait(2000) 
    vRP.notify({"9/10"})
    Wait(2000) 
    vRP.notify({"10/10"})
end

function vRPCtrf.faceanimatia2()
    local ped = GetPlayerPed(-1)
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true)
    vRP.notify({"1/10"})
    Wait(3000) 
    vRP.notify({"2/10"})
    Wait(3000) 
    vRP.notify({"3/10"})
    vRP.notify({"Hai ca trebuie sa iasa ceva"})
    Wait(3000) 
    vRP.notify({"4/10"})
    Wait(3000) 
    vRP.notify({"5/10"})
    Wait(3000) 
    vRP.notify({"6/10"})
    Wait(3000) 
    vRP.notify({"7/10"})
    vRP.notify({"Auch"})
    Wait(3000) 
    vRP.notify({"8/10"})
    Wait(3000) 
    vRP.notify({"9/10"})
    Wait(3000) 
    vRP.notify({"10/10"})
end


RegisterNetEvent("meniu")
AddEventHandler("meniu", function()
    meniu = not meniu
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        if meniu then
            ShowCursorThisFrame()
            DisableControlAction(0, 24, true)
            DisableControlAction(0, 47, true)
            DisableControlAction(0, 58, true)
            DisableControlAction(0, 263, true)
            DisableControlAction(0, 264, true)
            DisableControlAction(0, 257, true)
            DisableControlAction(0, 140, true)
            DisableControlAction(0, 141, true)
            DisableControlAction(0, 142, true)
            DisableControlAction(0, 143, true)
            DisableControlAction(0, 1, true)
            DisableControlAction(0, 2, true)
            DrawRect(0.500, 0.500, 0.700, 0.500, 0, 0, 0, 120)
            drawtxt("ALEGE O ARMA", 1, 1, 0.500, 0.195, 0.70, 240, 200, 80, 255)
            DrawRect(0.500, 0.210, 0.150, 0.050, 0, 0, 0, 120)
            DrawSprite("Glock", "Glock", 0.700, 0.420, 0.100, 0.200, 0, 255, 255, 255, 255)
            DrawSprite("AK-47", "AK-47", 0.500, 0.420, 0.100, 0.200, 0, 255, 255, 255, 255)
            DrawSprite("Sniper", "Sniper", 0.300, 0.420, 0.100, 0.200, 0, 255, 255, 255, 255)
            drawtxt("~y~[ ~w~INCHIDE MENIUL ~y~]", 1, 1, 0.800, 0.200, 0.70, 255, 0, 0, 255)
            drawtxt("GLOCK-17", 1, 1, 0.700, 0.550, 0.70, 240, 200, 80, 255)
            DrawRect(0.700, 0.450, 0.150, 0.300, 0, 0, 0, 120)
            drawtxt("AK-47", 1, 1, 0.500, 0.550, 0.70, 240, 200, 80, 255)
            DrawRect(0.500, 0.450, 0.150, 0.300, 0, 0, 0, 120)
            drawtxt("SNIPER", 1, 1, 0.300, 0.550, 0.70, 240, 200, 80, 255)
            DrawRect(0.300, 0.450, 0.150, 0.300, 0, 0, 0, 120)
            if isCursorInPosition(0.800, 0.200, 0.05, 0.05) and IsControlJustPressed(0, 18) then
                meniu = false
            end
            if isCursorInPosition(0.300, 0.400, 0.10, 0.10) and IsControlJustPressed(0, 18) then
                vRPCtrf.iasniper()
            end
            if isCursorInPosition(0.500, 0.400, 0.10, 0.10) and IsControlJustPressed(0, 18) then
                vRPCtrf.iaak()
            end
            if isCursorInPosition(0.700, 0.400, 0.10, 0.10) and IsControlJustPressed(0, 18) then
                vRPCtrf.iaglock()
            end
        end
    end
end)


function DrawSpecialText(m_text, showtime)
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

function drawtxt(text, font, centre, x, y, scale, r, g, b, a)
    y = y - 0.010
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextFont(4)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

function Draw3DText(x,y,z, text,scl) 

    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*scl
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
   
    if onScreen then
        SetTextScale(0.0*scale, 1.1*scale)
        SetTextFont(fontId)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString("~h~"..text)
        DrawText(_x,_y)
    end
end

function isCursorInPosition(x, y, width, height)
    local sx, sy = 1920, 1080
    local cx, cy = GetNuiCursorPosition()
    local cx, cy = (cx / sx), (cy / sy)

    local width = width / 2
    local height = height / 2

    if (cx >= (x - width) and cx <= (x + width)) and (cy >= (y - height) and cy <= (y + height)) then
        return true
    else
        return false
    end
end

local blips = {
	{title="Traficant de Arme", colour=2, id=150, x=1648.3480224609,y=3275.4389648438,z=39.866596221924}
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.6)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	    BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


