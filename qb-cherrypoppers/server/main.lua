local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-cherrypoppers:open:icpack', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil and Player.Functions.GetItemByName('cp-icecreampack') ~= nil then
        Player.Functions.RemoveItem('cp-icecreampack',1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-icecreampack'], 'remove')
        Player.Functions.AddItem('cp-strawberrycone', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-strawberrycone'], 'add')
        Player.Functions.AddItem('cp-chocolatecone', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-chocolatecone'], 'add')
        Player.Functions.AddItem('cp-vanillacone', 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-vanillacone'], 'add')
        local randomToy = math.random(1,15)
        if randomToy <= 3 then
            Player.Functions.AddItem('cp-coupon10', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-coupon10'], 'add')            
        elseif randomToy == 4 then
            Player.Functions.AddItem('strawberryplushy', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['strawberryplushy'], 'add')           
        elseif randomToy >= 5 and randomToy <= 10 then
            Player.Functions.AddItem('cp-coupon15', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-coupon15'], 'add')   
        elseif randomToy == 11 then
            Player.Functions.AddItem('chocolateplushy', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['chocolateplushy'], 'add')            
        elseif randomToy >= 12 and randomToy <= 14 then
            TriggerClientEvent('QBCore:Notify', src, 'No toy in Box Looool', 'error')
        elseif randomToy == 15 then
            Player.Functions.AddItem('cp-coupon25', 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-coupon25'], 'add')                        
        end  
    else
        TriggerClientEvent('QBCore:Notify', src, 'You need an ice cream pack to open it', 'error')
    end
end)

RegisterNetEvent('qb-cherrypoppers:create:icpack', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-strawberrycone',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-strawberrycone'], 'remove')
    Player.Functions.RemoveItem('cp-chocolatecone',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-chocolatecone'], 'remove')
    Player.Functions.RemoveItem('cp-vanillacone',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-vanillacone'], 'remove')
    Player.Functions.AddItem('cp-icecreampack', 1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-icecreampack'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:create:strawberrycone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-icecreamcone',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-icecreamcone'], 'remove')
    Player.Functions.RemoveItem('cp-strawberry',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-strawberry'], 'remove')
    Player.Functions.RemoveItem('cp-milk',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-milk'], 'remove')
    Player.Functions.RemoveItem('cp-sugar',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-sugar'], 'remove')
    Player.Functions.AddItem('cp-strawberrycone', 1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-strawberrycone'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:create:chocolatecone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-icecreamcone',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-icecreamcone'], 'remove')
    Player.Functions.RemoveItem('cp-chocolate',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-chocolate'], 'remove')
    Player.Functions.RemoveItem('cp-milk',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-milk'], 'remove')
    Player.Functions.RemoveItem('cp-sugar',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-sugar'], 'remove')
    Player.Functions.AddItem('cp-chocolatecone', 1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-chocolatecone'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:create:vanillacone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-icecreamcone',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-icecreamcone'], 'remove')
    Player.Functions.RemoveItem('cp-vanilla',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-vanilla'], 'remove')
    Player.Functions.RemoveItem('cp-milk',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-milk'], 'remove')
    Player.Functions.RemoveItem('cp-sugar',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-sugar'], 'remove')
    Player.Functions.AddItem('cp-vanillacone', 1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-vanillacone'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:create:strawberryshake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-cup',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-cup'], 'remove')
    Player.Functions.RemoveItem('cp-strawberrycone',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-strawberrycone'], 'remove')
    Player.Functions.RemoveItem('cp-milk',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-milk'], 'remove')
    Player.Functions.AddItem('cp-strawberryshake', 1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-strawberryshake'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:create:chocolateshake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-cup',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-cup'], 'remove')
    Player.Functions.RemoveItem('cp-chocolatecone',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-chocolatecone'], 'remove')
    Player.Functions.RemoveItem('cp-milk',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-milk'], 'remove')
    Player.Functions.AddItem('cp-chocolateshake', 1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-chocolateshake'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:create:vanillashake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-cup',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-cup'], 'remove')
    Player.Functions.RemoveItem('cp-vanillacone',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-vanillacone'], 'remove')
    Player.Functions.RemoveItem('cp-milk',1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-milk'], 'remove')
    Player.Functions.AddItem('cp-vanillashake', 1)
    TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items['cp-vanillashake'], 'add')
end)

QBCore.Functions.CreateCallback('qb-cherrypoppers:server:get:ingredientvanillacone', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local icecreamcone = Ply.Functions.GetItemByName('cp-icecreamcone')
    local vanilla = Ply.Functions.GetItemByName('cp-vanilla')
    local milk = Ply.Functions.GetItemByName('cp-milk')
    local sugar = Ply.Functions.GetItemByName('cp-sugar')
    if icecreamcone ~= nil and vanilla ~= nil and milk ~= nil and sugar ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-cherrypoppers:server:get:ingredientstrawberrycone', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local icecreamcone = Ply.Functions.GetItemByName('cp-icecreamcone')
    local strawberry = Ply.Functions.GetItemByName('cp-strawberry')
    local milk = Ply.Functions.GetItemByName('cp-milk')
    local sugar = Ply.Functions.GetItemByName('cp-sugar')
    if icecreamcone ~= nil and strawberry ~= nil and milk ~= nil and sugar ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-cherrypoppers:server:get:ingredientchocolatecone', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local icecreamcone = Ply.Functions.GetItemByName('cp-icecreamcone')
    local chocolate = Ply.Functions.GetItemByName('cp-chocolate')
    local milk = Ply.Functions.GetItemByName('cp-milk')
    local sugar = Ply.Functions.GetItemByName('cp-sugar')
    if icecreamcone ~= nil and chocolate ~= nil and milk ~= nil and sugar ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-cherrypoppers:server:get:ingredientchocolateshake', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local cup = Ply.Functions.GetItemByName('cp-cup')
    local chocolate = Ply.Functions.GetItemByName('cp-chocolate')
    local milk = Ply.Functions.GetItemByName('cp-milk')
    local sugar = Ply.Functions.GetItemByName('cp-sugar')
    if cup ~= nil and chocolate ~= nil and milk ~= nil and sugar ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-cherrypoppers:server:get:ingredientvanillashake', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local cup = Ply.Functions.GetItemByName('cp-cup')
    local vanilla = Ply.Functions.GetItemByName('cp-vanilla')
    local milk = Ply.Functions.GetItemByName('cp-milk')
    local sugar = Ply.Functions.GetItemByName('cp-sugar')
    if cup ~= nil and vanilla ~= nil and milk ~= nil and sugar ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-cherrypoppers:server:get:ingredientstrawberryshake', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local cup = Ply.Functions.GetItemByName('cp-cup')
    local strawberry = Ply.Functions.GetItemByName('cp-strawberry')
    local milk = Ply.Functions.GetItemByName('cp-milk')
    local sugar = Ply.Functions.GetItemByName('cp-sugar')
    if cup ~= nil and strawberry ~= nil and milk ~= nil and sugar ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-cherrypoppers:server:get:ingredienticpack', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local vanillacone = Ply.Functions.GetItemByName('cp-vanillacone')
    local strawberrycone = Ply.Functions.GetItemByName('cp-strawberrycone')
    local chocolatecone = Ply.Functions.GetItemByName('cp-chocolatecone')
    if vanillacone ~= nil and strawberrycone ~= nil and chocolatecone ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateUseableItem('cp-icecreampack', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('qb-cherrypoppers:icpack', source, item.name)
end)


RegisterNetEvent('qb-cherrypoppers:remove:icecreamcone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-icecreamcone', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-icecreamcone'], 'remove')
end)

RegisterNetEvent('qb-cherrypoppers:add:vanillacone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('cp-vanillacone', 4)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-vanillacone'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:remove:milk', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-milk', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-milk'], 'remove')
end)

RegisterNetEvent('qb-cherrypoppers:add:chocolatecone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('cp-chocolatecone', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-chocolatecone'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:remove:sugar', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-sugar', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-sugar'], 'remove')
end)

RegisterNetEvent('qb-cherrypoppers:add:strawberrycone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('cp-strawberrycone', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-strawberrycone'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:remove:chocolate', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-chocolate', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-chocolate'], 'remove')
end)

RegisterNetEvent('qb-cherrypoppers:add:vanillashake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('cp-vanillashake', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-vanillashake'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:remove:vanilla', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-vanilla', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-vanilla'], 'remove')
end)

RegisterNetEvent('qb-cherrypoppers:add:strawberryshake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('cp-strawberryshake', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-strawberryshake'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:remove:strawberry', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-strawberry', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-strawberry'], 'remove')
end)

RegisterNetEvent('qb-cherrypoppers:add:chocolateshake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('cp-chocolateshake', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-chocolateshake'], 'add')
end)

RegisterNetEvent('qb-cherrypoppers:remove:cup', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cp-cup', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cp-cup'], 'remove')
end)

RegisterServerEvent('qb-cherrypoppers:bill:player')
AddEventHandler('qb-cherrypoppers:bill:player', function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name ~= Config.Job then
        TriggerClientEvent('QBCore:Notify', source, 'No Access', 'error')
        return
    end
    if billed == nil then
        TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error')
        return
    end
    if biller.PlayerData.citizenid == billed.PlayerData.citizenid then
        TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
        return
    end
    if amount == nil or amount <= 0 then
        TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
        return
    end
    MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
        ['citizenid'] = billed.PlayerData.citizenid,
        ['amount'] = amount,
        ['society'] = biller.PlayerData.job.name,
        ['sender'] = biller.PlayerData.charinfo.firstname
    })
    TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
    TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
    TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
end)

