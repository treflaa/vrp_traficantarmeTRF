-------------------------------------------
------ Traficant de Arme | treflaa --------
--------- Discord : treflaa#0001 ----------
-------------------------------------------

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_traficantarmeTRF")

vRPStrf = {}
Tunnel.bindInterface("vrp_traficantarmeTRF",vRPStrf)
Proxy.addInterface("vrp_traficantarmeTRF",vRPStrf)
vRPCtrf = Tunnel.getInterface("vrp_traficantarmeTRF","vrp_traficantarmeTRF")

function vRPStrf.iagrupul()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local ore = vRP.getUserHoursPlayed({user_id})
	if vRP.hasGroup({user_id,'Traficant de Arme'}) then
		vRPclient.notify(player, {"~r~Deja esti Traficant de Arme"})
	else
		if ore >= 45 then
			if vRP.tryFullPayment({user_id,3000000}) then
			vRP.addUserGroup({user_id,'Traficant de Arme'})
			vRPclient.notify(player, {"~w~Bine ai venit in echipa!. ~y~Acum marsh la facut arme"})
			else
			vRPclient.notify(player, {"~r~Nu ai suficienti bani."})
			end
		else
			vRPclient.notify(player, {"~r~Nu ai 45 de ore jucate."})
		end
	end
end


function vRPStrf.iaglockul()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	if vRP.hasGroup({user_id,'Traficant de Arme'}) then
		if vRP.tryGetInventoryItem({user_id,"incarcator",1,true}) and vRP.tryGetInventoryItem({user_id,"teava",1,true}) and vRP.tryGetInventoryItem({user_id,"pat",1,true}) then
			vRP.giveInventoryItem({user_id, 'glock', 1, true})
			vRPclient.notify({player, "~y~[~w~KrownRP~y~]~w~\n~g~Ai craftat un Glock"})
		end
	else
		vRPclient.notify({player, "~y~[~w~KrownRP~y~]~w~\n~g~Nu esti traficant vere"})
	end
end

function vRPStrf.iaakul()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	if vRP.hasGroup({user_id,'Traficant de Arme'}) then
		if vRP.tryGetInventoryItem({user_id,"incarcator",1,true}) and vRP.tryGetInventoryItem({user_id,"teava",1,true}) and vRP.tryGetInventoryItem({user_id,"pat",1,true}) then
			vRP.giveInventoryItem({user_id, 'ak47', 1, true})
			vRPclient.notify({player, "~y~[~w~KrownRP~y~]~w~\n~g~Ai craftat un AK-47"})
		end
	else
		vRPclient.notify({player, "~y~[~w~KrownRP~y~]~w~\n~g~Nu esti traficant vere"})
	end
end

function vRPStrf.iasniperul()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	if vRP.hasGroup({user_id,'Traficant de Arme'}) then
		if vRP.tryGetInventoryItem({user_id,"incarcator",1,true}) and vRP.tryGetInventoryItem({user_id,"teava",1,true}) and vRP.tryGetInventoryItem({user_id,"pat",1,true}) then
			vRP.giveInventoryItem({user_id, 'sniper', 1, true})
			vRPclient.notify({player, "~y~[~w~KrownRP~y~]~w~\n~g~Ai craftat un Sniper"})
		end
	else
		vRPclient.notify({player, "~y~[~w~KrownRP~y~]~w~\n~g~Nu esti traficant vere"})
	end
end

function vRPStrf.gasestecomponentele()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasGroup({user_id,"Traficant de Arme"}) then
        vRP.giveInventoryItem({user_id, 'incarcator', math.random(0,2), true})
        vRP.giveInventoryItem({user_id, 'teava', math.random(0,2), true})
        vRP.giveInventoryItem({user_id, 'pat', math.random(0,2), true}) 
    else
		vRPclient.notify(source,{"~r~Nu esti Traficant de Arme!"})
	end
end


