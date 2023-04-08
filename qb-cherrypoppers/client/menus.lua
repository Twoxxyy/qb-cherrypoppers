local QBCore = exports['qb-core']:GetCoreObject()
local isLoggedIn = true
local PlayerJob = {}
local onDuty = false

Citizen.CreateThread(function()
    for _, garagePed in ipairs(Config.GaragePed) do
        exports['qb-target']:AddTargetModel(GetHashKey(garagePed.ped),
        { options = { { type = 'client', event = 'garage:CherryPopperGarage', icon = 'fas fa-car', label = 'BurgerShot Garage', job = Config.Job, }, },
            distance = 2.5
        })
    end
    exports['qb-target']:AddBoxZone('cp_tray1', vector3(-466.68, -27.61, 45.76), 1.05, 1.0,
    { name = 'cp_tray1', heading = 357, debugPoly = false, minZ = 41.86, maxZ = 45.86, },
    { options = { { event = 'qb-cherrypoppers:tray', icon = 'far fa-clipboard', label = 'Tray 1', }, },
        distance = 1.5
    })   
    exports['qb-target']:AddBoxZone('cp_fridge', vector3(-464.19, -29.73, 45.76), 3.0, 1, 
    { name = 'cp_fridge', heading = 356, debugPoly = false, minZ=43.36, maxZ=47.36,  },
    { options = {  {  event = 'qb-cherrypoppers:shop', icon = 'fas fa-laptop', label = 'Order Ingredients',  job = Config.Job,  }, {  event = 'qb-cherrypoppers:storage', icon = 'fas fa-box', label = 'Open Storage', job = Config.Job, }, },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone('cp_craft', vector3(-466.87, -29.66, 45.76), 2.9, 1,
    { name='cp_craft', heading=357, debugPoly=false, minZ=42.36, maxZ=46.36, }, 
    { options = { { event = 'qb-cherrypoppers:IceCreamMenu', icon = 'fas fa-ice-cream', label = 'Ice Cream Work Station', job = Config.Job, }, },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone('cp_craft2', vector3(-467.25, -34.78, 45.76), 2.9, 1, 
    { name='cp_craft2', heading = 357, debugPoly = false, minZ=43.76, maxZ=47.76, },
    { options = { { event = 'qb-cherrypoppers:IceCreamMenu', icon = 'fas fa-ice-cream', label = 'Ice Cream Work Station', job = Config.Job, }, },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone('cp_register', vector3(-465.36, -27.64, 45.76), 0.5, 0.4, 
    { name='cp_register', debugPoly=false, heading=357, minZ=42.16, maxZ=46.16, }, 
    { options = { { event = 'qb-cherrypoppers:bill', parms = '1', icon = 'fas fa-credit-card', label = 'Charge Customer', job = Config.Job, },
     {  event = 'qb-cherrypoppers:duty', icon = 'far fa-clipboard', label = 'Clock On/Off', job = Config.Job, },
     {  event = 'qb-bossmenu:client:OpenMenu', icon = 'fa-solid fa-circle-info', label = 'Boss Menu', job = Config.Job, }, },
        distance = 1.5
    })
end)

RegisterNetEvent('qb-cherrypoppers:IceCreamMenu', function(data)
    exports['qb-menu']:openMenu({
        { header = '| Available Food |', isMenuHeader = true, },
        { header = 'Vanilla Cone', txt = 'Cone, Vanilla, Milk and Sugar', params = {
                event = 'qb-cherrypoppers:VanillaIceCreamCone' } },
        { header = 'Strawberry Cone', txt = 'Cone, Strawberry, Milk and Sugar', params = { event = 'qb-cherrypoppers:StrawberryIceCreamCone' } },
        { header = 'Chocolate Cone', txt = 'Cone, Chocolate, Milk and Sugar', params = { event = 'qb-cherrypoppers:ChocolateIceCreamCone' } },
        { header = 'Vanilla Shake', txt = 'Cup, Vanilla, Milk and Sugar', params = { event = 'qb-cherrypoppers:VanillaShake' } },
        { header = 'Chocolate Shake', txt = 'Cup, Chocolate, Milk and Sugar', params = { event = 'qb-cherrypoppers:ChocolateShake' } },
        { header = 'Strawberry Shake', txt = 'Cup, Strawberry, Milk and Sugar', params = { event = 'qb-cherrypoppers:StrawberryShake' } },
        { header = 'Ice Cream Pack', txt = 'Vanilla Cone, Strawberry Cone, Chocolate Cone', params = { event = 'qb-cherrypoppers:CreateICPack' } },
        { header = 'Close Menu', txt = '', params = { event = 'qb-menu:closeMenu', } },
    })
end)

RegisterNetEvent('qb-cherrypoppers:bill')
AddEventHandler('qb-cherrypoppers:bill', function()
    local bill = exports['qb-input']:ShowInput(
        { header = 'Create Receipt', submitText = 'Bill', inputs = { { text = 'Server ID(#)', name = 'citizenid', type = 'text', isRequired = true },
            { text = 'Bill Price ($)', name = 'billprice', type = 'number', isRequired = false }		
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent('qb-cherrypoppers:bill:player', bill.citizenid, bill.billprice)
    end
end)