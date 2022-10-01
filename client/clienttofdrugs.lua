
local harvesting = false
local crafting = false
local trackingBlip = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

---------------------------------------- Markers Functions -----------------------------------------

RegisterNetEvent('tofdrugs:markershv')
AddEventHandler('tofdrugs:markershv', function(crdtp, crdh, pedON, pedT)
	while true do
		local coord = GetEntityCoords(PlayerPedId())
		local disth = #(coord - vector3(crdh.x, crdh.y, crdh.z))
		if disth > 100 then 
			Citizen.Wait(3000)
		elseif disth > 50 then
            Citizen.Wait(1000)            
        elseif disth > 20 then
			Citizen.Wait(300) 
		else
            if pedON then
                AddRelationshipGroup('drugs')
                RequestModel(GetHashKey(pedT))
                while not HasModelLoaded(GetHashKey(pedT)) do
                    RequestModel(GetHashKey(pedT))
                    Citizen.Wait(0)
                end
                peddgs = CreatePed(4, GetHashKey(pedT), crdh.x, crdh.y, crdh.z - 1.00, crdh.h, true, true)
                SetEntityInvincible(peddgs, true)
                FreezeEntityPosition(peddgs, true)
                SetPedFleeAttributes(peddgs, 0, false)
                SetPedRelationshipGroupHash(peddgs, GetHashKey('drugs'))
                SetRelationshipBetweenGroups(0, GetHashKey('drugs'), GetHashKey('PLAYER'))
                SetRelationshipBetweenGroups(0, GetHashKey('PLAYER'), GetHashKey('drugs'))
                Citizen.Wait(3600000)
            else
                DrawMarker(crdtp, crdh.x, crdh.y, crdh.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.18, 0.18, 0.18, 255, 0, 0, 200, true, true, 2, true, nil, nil, false)
                Citizen.Wait(10)
            end
        end
		Citizen.Wait(10)
	end
end)

RegisterNetEvent('tofdrugs:markerscft')
AddEventHandler('tofdrugs:markerscft', function(crdtpm, crdc, pedONc, pedTc)
	while true do
		local coord = GetEntityCoords(PlayerPedId())
		local distc = #(coord - vector3(crdc.x, crdc.y, crdc.z))
		if distc > 100 then 
			Citizen.Wait(3000)
		elseif distc > 50 then
            Citizen.Wait(1000)            
        elseif distc > 20 then
			Citizen.Wait(300) 
		else
            if pedONc then
                AddRelationshipGroup('drugs')
                RequestModel(GetHashKey(pedTc))
                while not HasModelLoaded(GetHashKey(pedTc)) do
                    RequestModel(GetHashKey(pedTc))
                    Citizen.Wait(0)
                end
                peddgsc = CreatePed(4, GetHashKey(pedTc), crdc.x, crdc.y, crdc.z - 1.00, crdc.h, true, true)
                SetEntityInvincible(peddgsc, true)
                FreezeEntityPosition(peddgsc, true)
                SetPedFleeAttributes(peddgsc, 0, false)
                SetPedRelationshipGroupHash(peddgsc, GetHashKey('drugs'))
                SetRelationshipBetweenGroups(0, GetHashKey('drugs'), GetHashKey('PLAYER'))
                SetRelationshipBetweenGroups(0, GetHashKey('PLAYER'), GetHashKey('drugs'))
                Citizen.Wait(3600000)
            else
                DrawMarker(crdtpm, crdc.x, crdc.y, crdc.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.18, 0.18, 0.18, 255, 0, 0, 200, true, true, 2, true, nil, nil, false)
                Citizen.Wait(10)
            end
        end
		Citizen.Wait(10)
	end
end)

RegisterNetEvent('tofdrugs:markerssellnarcos')
AddEventHandler('tofdrugs:markerssellnarcos', function(crdtps, crds, pedONs, pedTs)
	while true do
		local coord = GetEntityCoords(PlayerPedId())
		local dists = #(coord - vector3(crds.x, crds.y, crds.z))
		if dists > 100 then 
			Citizen.Wait(3000)
		elseif dists > 50 then
            Citizen.Wait(1000)            
        elseif dists > 20 then
			Citizen.Wait(300) 
		else
            if pedONs then
                AddRelationshipGroup('drugs')
                RequestModel(GetHashKey(pedTs))
                while not HasModelLoaded(GetHashKey(pedTs)) do
                    RequestModel(GetHashKey(pedTs))
                    Citizen.Wait(0)
                end
                peddgss = CreatePed(4, GetHashKey(pedTs), crds.x, crds.y, crds.z - 1.0, crds.h, true, true)
                SetEntityInvincible(peddgss, true)
                FreezeEntityPosition(peddgss, true)
                SetPedFleeAttributes(peddgss, 0, false)
                SetPedRelationshipGroupHash(peddgss, GetHashKey('drugs'))
                SetRelationshipBetweenGroups(0, GetHashKey('drugs'), GetHashKey('PLAYER'))
                SetRelationshipBetweenGroups(0, GetHashKey('PLAYER'), GetHashKey('drugs'))
                Citizen.Wait(3600000)
            else
                DrawMarker(crdtps, crds.x, crds.y, crds.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.18, 0.18, 0.18, 255, 0, 0, 200, true, true, 2, true, nil, nil, false)
                Citizen.Wait(10)
            end
        end
		Citizen.Wait(10)
	end
end)

---------------------------------------- Target Functions -----------------------------------------

RegisterNetEvent('tofdrugs:targetmenushv')
AddEventHandler('tofdrugs:targetmenushv', function()
	createtargetmenushv()
end)

RegisterNetEvent('tofdrugs:targetmenusc')
AddEventHandler('tofdrugs:targetmenusc', function()
	createtargetmenusc()
end)

RegisterNetEvent('tofdrugs:targetmenuss')
AddEventHandler('tofdrugs:targetmenuss', function()
	createtargetmenuss()
end)

RegisterNetEvent('tofdrugs:targetmenussnpc')
AddEventHandler('tofdrugs:targetmenussnpc', function()
	createtargetmenussnpc()
end)

--------------------------------------------- variables state ------------------------------------------------------

RegisterNetEvent('tofdrugs:cops')
AddEventHandler('tofdrugs:cops', function()
	statenbcops()
end)

RegisterNetEvent('tofdrugs:stateharvesting')
AddEventHandler('tofdrugs:stateharvesting', function()
	harvesting = not harvesting
	print(harvesting)
end)

RegisterNetEvent('tofdrugs:statecrafting')
AddEventHandler('tofdrugs:statecrafting', function()
	crafting = not crafting
	print(crafting)
end)

------------------------------------------ dispatch ----------------------------------------------

RegisterNetEvent('tofdrugs:dispatch_c')
AddEventHandler('tofdrugs:dispatch_c', function(timer, drug, act)
	print('dispatch client')
	if act == 'harvest' then 
		if dgsafkfarmdrugs then
			local timerext = timer + 5000
			while harvesting do
				print(harvesting)
				TriggerServerEvent('tofdrugs:dispatch_s', timer, drug, act)
				Citizen.Wait(timerext)
			end
		else
			TriggerServerEvent('tofdrugs:dispatch_s', timer, drug, act)
		end
	elseif act == 'craft' then
		if dgsafkfarmdrugs then
			local timerext = timer + 5000
			while crafting do
				print(crafting)
				TriggerServerEvent('tofdrugs:dispatch_s', timer, drug, act)
				Citizen.Wait(timerext)
			end
		else
			TriggerServerEvent('tofdrugs:dispatch_s', timer, drug, act)
		end
	else
		TriggerServerEvent('tofdrugs:dispatch_s', timer, drug, act)
	end
end)

RegisterNetEvent('tofdrugs:sellnpc_c')
AddEventHandler('tofdrugs:sellnpc_c', function(timer, drug, act, entity)
	print('dispatch npc client')
	if act == 'sellnpc' then 
		TriggerServerEvent('tofdrugs:sellnpc_s', timer, drug, act, entity)
	end
end)

------------------------------------------ anim ----------------------------------------------

RegisterNetEvent('tofdrugs:animharvest')
AddEventHandler('tofdrugs:animharvest', function(timer, item)
	if timer ~= nil then
		if item == 'weed' or item == 'opium' or item == 'cocaleaves' then
			TaskStartScenarioInPlace(PlayerPedId(), 'world_human_gardener_plant', 0, false)
			Citizen.Wait(timer)
			ClearPedTasksImmediately(PlayerPedId())
		else
			TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
			Citizen.Wait(timer)
			ClearPedTasksImmediately(PlayerPedId())
		end
	end
end)

RegisterNetEvent('tofdrugs:animcraft')
AddEventHandler('tofdrugs:animcraft', function(timer)
	if timer ~= nil then
		TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_PARKING_METER", 0, false)
		Citizen.Wait(timer)
		ClearPedTasksImmediately(PlayerPedId())
	end
end)

RegisterNetEvent('tofdrugs:animsell')
AddEventHandler('tofdrugs:animsell', function(timer)
	loaddict('mp_common')
	local count = round(timer / 1800)
	for n = 1,count,1 do
		playerAnim(PlayerPedId(), 'mp_common', 'givetake1_a')
		Citizen.Wait(1800)
	end
	ClearPedTasksImmediately(PlayerPedId())
end)

RegisterNetEvent('tofdrugs:animsellnpc')
AddEventHandler('tofdrugs:animsellnpc', function(timer, entity)
	loaddict('mp_common')
	local count = round(timer / 1800)
	FreezeEntityPosition(PlayerPedId(), true)
	ClearPedTasksImmediately(entity)
	TaskSetBlockingOfNonTemporaryEvents(entity, true)						
	TaskTurnPedToFaceEntity(entity, PlayerPedId(), -1)
	Citizen.Wait(500)
	for n = 1,count,1 do
		playerAnim(PlayerPedId(), 'mp_common', 'givetake1_a')
		Citizen.Wait(1800)
	end
	playerAnim(entity, 'mp_common', 'givetake1_a')
	Citizen.Wait(1800)
	ClearPedTasksImmediately(PlayerPedId())
	ClearPedTasksImmediately(entity)
	FreezeEntityPosition(PlayerPedId(), false)
	RemovePedElegantly(entity)
end)

RegisterNetEvent('tofdrugs:timeranim')
AddEventHandler('tofdrugs:timeranim', function(timer)
	------------------**notification**----------------------
    lib.progressCircle({
        duration = timer,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
    })
    ------------------**fin notification**-----------------
end)

------------------------------------------ alert lspd ----------------------------------------------

RegisterNetEvent('tofdrugs:alertlspd_c')
AddEventHandler('tofdrugs:alertlspd_c', function()
	local coordP = GetEntityCoords(PlayerPedId())
	TriggerServerEvent('tofdrugs:alertlspd_s', coordP)
end)

RegisterNetEvent('tofdrugs:blip')
AddEventHandler('tofdrugs:blip', function(coordP, id)
	if trackingBlip[id] then
		SetBlipCoords(trackingBlip[id], coordP.x, coordP.y, coordP.z)
	else
		trackingBlip[id] = AddBlipForCoord(coordP.x, coordP.y, coordP.z)
		SetBlipSprite(trackingBlip[id], 51)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("drugstracking")
		EndTextCommandSetBlipName(trackingBlip[id])
	end
	Citizen.Wait(dgsdelaycopsblip)
	RemoveBlip(trackingBlip[id])
end)

-------------------------------------------------------------------
AddEventHandler('esx:onPlayerSpawn', function()
    if ESX.PlayerData.job.name ~= 'police' then
		initdrugs()
	end
end)

local function dgs()
	if ESX.PlayerData.job.name ~= 'police' then
		initdrugs()
	end
end

RegisterCommand('dgs', function(source, args, rawcommand)
	dgs()
end)
