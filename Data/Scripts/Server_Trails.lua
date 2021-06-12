local ShopAPI = require(script:GetCustomProperty("API_Shop"))
local PlayerData = require(script:GetCustomProperty("API_PlayerData"))
local HelpfulFunctionsAPI = require(script:GetCustomProperty("API_HelpfulFunctions"))

local function EquipTrail(player, trailId)
	if(not Object.IsValid(player) or not player:IsA("Player")) then return end

	local playerData = PlayerData.GetPlayerData(player)

	if(trailId == 0) then
		playerData:Set("Trails_Current", trailId)
		player:SetResource("Trails_Current", trailId)
	end

	local trail = ShopAPI.GetItemById("Trails", trailId)
	if(not trail) then return end

	playerData:Set("Trails_Current", trailId)
	player:SetResource("Trails_Current", trailId)
end

local function GetTrails(player)
	local playerData = PlayerData.GetPlayerData(player)
	local trails = playerData:Get("Inventory_Trails", {})

	if(#trails <= 0) then return end
	HelpfulFunctionsAPI.BroadcastEvent(player, "Trails_Set", table.unpack(trails))
end

local function OnPlayerJoined(player)
	local playerData = PlayerData.GetPlayerData(player)

	local currentTrail = playerData:Get("Trails_Current", 0)
	player:SetResource("Trails_Current", currentTrail)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

Events.ConnectForPlayer("Trails_Get", GetTrails)
Events.ConnectForPlayer("Trails_Equip", EquipTrail)