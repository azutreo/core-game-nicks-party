local ShopAPI = require(script:GetCustomProperty("API_Shop"))
local PlayerData = require(script:GetCustomProperty("API_PlayerData"))
local HelpfulFunctionsAPI = require(script:GetCustomProperty("API_HelpfulFunctions"))

function PurchaseTrail(player, trailId)
	local trail = ShopAPI.GetItemById("Trails", trailId)
	if(not trail) then return end

	local playerData = PlayerData.GetPlayerData(player)

	local currency = playerData:Get("Currency", 0)
	if(currency < trail.price) then return end

	local trails = playerData:Get("Inventory_Trails", {})

	for _, trailid in pairs(trails) do
		if(trailid == trailId) then return end
	end
	table.insert(trails, trailId)

	playerData:Set("Inventory_Trails", trails)

	currency = currency - trail.price
	playerData:Set("Currency", currency)
	player:SetResource("Currency", currency)

	Events.Broadcast("Trails_Equip", player, trailId)
	HelpfulFunctionsAPI.BroadcastEvent(player, "Trails_Update", table.unpack(trails))
end

Events.ConnectForPlayer("Trails_Purchase", PurchaseTrail)