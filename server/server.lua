ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('risky_selltonpc:dodeal')
AddEventHandler('risky_selltonpc:dodeal', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local meth = xPlayer.getInventoryItem('meth').count
	local coke = xPlayer.getInventoryItem('coke').count
	local weed = xPlayer.getInventoryItem('weed').count
	local hero = xPlayer.getInventoryItem('heroin').count
	if weed > 0 and xPlayer ~= nil then
		local weedprice = Risky.WeedPrice
		local weedamount = Risky.WeedCount

		local weedfinal = weedprice * weedamount

		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You sold ' .. weedamount .. ' weed for $' .. weedfinal, length = 4000 })
		xPlayer.removeInventoryItem('weed', weedamount)
		xPlayer.addAccountMoney('black_money', weedfinal)

	elseif coke > 0 and xPlayer ~= nil then
		local cokeprice = Risky.CokePrice	
		local cokeamount = Risky.CokeCount
	
		local cokefinal = cokeprice * cokeamount
	
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You sold ' .. cokeamount .. ' coke for $' .. cokefinal, length = 4000 })
		xPlayer.removeInventoryItem('coke', cokeamount)
		xPlayer.addAccountMoney('black_money', cokefinal)

	elseif meth > 0 and xPlayer ~= nil then
		local methprice = Risky.MethPrice
		local methamount = Risky.MethCount
	
		local methfinal = methprice * methamount
	
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You sold ' .. methamount .. ' meth for $' .. methfinal, length = 4000 })
		xPlayer.removeInventoryItem('meth', methamount)
		xPlayer.addAccountMoney('black_money', methfinal)

	elseif hero > 0 and xPlayer ~= nil then
		local heroprice = Risky.HeroPrice
		local heroamount = Risky.HeroCount
	
		local herofinal = heroprice * heroamount
	
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'You sold ' .. heroamount .. ' heroin for $' .. herofinal, length = 4000 })
		xPlayer.removeInventoryItem('heroin', heroamount)
		xPlayer.addAccountMoney('black_money', herofinal)
	elseif weed and coke and meth and hero < 1 and xPlayer ~= nil then
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Come back when you are ready to become a REAL drug dealer, maybe next actually BRING drugs with you.', length = 4000 })
	end
end)

RegisterNetEvent('countdrug')
AddEventHandler('countdrug', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer ~= nil then
		local meth = xPlayer.getInventoryItem('meth').count
		local coke = xPlayer.getInventoryItem('coke').count
		local weed = xPlayer.getInventoryItem('weed').count
		local hero = xPlayer.getInventoryItem('heroin').count
		if weed >= 1 then
			TriggerClientEvent("confirmcount", source, true)
		elseif coke >= 1 then
			TriggerClientEvent("confirmcount", source, true)
		elseif meth >= 1 then
			TriggerClientEvent("confirmcount", source, true)
		elseif hero >= 1 then
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