NextAction = 0
cops = 'ko'
local canCarry = false
local harvesting = true
local soldped = {}

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------- client side functions ------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------
------------------------- qtarget menus ---------------------------
-------------------------------------------------------------------

function SetNextAction(timer)
    NextAction = GetGameTimer() + timer 
end

-------------------------------------------------------------------
------------------------------- markers ---------------------------
-------------------------------------------------------------------
function initdrugs()
    local soldped = {}
    TriggerEvent('tofdrugs:targetmenushv')
    TriggerEvent('tofdrugs:targetmenusc')
    TriggerEvent('tofdrugs:targetmenuss')
    TriggerEvent('tofdrugs:targetmenussnpc')
    markersharvestdraw()
    markerscraftdraw()
    markersselldraw()
end

----------------------------- ** markers harverst ** ------------------------------------------------
function markersharvestdraw()
    for a = 1,#drugsharvest, 1 do
        local crdtp = drugsharvest[a].markerid 
        local crdh = drugsharvest[a].coordharvest
        local pedON = drugsharvest[a].ped
        local pedT = drugsharvest[a].typeped
        TriggerEvent('tofdrugs:markershv', crdtp, crdh, pedON, pedT)
    end
end

----------------------------- ** markers craft ** ------------------------------------------------
function markerscraftdraw()
    for b = 1,#drugscraft, 1 do
        local crdtpm = drugscraft[b].markerid 
        local crdc = drugscraft[b].coordcraft
        local pedONc = drugscraft[b].ped
        local pedTc = drugscraft[b].typeped
        TriggerEvent('tofdrugs:markerscft', crdtpm, crdc, pedONc, pedTc)
    end
end

----------------------------- ** markers sell ** ------------------------------------------------
function markersselldraw()
    for c = 1,#drugssellnarcos, 1 do
        local crdtps = drugssellnarcos[c].markerid 
        local crds = drugssellnarcos[c].coordsell
        local pedONs = drugssellnarcos[c].ped
        local pedTs = drugssellnarcos[c].typeped
        TriggerEvent('tofdrugs:markerssellnarcos', crdtps, crds, pedONs, pedTs)
    end
end

-------------------------------------------------------------------
------------------------- qtarget menus ---------------------------
-------------------------------------------------------------------

------------------- ** qtarget menu harvest ** --------------------
function createtargetmenushv()
    for d = 1,#drugsharvest,1 do
        local itemhv = drugsharvest[d].item
        local itemlblhv = drugsharvest[d].itemlabel
        local coordhv = drugsharvest[d].coordharvest
        local menuhv = tostring(menu1..' '..itemlblhv)
        local namehv = tostring('zone'..itemlblhv)
        local headinghv = drugsharvest[d].coordharvest.h
        local minzhv = (drugsharvest[d].coordharvest.z - 2.0)
        local maxzhv = (drugsharvest[d].coordharvest.z + 4.0)
        local timer = drugsharvest[d].timeharvest
        exports.qtarget:AddBoxZone(namehv, vector3(coordhv.x, coordhv.y, coordhv.z), 7.0, 7.0, {
            name=namehv,
            heading=headinghv,
            debugPoly=false,
            minZ= minzhv,
            maxZ= maxzhv,
            }, {
                options = {
                    {
                        icon = "fas fa-sign-in-alt",
                        label = menuhv,
                        action = function(entity)
                            local act = 'harvest'
                            if dgsafkfarmdrugs then
                                if cops == 'ok' then
                                    TriggerEvent('tofdrugs:stateharvesting')
                                    if GetGameTimer() > NextAction then
                                        TriggerEvent('tofdrugs:dispatch_c', timer, itemhv, act)
                                        SetNextAction(timer)
                                    else
                                        TriggerEvent('tofdrugs:msgspam')
                                    end
                                else
                                    TriggerEvent('tofdrugs:stateharvesting')
                                    if GetGameTimer() > NextAction then
                                        TriggerServerEvent('tofdrugs:nbcops', timer, itemhv, act)
                                        SetNextAction(timer)
                                    else
                                        TriggerEvent('tofdrugs:msgspam')
                                    end
                                end
                            else
                                if GetGameTimer() > NextAction then
                                    if cops == 'ok' then
                                        TriggerEvent('tofdrugs:dispatch_c', timer, itemhv, act)
                                        SetNextAction(timer)
                                    else
                                        TriggerServerEvent('tofdrugs:nbcops', timer, itemhv, act)
                                        SetNextAction(timer)
                                    end
                                else
                                    TriggerEvent('tofdrugs:msgspam')
                                end
                            end
                        end,
                    },
                },
                distance = 3.5
        })
    end
end
------------------- ** qtarget menu craft ** --------------------
function createtargetmenusc()
    for d = 1,#drugscraft,1 do
        local itemc = drugscraft[d].itemfinal
        local itemlblc = drugscraft[d].itemfinallabel
        local coordc = drugscraft[d].coordcraft
        local menuc = tostring(menu2..' '..itemlblc)
        local namec = tostring('zone'..itemlblc)
        local headingc = math.random(1,359)
        local minzc = (drugscraft[d].coordcraft.z - 2.0)
        local maxzc = (drugscraft[d].coordcraft.z + 4.0)
        local timer = drugscraft[d].timecraft
        exports.qtarget:AddBoxZone(namec, vector3(coordc.x, coordc.y, coordc.z), 7.0, 7.0, {
            name=namec,
            heading=headingc,
            debugPoly=false,
            minZ= minzc,
            maxZ= maxzc,
            }, {
                options = {
                    {
                        icon = "fas fa-sign-in-alt",
                        label = menuc,
                        action = function(entity)
                            local act = 'craft'
                            if dgsafkcraftdrugs then
                                if cops == 'ok' then
                                    TriggerEvent('tofdrugs:statecrafting')
                                    if GetGameTimer() > NextAction then
                                        TriggerEvent('tofdrugs:dispatch_c', timer, itemc, act)
                                        SetNextAction(timer)
                                    else
                                        TriggerEvent('tofdrugs:msgspam')
                                    end
                                else
                                    TriggerEvent('tofdrugs:statecrafting')
                                    if GetGameTimer() > NextAction then
                                        TriggerServerEvent('tofdrugs:nbcops', timer, itemc, act)
                                        SetNextAction(timer)
                                    else
                                        TriggerEvent('tofdrugs:msgspam')
                                    end
                                end
                            else
                                if GetGameTimer() > NextAction then
                                    if cops == 'ok' then
                                        TriggerEvent('tofdrugs:dispatch_c', timer, itemc, act)
                                        SetNextAction(timer)
                                    else
                                        TriggerServerEvent('tofdrugs:nbcops', timer, itemc, act)
                                    end
                                else
                                    TriggerEvent('tofdrugs:msgspam')
                                end
                            end
                        end,
                    },
                },
                distance = 3.5
        })
    end
end
------------------- ** qtarget menu sell ** --------------------
function createtargetmenuss()
    for d = 1,#drugssellnarcos,1 do
        local items = drugssellnarcos[d].itemsell
        local itemlbls = drugssellnarcos[d].itemselllabel
        local coords = drugssellnarcos[d].coordsell
        local menus = tostring(menu3..' '..itemlbls)
        local names = tostring('zone'..items)
        local headings = drugssellnarcos[d].coordsell.h
        local minzs = (drugssellnarcos[d].coordsell.z - 1.0)
        local maxzs = (drugssellnarcos[d].coordsell.z + 2.0)
        local timer = drugssellnarcos[d].timetosell
        exports.qtarget:AddBoxZone(names, vector3(coords.x, coords.y, coords.z) ,2.0, 2.0, {
            name=names,
            heading=headings,
            debugPoly=false,
            minZ= minzs,
            maxZ= maxzs,
            }, {
                options = {
                    {
                        icon = "fas fa-sign-in-alt",
                        label = menus,
                        action = function(entity)
                            if GetGameTimer() > NextAction then
                                local act = 'sellnarcos'
                                if cops == 'ok' then
                                    TriggerEvent('tofdrugs:dispatch_c', timer, items, act)
                                    SetNextAction(timer)
                                else
                                    TriggerServerEvent('tofdrugs:nbcops', timer, items, act)
                                end
                            else
                                TriggerEvent('tofdrugs:msgspam')
                            end
                        end,
                    },
                },
                distance = 3.5
        })
    end
end
------------------- ** qtarget menu sell NPC ** --------------------
function createtargetmenussnpc()
    for e = 1,#drugssellNPC,1 do
        local items = drugssellNPC[e].itemsell
        local itemlbls = drugssellNPC[e].itemselllabel
        local labelnpc = menu4..' '..itemlbls
        local timer = drugssellNPC[e].timetosell
        exports.qtarget:Ped({
            options = {
                {
                    icon = "fas fa-box-circle-check",
                    label = labelnpc,
                    action = function(entity)
                        local pedDead = IsPedDeadOrDying(entity)
                        local pedType = GetPedType(entity)
                        local pedPlayer = IsPedAPlayer(entity)
                        if GetGameTimer() > NextAction then
                            local act = 'sellnpc'
                            local ped = NetworkGetNetworkIdFromEntity(entity)
                            print(ped)
                            pedtosell = true
                            verifsoldped(ped)
                            Citizen.Wait(300)
                            if pedtosell and not pedDead and pedType ~= 28 and not pedPlayer then
                                if cops == 'ok' then
                                    TriggerEvent('tofdrugs:sellnpc_c', timer, items, act, entity)
                                    SetNextAction(timer)
                                    table.insert(soldped, ped)
                                else
                                    TriggerServerEvent('tofdrugs:nbcopsNPC', timer, items, act, entity)
                                end
                            else
                                TriggerEvent('tofdrugs:msgsoldped')
                            end
                        else
                            TriggerEvent('tofdrugs:msgspam')
                        end
                    end,
                },
            },
            distance = 2
        })
    end
end
------------------- ** statenbcops ** --------------------
function statenbcops()
    cops = 'ok'
    print(cops)
    Citizen.Wait(600000)
    cops = 'ko'
end
------------------- ** soldped ** --------------------
function verifsoldped(ped)
    if soldped ~= {} then
        for k,v in ipairs(soldped) do
            local oldPed = v
            if oldPed == ped then 
                pedtosell = false
                print('déja vendu')
            end
        end
    end
end
------------------- ** loadanimdict ** --------------------
function loaddict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(10)
    end
end
------------------- ** playanim ** --------------------
function playerAnim(ped, animDictionary, animationName)
    if (DoesEntityExist(ped) and not IsEntityDead(ped)) then
        loaddict(animDictionary)
        TaskPlayAnim(ped, animDictionary, animationName, 1.0, -1.0, -1, 1, 1, true, true, true)
    end
end
------------------- ** round ** ----------------------
function round(n)
    return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
end
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------- server side functions ------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

------------------- ** dispatch_s ** --------------------
function dispatch(xPlayer, item, act, timer)
    local action = act
    local itemact = item
    -------------------- harvest action ------------------------
    if action == 'harvest' then
        if dgsinventory == 'oxinventory' then
            for z = 1,#drugsharvest,1 do
                if itemact == drugsharvest[z].item then
                    if exports.ox_inventory:CanCarryItem(xPlayer.source, itemact, drugsharvest[z].harvestqty) then  
                        TriggerClientEvent('tofdrugs:animharvest', xPlayer.source, timer, itemact)
                        TriggerClientEvent('tofdrugs:timeranim', xPlayer.source, timer)
                        Citizen.Wait(timer)
                        exports.ox_inventory:AddItem(xPlayer.source, itemact, drugsharvest[z].harvestqty)
                        TriggerClientEvent('tofdrugs:msgharvest', xPlayer.source, drugsharvest[z].itemlabel, drugsharvest[z].harvestqty)
                    else
                        TriggerClientEvent('tofdrugs:msgnospace', xPlayer.source)
                        TriggerClientEvent('tofdrugs:stateharvesting', xPlayer.source)
                    end
                end
            end
        end
        if dgsinventory == 'default' then
            for z = 1,#drugsharvest,1 do
                if itemact == drugsharvest[z].item then
                    if xPlayer.canCarryItem(itemact, drugsharvest[z].harvestqty) then
                        TriggerClientEvent('tofdrugs:animharvest', timer, itemact)
                        Citizen.Wait(timer)
                        xPlayer.addInventoryItem(itemact, drugsharvest[z].harvestqty)
                        TriggerClientEvent('tofdrugs:msgharvest', xPlayer.source, drugsharvest[z].itemlabel, drugsharvest[z].harvestqty)
                    else
                        TriggerClientEvent('tofdrugs:msgnospace', xPlayer.source)
                    end
                end
            end
        end
    end
    -------------------- craft action ------------------------
    if action == 'craft' then
        
        local qtyitem1 = true
        local qtyitem2 = true
        local qtyitem3 = true
        local qtyitem4 = true
        local qtyitem5 = true
        local qtyitem6 = true
        local item1remove = 'ko'
        local item2remove = 'ko'
        local item3remove = 'ko'
        local item4remove = 'ko'
        local item5remove = 'ko'
        local item6remove = 'ko'

        for x = 1,#drugscraftrecipes,1 do
            if dgsinventory == 'oxinventory' then
                if itemact == drugscraftrecipes[x].itemfinal then
                    if drugscraftrecipes[x].item1 ~= '' then
                        local item1C = exports.ox_inventory:Search(xPlayer.source, 'count', drugscraftrecipes[x].item1)
                        print(item1C)
                        if item1C and item1C >= drugscraftrecipes[x].qty1 then
                            item1remove = 'ok'
                        else 
                            qtyitem1 = false
                        end
                    end
                    if drugscraftrecipes[x].item2 ~= '' then
                        local item2C = exports.ox_inventory:Search(xPlayer.source, 'count', drugscraftrecipes[x].item2)
                        print(item2C)
                        if item2C and item2C >= drugscraftrecipes[x].qty2 then
                            item2remove = 'ok'
                        else 
                            qtyitem2 = false
                        end
                    end
                    if drugscraftrecipes[x].item3 ~= '' then
                        local item3C = exports.ox_inventory:Search(xPlayer.source, 'count', drugscraftrecipes[x].item3)
                        print(item3C)
                        if item3C and item3C >= drugscraftrecipes[x].qty3 then
                            item3remove = 'ok'
                        else 
                            qtyitem3 = false
                        end
                    end
                    if drugscraftrecipes[x].item4 ~= '' then
                        local item4C = exports.ox_inventory:Search(xPlayer.source, 'count', drugscraftrecipes[x].item4)
                        if item4C and item4C >= drugscraftrecipes[x].qty4 then
                            item4remove = 'ok'
                        else 
                            qtyitem4 = false
                        end
                    end
                    if drugscraftrecipes[x].item5 ~= '' then
                        local item5C = exports.ox_inventory:Search(xPlayer.source, 'count', drugscraftrecipes[x].item5)
                        if item5C and item5C >= drugscraftrecipes[x].qty5 then
                            item5remove = 'ok'
                        else 
                            qtyitem5 = false
                        end
                    end
                    if drugscraftrecipes[x].item6 ~= '' then
                        local item6C = exports.ox_inventory:Search(xPlayer.source, 'count', drugscraftrecipes[x].item6)
                        if item6C and item6C >= drugscraftrecipes[x].qty6 then
                            item6remove = 'ok'
                        else 
                            qtyitem6 = false
                        end
                    end
                    if qtyitem1 == true and qtyitem2 == true and qtyitem3 == true and qtyitem4 == true and qtyitem5 == true and qtyitem6 == true then
                        TriggerClientEvent('tofdrugs:animcraft', xPlayer.source, timer)
                        TriggerClientEvent('tofdrugs:timeranim', xPlayer.source, timer)
                        Citizen.Wait(timer)
                        if item1remove == 'ok' then
                            exports.ox_inventory:RemoveItem(xPlayer.source, drugscraftrecipes[x].item1, drugscraftrecipes[x].qty1)
                        end
                        if item2remove == 'ok' then
                            exports.ox_inventory:RemoveItem(xPlayer.source, drugscraftrecipes[x].item2, drugscraftrecipes[x].qty2)
                        end
                        if item3remove == 'ok' then
                            exports.ox_inventory:RemoveItem(xPlayer.source, drugscraftrecipes[x].item3, drugscraftrecipes[x].qty3)
                        end
                        if item4remove == 'ok' then
                            exports.ox_inventory:RemoveItem(xPlayer.source, drugscraftrecipes[x].item4, drugscraftrecipes[x].qty4)
                        end
                        if item5remove == 'ok' then
                            exports.ox_inventory:RemoveItem(xPlayer.source, drugscraftrecipes[x].item5, drugscraftrecipes[x].qty5)
                        end
                        if item6remove == 'ok' then
                            exports.ox_inventory:RemoveItem(xPlayer.source, drugscraftrecipes[x].item6, drugscraftrecipes[x].qty6)
                        end
                        exports.ox_inventory:AddItem(xPlayer.source, drugscraftrecipes[x].itemfinal, drugscraftrecipes[x].qtyfinal)
                        TriggerClientEvent('tofdrugs:msgcraft', xPlayer.source, drugscraftrecipes[x].itemfinallabel, drugscraftrecipes[x].qtyfinal)
                    else
                        TriggerClientEvent('tofdrugs:msgcraftnoitem', xPlayer.source)
                        TriggerClientEvent('tofdrugs:statecrafting', xPlayer.source)
                    end
                end
            end
            if dgsinventory == 'default' then
                if itemact == drugscraftrecipes[x].itemfinal then
                    if drugscraftrecipes[x].item1 ~= '' then
                        local item1C = xPlayer.getInventoryItem(drugscraftrecipes[x].item1).count
                        print(item1C)
                        if item1C and item1C >= drugscraftrecipes[x].qty1 then
                            item1remove = 'ok'
                        else 
                            qtyitem1 = false
                        end
                    end
                    if drugscraftrecipes[x].item2 ~= '' then
                        local item2C = xPlayer.getInventoryItem(drugscraftrecipes[x].item2).count
                        print(item2C)
                        if item2C and item2C >= drugscraftrecipes[x].qty2 then
                            item2remove = 'ok'
                        else 
                            qtyitem2 = false
                        end
                    end
                    if drugscraftrecipes[x].item3 ~= '' then
                        local item3C = xPlayer.getInventoryItem(drugscraftrecipes[x].item3).count
                        print(item3C)
                        if item3C and item3C >= drugscraftrecipes[x].qty3 then
                            item3remove = 'ok'
                        else 
                            qtyitem3 = false
                        end
                    end
                    if drugscraftrecipes[x].item4 ~= '' then
                        local item4C = xPlayer.getInventoryItem(drugscraftrecipes[x].item4).count
                        if item4C and item4C >= drugscraftrecipes[x].qty4 then
                            item4remove = 'ok'
                        else 
                            qtyitem4 = false
                        end
                    end
                    if drugscraftrecipes[x].item5 ~= '' then
                        local item5C = xPlayer.getInventoryItem(drugscraftrecipes[x].item5).count
                        if item5C and item5C >= drugscraftrecipes[x].qty5 then
                            item5remove = 'ok'
                        else 
                            qtyitem5 = false
                        end
                    end
                    if drugscraftrecipes[x].item6 ~= '' then
                        local item6C = xPlayer.getInventoryItem(drugscraftrecipes[x].item6).count
                        if item6C and item6C >= drugscraftrecipes[x].qty6 then
                            item6remove = 'ok'
                        else 
                            qtyitem6 = false
                        end
                    end
                    if qtyitem1 == true and qtyitem2 == true and qtyitem3 == true and qtyitem4 == true and qtyitem5 == true and qtyitem6 == true then
                        TriggerClientEvent('tofdrugs:animcraft', xPlayer.source, timer)
                        TriggerClientEvent('tofdrugs:timeranim', xPlayer.source, timer)
                        Citizen.Wait(timer)
                        if item1remove == 'ok' then
                            xPlayer.removeInventoryItem(xPlayer.source, drugscraftrecipes[x].item1, drugscraftrecipes[x].qty1)
                        end
                        if item2remove == 'ok' then
                            xPlayer.removeInventoryItem(xPlayer.source, drugscraftrecipes[x].item2, drugscraftrecipes[x].qty2)
                        end
                        if item3remove == 'ok' then
                            xPlayer.removeInventoryItem(xPlayer.source, drugscraftrecipes[x].item3, drugscraftrecipes[x].qty3)
                        end
                        if item4remove == 'ok' then
                            xPlayer.removeInventoryItem(xPlayer.source, drugscraftrecipes[x].item4, drugscraftrecipes[x].qty4)
                        end
                        if item5remove == 'ok' then
                            xPlayer.removeInventoryItem(xPlayer.source, drugscraftrecipes[x].item5, drugscraftrecipes[x].qty5)
                        end
                        if item6remove == 'ok' then
                            xPlayer.removeInventoryItem(xPlayer.source, drugscraftrecipes[x].item6, drugscraftrecipes[x].qty6)
                        end
                        xPlayer.addInventoryItem(xPlayer.source, drugscraftrecipes[x].itemfinal, drugscraftrecipes[x].qtyfinal)
                        TriggerClientEvent('tofdrugs:msgcraft', xPlayer.source, drugscraftrecipes[x].itemfinallabel, drugscraftrecipes[x].qtyfinal)
                    else
                        TriggerClientEvent('tofdrugs:msgcraftnoitem', xPlayer.source)
                        TriggerClientEvent('tofdrugs:statecrafting', xPlayer.source)
                    end
                end
            end
        end
    end
    -------------------- sell Narcos action ------------------------
    if action == 'sellnarcos' then
        if dgsinventory == 'oxinventory' then
            for y = 1,#drugssellnarcos,1 do
                if itemact == drugssellnarcos[y].itemsell then
                    local itemactC = exports.ox_inventory:Search(xPlayer.source, 'count', itemact)
                    local price = math.random(drugssellnarcos[y].pricemin, drugssellnarcos[y].pricemax)
                    if itemactC and itemactC > 0 then
                        if itemactC > drugssellnarcos[y].qtysell then
                            local pay = (drugssellnarcos[y].qtysell * price)
                            TriggerClientEvent('tofdrugs:animsell', xPlayer.source, timer)
                            TriggerClientEvent('tofdrugs:timeranim', xPlayer.source, timer)
                            Citizen.Wait(timer)
                            exports.ox_inventory:RemoveItem(xPlayer.source, itemact, drugssellnarcos[y].qtysell)
                            TriggerClientEvent('tofdrugs:msgsell', xPlayer.source, drugssellnarcos[y].itemlabel, drugssellnarcos[y].qtysell, pay)
                            xPlayer.addAccountMoney('black_money', pay)
                        else
                            local pay = (itemactC * price)
                            TriggerClientEvent('tofdrugs:animsell', xPlayer.source, timer)
                            TriggerClientEvent('tofdrugs:timeranim', xPlayer.source, timer)
                            Citizen.Wait(timer)
                            exports.ox_inventory:RemoveItem(xPlayer.source, itemact, itemactC)
                            TriggerClientEvent('tofdrugs:msgsell', xPlayer.source, drugssellnarcos[y].itemlabel, itemactC, pay)
                            xPlayer.addAccountMoney('black_money', pay)
                        end
                    else
                        TriggerClientEvent('tofdrugs:msgnoitem', xPlayer.source)
                    end
                end
            end
        end
        if dgsinventory == 'default' then
            for y = 1,#drugssellnarcos,1 do
                if itemact == drugssellnarcos[y].itemsell then
                    local itemactC = xPlayer.getInventoryItem(itemact).count
                    local price = math.random(drugssellnarcos[y].pricemin, drugssellnarcos[y].pricemax)
                    local Bmoney = itemactC * price
                    if itemactC and itemactC > 0 then
                        if itemactC > drugssellnarcos[y].qtysell then
                            local pay = (drugssellnarcos[y].qtysell * price)
                            TriggerClientEvent('tofdrugs:animsell', xPlayer.source, timer)
                            TriggerClientEvent('tofdrugs:timeranim', xPlayer.source, timer)
                            Citizen.Wait(timer)
                            xPlayer.removeInventoryItem(itemact, drugssellnarcos[y].qtysell)
                            TriggerClientEvent('tofdrugs:msgsellqty', xPlayer.source, drugssellnarcos[y].itemlabel, drugssellnarcos[y].qtysell, pay)
                            xPlayer.addAccountMoney('black_money', pay)
                        else
                            local pay = (itemactC * price)
                            TriggerClientEvent('tofdrugs:animsell', xPlayer.source, timer)
                            TriggerClientEvent('tofdrugs:timeranim', xPlayer.source, timer)
                            Citizen.Wait(timer)
                            xPlayer.removeInventoryItem(itemact, itemactC)
                            TriggerClientEvent('tofdrugs:msgsellqty', xPlayer.source, drugssellnarcos[y].itemlabel, itemactC, pay)
                            xPlayer.addAccountMoney('black_money', pay)
                        end
                    else
                        TriggerClientEvent('tofdrugs:msgnoitem', xPlayer.source)
                    end
                end
            end
        end
    end
end

function SellNpc(xPlayer, item, act, timer, entity)
    local action = act
    local itemact = item
------------------------ sell NPC action ------------------------
    if action == 'sellnpc' then
        local alertlspd = math.random(1,100)
        if dgsinventory == 'oxinventory' then
            for w = 1,#drugssellNPC,1 do
                if itemact == drugssellNPC[w].itemsell then
                    local itemactC = exports.ox_inventory:Search(xPlayer.source, 'count', itemact)
                    local price = math.random(drugssellNPC[w].pricemin, drugssellNPC[w].pricemax)
                    local sellcount = math.random(1,12)
                    local pay = price * sellcount
                    if itemactC and itemactC > 0 then
                        if itemactC > sellcount then
                            TriggerClientEvent('tofdrugs:animsellnpc', xPlayer.source, timer, entity)
                            TriggerClientEvent('tofdrugs:timeranim', xPlayer.source, timer)
                            if alertlspd <= dgsalertcopsnpc then
                                TriggerClientEvent('tofdrugs:alertlspd_c', xPlayer.source)
                            end
                            Citizen.Wait(timer)
                            exports.ox_inventory:RemoveItem(xPlayer.source, itemact, sellcount)
                            TriggerClientEvent('tofdrugs:msgsell', xPlayer.source, drugssellNPC[w].itemselllabel, sellcount, pay)
                            xPlayer.addAccountMoney('black_money', pay)
                        else
                            TriggerClientEvent('tofdrugs:msgnoitem', xPlayer.source)
                        end
                    else
                        TriggerClientEvent('tofdrugs:msgnoitem', xPlayer.source)
                    end
                end
            end
        end
        if dgsinventory == 'default' then
            for w = 1,#drugssellNPC,1 do
                if itemact == drugssellNPC[w].itemsell then
                    local itemactC = xPlayer.getInventoryItem(itemact).count
                    local price = math.random(drugssellNPC[w].pricemin, drugssellNPC[w].pricemax)
                    local sellcount = math.random(1,12)
                    local pay = price * sellcount
                    if itemactC and itemactC > 0 then
                        if itemactC > sellcount then
                            TriggerClientEvent('tofdrugs:animsellnpc', xPlayer.source, timer, entity)
                            TriggerClientEvent('tofdrugs:timeranim', xPlayer.source, timer)
                            if alertlspd <= dgsalertcopsnpc then
                                TriggerClientEvent('tofdrugs:alertlspd_c', xPlayer.source)
                            end
                            Citizen.Wait(timer)
                            xPlayer.removeInventoryItem(itemact, sellcount)
                            TriggerClientEvent('tofdrugs:msgsell', xPlayer.source, drugssellNPC[w].itemselllabel, sellcount, pay)
                            xPlayer.addAccountMoney('black_money', pay)
                        else
                            TriggerClientEvent('tofdrugs:msgnoitem', xPlayer.source)
                        end
                    else
                        TriggerClientEvent('tofdrugs:msgnoitem', xPlayer.source)
                    end
                end
            end
        end
    end
end

