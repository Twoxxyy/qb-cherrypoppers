local QBCore = exports['qb-core']:GetCoreObject()
local isLoggedIn = false
local PlayerJob = {}
local onDuty = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        if PlayerData.job.onduty then
            if PlayerData.job.name == Config.Job then
                TriggerServerEvent('QBCore:ToggleDuty')
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
	onDuty = duty
end)

Citizen.CreateThread(function()
    if not Config.blips then
        print("[ERROR] Config.blips is not defined.")
        return
    end
    for _, blipInfo in ipairs(Config.blips) do
        local blip = AddBlipForCoord(blipInfo.pos.x, blipInfo.pos.y, blipInfo.pos.z)
        SetBlipSprite(blip, blipInfo.id)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, blipInfo.scale)
        SetBlipColour(blip, blipInfo.colour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blipInfo.title)
        EndTextCommandSetBlipName(blip)
    end
end)

RegisterNetEvent('qb-cherrypoppers:duty', function()
    TriggerServerEvent('QBCore:ToggleDuty')
end)

RegisterNetEvent('qb-cherrypoppers:tray', function()
    TriggerEvent('inventory:client:SetCurrentStash', 'cp_tray1')
    TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'cp_tray1', {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent('qb-cherrypoppers:storage', function()
    TriggerEvent('inventory:client:SetCurrentStash', 'Fridge')
    TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'Fridge', {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent('qb-cherrypoppers:icpack', function()
	TriggerServerEvent('qb-cherrypoppers:open:icpack')
end)

RegisterNetEvent('qb-cherrypoppers:CreateICPack', function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-cherrypoppers:server:get:ingredienticpack', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar('pickup_sla', 'Making An Ice Cream Pack..', 4000, false, false, 
				{ disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
				{ animDict = 'mp_common', anim = 'givetake1_a', flags = 8, }, {}, {}, function()
					TriggerServerEvent('qb-cherrypoppers:create:icpack')
                    QBCore.Functions.Notify('You made a A Murder Meal', 'success')
				end, function()
					QBCore.Functions.Notify('Cancelled..', 'error')
				end)
			else
   				QBCore.Functions.Notify('You dont have the items to make this', 'error')
			end
		end)
	else
		QBCore.Functions.Notify('You must be Clocked into work', 'error')
	end
end)

RegisterNetEvent('qb-cherrypoppers:StrawberryShake', function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-cherrypoppers:server:get:ingredientstrawberryshake', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar('pickup_sla', 'Making Strawberrry Shake..', 4000, false, false, 
				{ disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, }, 
				{ animDict = 'mp_common', anim = 'givetake1_a', flags = 8, }, {}, {}, function()
					TriggerServerEvent('qb-cherrypoppers:create:strawberryshake')
                    QBCore.Functions.Notify('You made a Strawberry Shake', 'success')
				end, function()
					QBCore.Functions.Notify('Cancelled..', 'error')
				end)
			else
   				QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
			end
		end)
	else 
		QBCore.Functions.Notify('You must be Clocked into work', 'error')
	end
end)

RegisterNetEvent('qb-cherrypoppers:VanillaShake', function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-cherrypoppers:server:get:ingredientvanillashake', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar('pickup_sla', 'Making Vanilla Shake..', 4000, false, false, 
				{ disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
				{ animDict = 'mp_common', anim = 'givetake1_a', flags = 8, }, {}, {}, function()
					TriggerServerEvent('qb-cherrypoppers:create:vanillashake')
                    QBCore.Functions.Notify('You made a Vanilla Shake', 'success')
				end, function()
					QBCore.Functions.Notify('Cancelled..', 'error')
				end)
			else
   				QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
			end
		end)
	else 
		QBCore.Functions.Notify('You must be Clocked into work', 'error')
	end
end)

RegisterNetEvent('qb-cherrypoppers:ChocolateShake', function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-cherrypoppers:server:get:ingredientchocolateshake', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar('pickup_sla', 'Making Chocolate Shake..', 4000, false, false, 
				{ disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, }, 
				{ animDict = 'mp_common', anim = 'givetake1_a', flags = 8, }, {}, {}, function()
					TriggerServerEvent('qb-cherrypoppers:create:chocolateshake')
                    QBCore.Functions.Notify('You made a Chocolate Shake', 'success')
				end, function()
					QBCore.Functions.Notify('Cancelled..', 'error')
				end)
			else
   				QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
			end
		end)
	else 
		QBCore.Functions.Notify('You must be Clocked into work', 'error')
	end
end)

RegisterNetEvent('qb-cherrypoppers:VanillaIceCreamCone', function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-cherrypoppers:server:get:ingredientvanillacone', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar('pickup_sla', 'Making A Vanilla Cone..', 4000, false, false, 
				{ disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
				{ animDict = 'mp_common', anim = 'givetake1_a', flags = 8, }, {}, {}, function()
					TriggerServerEvent('qb-cherrypoppers:create:vanillacone')
                    QBCore.Functions.Notify('You made a Vanilla Cone', 'success')
				end, function()
					QBCore.Functions.Notify('Cancelled..', 'error')
				end)
			else
   				QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
			end
		end)
	else 
		QBCore.Functions.Notify('You must be Clocked into work', 'error')
	end
end)

RegisterNetEvent('qb-cherrypoppers:ChocolateIceCreamCone', function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-cherrypoppers:server:get:ingredientchocolatecone', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar('pickup_sla', 'Making A Chocolate Cone..', 4000, false, false, 
				{ disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
				{ animDict = 'mp_common', anim = 'givetake1_a', flags = 8, }, {}, {}, function()
					TriggerServerEvent('qb-cherrypoppers:create:chocolatecone')
                    QBCore.Functions.Notify('You made a Chocolate Cone', 'success')
				end, function()
					QBCore.Functions.Notify('Cancelled..', 'error')
				end)
			else
   				QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
			end
		end)
	else 
		QBCore.Functions.Notify('You must be Clocked into work', 'error')
	end
end)

RegisterNetEvent('qb-cherrypoppers:StrawberryIceCreamCone', function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-cherrypoppers:server:get:ingredientstrawberrycone', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar('pickup_sla', 'Making A Strawberry Cone..', 4000, false, false, 
				{ disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, }, 
				{ animDict = 'mp_common', anim = 'givetake1_a', flags = 8, }, {}, {}, function()
					TriggerServerEvent('qb-cherrypoppers:create:strawberrycone')
                    QBCore.Functions.Notify('You made a Strawberry Cone', 'success')
				end, function()
					QBCore.Functions.Notify('Cancelled..', 'error')
				end)
			else
   				QBCore.Functions.Notify('You dont have the ingredients to make this', 'error')
			end
		end)
	else 
		QBCore.Functions.Notify('You must be Clocked into work', 'error')
	end
end)
   
RegisterNetEvent('qb-cherrypoppers:shop')
AddEventHandler('qb-cherrypoppers:shop', function()
    TriggerServerEvent('inventory:server:OpenInventory', 'shop', Config.Job, Config.Items)
end)