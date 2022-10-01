lib.locale()

RegisterNetEvent('tofdrugs:msgspam')
AddEventHandler('tofdrugs:msgspam', function()
    ------------------**notification**----------------------
    lib.showTextUI(locale('spam'), {
        position = "top-center",
        icon = 'gun-squirt',
        style = {
            borderRadius = 0,
            backgroundColor = 'red',
            color = 'white'
        }
    })
    Citizen.Wait(3000)
    lib.hideTextUI()
    ------------------**fin notification**-----------------
end)

RegisterNetEvent('tofdrugs:msgnbcops')
AddEventHandler('tofdrugs:msgnbcops', function()
    ------------------**notification**----------------------
    lib.showTextUI(locale('nbcops'), {
        position = "top-center",
        icon = 'gun-squirt',
        style = {
            borderRadius = 0,
            backgroundColor = 'red',
            color = 'white'
        }
    })
    Citizen.Wait(3000)
    lib.hideTextUI()
    ------------------**fin notification**-----------------
end)

RegisterNetEvent('tofdrugs:msgsoldped')
AddEventHandler('tofdrugs:msgsoldped', function()
    ------------------**notification**----------------------
    lib.showTextUI(locale('soldped'), {
        position = "top-center",
        icon = 'gun-squirt',
        style = {
            borderRadius = 0,
            backgroundColor = 'red',
            color = 'white'
        }
    })
    Citizen.Wait(3000)
    lib.hideTextUI()
    ------------------**fin notification**-----------------
end)

RegisterNetEvent('tofdrugs:msgnospace')
AddEventHandler('tofdrugs:msgnospace', function()
    ------------------**notification**----------------------
    lib.showTextUI(locale('nospace'), {
        position = "top-center",
        icon = 'gun-squirt',
        style = {
            borderRadius = 0,
            backgroundColor = 'red',
            color = 'white'
        }
    })
    Citizen.Wait(3000)
    lib.hideTextUI()
    ------------------**fin notification**-----------------
end)

RegisterNetEvent('tofdrugs:msgnoitem')
AddEventHandler('tofdrugs:msgnoitem', function()
    ------------------**notification**----------------------
    lib.showTextUI(locale('noitem'), {
        position = "top-center",
        icon = 'gun-squirt',
        style = {
            borderRadius = 0,
            backgroundColor = 'red',
            color = 'white'
        }
    })
    Citizen.Wait(3000)
    lib.hideTextUI()
    ------------------**fin notification**-----------------
end)

RegisterNetEvent('tofdrugs:msgharvest')
AddEventHandler('tofdrugs:msgharvest', function(label, qty)
    ------------------**notification**----------------------
    lib.showTextUI(locale('harvest')..qty..' x '..label, {
        position = "top-center",
        icon = 'gun-squirt',
        style = {
            borderRadius = 0,
            backgroundColor = 'green',
            color = 'white'
        }
    })
    Citizen.Wait(3000)
    lib.hideTextUI()
    ------------------**fin notification**-----------------
end)

RegisterNetEvent('tofdrugs:msgcraft')
AddEventHandler('tofdrugs:msgcraft', function(label, qty)
    ------------------**notification**----------------------
    lib.showTextUI(locale('craft')..qty..' x '..label, {
        position = "top-center",
        icon = 'gun-squirt',
        style = {
            borderRadius = 0,
            backgroundColor = 'green',
            color = 'white'
        }
    })
    Citizen.Wait(3000)
    lib.hideTextUI()
    ------------------**fin notification**-----------------
end)

RegisterNetEvent('tofdrugs:msgcraftnoitem')
AddEventHandler('tofdrugs:msgcraftnoitem', function()
    ------------------**notification**----------------------
    lib.showTextUI(locale('craftnoitem'), {
        position = "top-center",
        icon = 'gun-squirt',
        style = {
            borderRadius = 0,
            backgroundColor = 'red',
            color = 'white'
        }
    })
    Citizen.Wait(3000)
    lib.hideTextUI()
    ------------------**fin notification**-----------------
end)

RegisterNetEvent('tofdrugs:msgsell')
AddEventHandler('tofdrugs:msgsell', function(label, qty, price)
    ------------------**notification**----------------------
    lib.showTextUI(locale('sell')..qty..' x '..label..' + '..price..' $', {
        position = "top-center",
        icon = 'gun-squirt',
        style = {
            borderRadius = 0,
            backgroundColor = 'green',
            color = 'white'
        }
    })
    Citizen.Wait(3000)
    lib.hideTextUI()
    ------------------**fin notification**-----------------
end)

RegisterNetEvent('tofdrugs:msglspd')
AddEventHandler('tofdrugs:msglspd', function()
    ------------------**notification**----------------------
    lib.showTextUI(locale('selllspd'), {
        position = "top-center",
        icon = 'gun-squirt',
        style = {
            borderRadius = 0,
            backgroundColor = 'red',
            color = 'white'
        }
    })
    Citizen.Wait(15000)
    lib.hideTextUI()
    ------------------**fin notification**-----------------
end)