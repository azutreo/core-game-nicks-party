local ShopAPI = require(script:GetCustomProperty("API_Shop"))

local trails = {}

local function EquipTrail(player, trailId)
	if(trails[player]) then
		trails[player]:Destroy()
		trails[player] = nil
	end

	local trail = ShopAPI.GetItemById("Trails", trailId)
	if(not trail) then return end

	trails[player] = World.SpawnAsset(trail.template)
	trails[player].name = "Trail"
	trails[player]:AttachToPlayer(player, "root")
	trails[player]:SetPosition(Vector3.New(0, 0, 150))
end

local function OnResourceChanged(player, resourceName, resourceValue)
	if(resourceName ~= "Trails_Current") then return end

	EquipTrail(player, resourceValue)
end

local function OnPlayerJoined(player)
	player.resourceChangedEvent:Connect(OnResourceChanged)

	local currentTrailId = player:GetResource("Trails_Current")
	EquipTrail(player, currentTrailId)
end

local function OnPlayerLeft(player)
	if(not trails[player]) then return end

	trails[player]:Destroy()
	trails[player] = nil
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)