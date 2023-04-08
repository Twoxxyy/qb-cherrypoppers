local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = {}
local pedspawned = false
local npc = nil

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
function QBCore.Functions.GetPlayerData(callback)
    if callback then
        callback(QBCore.PlayerData)
    else
        return QBCore.PlayerData
    end
end

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(job)
    PlayerData.job = job
end)

RegisterNetEvent('QBCore:Player:SetPlayerData')
AddEventHandler('QBCore:Player:SetPlayerData', function(value)
    PlayerData = value
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        for k, v in pairs(Config.GaragePed) do
            local pos = GetEntityCoords(PlayerPedId())    
            local dist = #(pos - vector3(v.coords.x, v.coords.y, v.coords.z))
            
            if dist < 40 and not pedspawned then
                TriggerEvent('qb-cherrypoppers:spawn:ped', v.coords)
                pedspawned = true
            end
            if dist >= 35 then
                pedspawned = false
                DeletePed(npc)
            end
        end
    end
end)

RegisterNetEvent('qb-cherrypoppers:spawn:ped')
AddEventHandler('qb-cherrypoppers:spawn:ped',function(coords)
    local hash = `ig_floyd`
    RequestModel(hash)
    while not HasModelLoaded(hash) do 
        Wait(10)
    end
    pedspawned = true
    npc = CreatePed(5, hash, coords.x, coords.y, coords.z - 1.0, coords.w, false, false)
    FreezeEntityPosition(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    loadAnimDict('amb@world_human_cop_idles@male@idle_b') 
    TaskPlayAnim(npc, 'amb@world_human_cop_idles@male@idle_b', 'idle_e', 8.0, 1.0, -1, 17, 0, 0, 0, 0)
end)

function loadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(5)
    end
end

function drawNotification(Notification)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(Notification)
    DrawNotification(false, false)
end

RegisterNetEvent('qb-cherrypoppers:garage')
AddEventHandler('qb-cherrypoppers:garage', function(cp)
    local vehicle = cp.vehicle  
    local coords = Config.CarSpawn
    QBCore.Functions.GetPlayerData(function(data)
        if data.job and data.job.onduty then
            if data.job.name == Config.Job then
                if vehicle == 'cherrypoppertruck' then		
                    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
                        SetVehicleNumberPlateText(veh, 'CHERRY'..tostring(math.random(1000, 9999)))
                        exports['LegacyFuel']:SetFuel(veh, 100.0)
                        SetEntityHeading(veh, coords.w)
                        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                        TriggerEvent('vehiclekeys:client:SetOwner', GetVehicleNumberPlateText(veh))
                        SetVehicleEngineOn(veh, true, true)
                    end, coords, true)
                end
            else 
                QBCore.Functions.Notify('You are not an employee of Cherry Poppers.', 'error')
            end
        end
    end)
end)

RegisterNetEvent('qb-cherrypoppers:storecar')
AddEventHandler('qb-cherrypoppers:storecar', function()
    QBCore.Functions.Notify('Work Vehicle Stored!')
    local car = GetVehiclePedIsIn(PlayerPedId(),true)
    NetworkFadeOutEntity(car, true,false)
    Citizen.Wait(2000)
    QBCore.Functions.DeleteVehicle(car)
end)

RegisterNetEvent('garage:CherryPopperGarage', function()
    exports['qb-menu']:openMenu({
        {
            header = '| CherryPopper Garage |',
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = 'Cherry Popper',
            txt = 'Ice Cream Truck',
            params = {
                event = 'qb-cherrypoppers:garage',
                args = {
                    vehicle = 'cherrypoppertruck',
                }
            }
        },
        {
            header = 'Store Vehicle',
            txt = 'Store Vehicle Inside Garage',
            params = {
                event = 'qb-cherrypoppers:storecar',
                args = {
                    
                }
            }
        },
        {
            header = 'Close Menu',
            txt = '',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

