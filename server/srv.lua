ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('vet:buycloth')
AddEventHandler('vet:buycloth', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    xPlayer.removeMoney(200)
end)
print("^0[^4Créateur^0] ^7:Dracarys")
print("^0[^8Discord^0] ^7:^8Dracarys#4727")