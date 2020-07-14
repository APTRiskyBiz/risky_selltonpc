ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('risky_selltonpc:dodeal')
AddEventHandler('risky_selltonpc:dodeal', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local item1 = xPlayer.getInventoryItem(Risky.Item1).count
	local item2 = xPlayer.getInventoryItem(Risky.Item2).count
	local item3 = xPlayer.getInventoryItem(Risky.Item3).count
	local item4 = xPlayer.getInventoryItem(Risky.Item4).count
	if item1 >= 1 and xPlayer ~= nil then
		local item1price = Risky.Item1Price
		local item1amount = Risky.Item1Count

		local item1final = item1price * item1amount

		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You sold ' .. item1amount .. ' '.. Risky.Item1  ..' for $' .. item1final, length = 4000 })
		xPlayer.removeInventoryItem(Risky.item1, item1amount)
		xPlayer.addAccountMoney(Risky.Account, item1final)

	elseif item2 > 1 and xPlayer ~= nil then
		local item2price = Risky.Item2Price	
		local item2amount = Risky.Item2Count
	
		local item2final = item2price * item2amount
	
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You sold ' .. item2amount .. ' '.. Risky.Item2  ..' for $' .. item2final, length = 4000 })
		xPlayer.removeInventoryItem(Risky.Item2, item2amount)
		xPlayer.addAccountMoney(Risky.Account, item2final)

	elseif item3 > 1 and xPlayer ~= nil then
		local item3price = Risky.Item3Price
		local item3amount = Risky.Item3Count
	
		local item3final = item3price * item3amount
	
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You sold ' .. item3amount .. ' '.. Risky.Item3  ..' for $' .. item3final, length = 4000 })
		xPlayer.removeInventoryItem(Risky.Item3, item3amount)
		xPlayer.addAccountMoney(Risky.Account, item3final)

	elseif item4 > 1 and xPlayer ~= nil then
		local item4price = Risky.Item4Price
		local item4amount = Risky.Item4Count
	
		local item4final = item4price * item4amount
	
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You sold ' .. item4amount .. ' '.. Risky.Item4  ..' for $' .. item4final, length = 4000 })
		xPlayer.removeInventoryItem(Risky.Item4, item4amount)
		xPlayer.addAccountMoney(Risky.Account, item4final)
	elseif item1 and item2 and item3 and item4 < 1 and xPlayer ~= nil then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Come back when you are ready to become a REAL drug dealer, maybe next actually BRING drugs with you.', length = 4000 })
	end
end)

RegisterNetEvent('countdrug')
AddEventHandler('countdrug', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer ~= nil then
		local item1 = xPlayer.getInventoryItem(Risky.Item1).count
		local item2 = xPlayer.getInventoryItem(Risky.Item2).count
		local item3 = xPlayer.getInventoryItem(Risky.Item3).count
		local item4 = xPlayer.getInventoryItem(Risky.Item4).count
		if item1 >= 1 then
			TriggerClientEvent("confirmcount", source, true)
		elseif item2 >= 1 then
			TriggerClientEvent("confirmcount", source, true)
		elseif item3 >= 1 then
			TriggerClientEvent("confirmcount", source, true)
		elseif item4 >= 1 then
			TriggerClientEvent("confirmcount", source, true)
		else
			TriggerClientEvent("confirmcount", source, false)
		end
	end
end)

--[[
ESX.RegisterUsableItem('weed', function(source)
        
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('weed', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 166000)
	TriggerClientEvent('esx_status:remove', _source, 'stress', 199000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
end)

ESX.RegisterUsableItem('joint', function(source)
	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('joint', 1)

	TriggerClientEvent('esx_status:remove', _source, 'stress', 199000)
	TriggerClientEvent('esx_drugeffects:onJoint', source)
end)

ESX.RegisterUsableItem('heroin', function(source)
   
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('heroin', 1)

	TriggerClientEvent('esx_status:add', _source, 'heroin', 249000)
	TriggerClientEvent('esx_drugeffects:onOpium', source)
end)

ESX.RegisterUsableItem('meth', function(source)
	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('meth', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 333000)
	TriggerClientEvent('esx_drugeffects:onMeth', source)
end)

ESX.RegisterUsableItem('coke', function(source)
	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('coke', 1)

	TriggerClientEvent('esx_status:add', _source, 'drug', 499000)
	TriggerClientEvent('esx_drugeffects:onCoke', source)
end)

ESX.RegisterUsableItem('xanax', function(source)
	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('xanax', 1)

	TriggerClientEvent('esx_status:remove', _source, 'drug', 249000)
end)
]]--
