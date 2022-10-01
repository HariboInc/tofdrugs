ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
------------------------------------------------------------------

RegisterServerEvent('tofdrugs:nbcops')
AddEventHandler('tofdrugs:nbcops', function(timer, drug, act)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xPlayers = ESX.GetPlayers()
	local copsOnline = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			copsOnline = copsOnline + 1
		end
	end
    if act == 'harvest' then
        if copsOnline >= dgsmincopshv then
            TriggerClientEvent('tofdrugs:cops', xPlayer.source)
            Citizen.Wait(400)
            TriggerClientEvent('tofdrugs:dispatch_c', xPlayer.source, timer, drug, act)
        else
            TriggerClientEvent('tofdrugs:msgnbcops', xPlayer.source)
        end
    end
    if act == 'craft' then
        if copsOnline >= dgsmincopsc then
            TriggerClientEvent('tofdrugs:cops', xPlayer.source)
            Citizen.Wait(400)
            TriggerClientEvent('tofdrugs:dispatch_c', xPlayer.source, timer, drug, act)
        else
            TriggerClientEvent('tofdrugs:msgnbcops', xPlayer.source)
        end
    end
    if act == 'sellnarcos' then
        if copsOnline >= dgsmincopss then
            TriggerClientEvent('tofdrugs:cops', xPlayer.source)
            Citizen.Wait(400)
            TriggerClientEvent('tofdrugs:dispatch_c', xPlayer.source, timer, drug, act)
        else
            TriggerClientEvent('tofdrugs:msgnbcops', xPlayer.source)
        end
    end
end)

RegisterServerEvent('tofdrugs:nbcopsNPC')
AddEventHandler('tofdrugs:nbcopsNPC', function(timer, drug, act, entity)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xPlayers = ESX.GetPlayers()
	local copsOnline = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			copsOnline = copsOnline + 1
		end
	end
    if act == 'sellnpc' then
        if copsOnline >= dgsmincopssnpc then
            TriggerClientEvent('tofdrugs:cops', xPlayer.source)
            Citizen.Wait(400)
            TriggerClientEvent('tofdrugs:sellnpc_c', xPlayer.source, timer, drug, act, entity)
        else
            TriggerClientEvent('tofdrugs:msgnbcops', xPlayer.source)
        end
    end
end)

RegisterServerEvent('tofdrugs:dispatch_s')
AddEventHandler('tofdrugs:dispatch_s', function(timer, drug, act)
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = drug
    if xPlayer then
        print('dispatch server')
        dispatch(xPlayer, item, act, timer)
    end
end)

RegisterServerEvent('tofdrugs:sellnpc_s')
AddEventHandler('tofdrugs:sellnpc_s', function(timer, drug, act, entity)
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = drug
    if xPlayer then
        print('dispatch server npc')
        SellNpc(xPlayer, item, act, timer, entity)
    end
end)

RegisterServerEvent('tofdrugs:alertlspd_s')
AddEventHandler('tofdrugs:alertlspd_s', function(coordP)
    local xPlayers = ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			TriggerClientEvent('tofdrugs:blip', xPlayer.source, coordP, source)
            TriggerClientEvent('tofdrugs:msglspd', xPlayer.source)
		end
	end
end)