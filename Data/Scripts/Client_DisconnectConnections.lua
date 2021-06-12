local WorldRootObject = World.GetRootObject()

local function ScanParent(parent, descendants)
	for _, child in pairs(parent:GetChildren()) do
		if(child.name ~= "Scenery") then
			table.insert(descendants, child)
			descendants = ScanParent(child, descendants)
		end
	end

	return descendants
end

local function GetDescendants(parent)
	assert(Object.IsValid(parent), "Parent is not a valid Object")

	return ScanParent(parent, {})
end

local function OnPlayerJoined(player)
	player.clientUserData.connections = {}
end

local function OnPlayerLeft(player)
	for _, connection in pairs(player.clientUserData.connections) do
		connection:Disconnect()
	end
end

local function OnScriptDestroyed(script)
	if(script.context.Connections) then
		for _, connection in pairs(script.context.Connections) do
			connection:Disconnect()
		end
	end
end

local function OnDescendantAdded(ancestor, descendant)
	if(descendant:IsA("Script")) then
		descendant.destroyEvent:Connect(OnScriptDestroyed)
	end
end

WorldRootObject.descendantAddedEvent:Connect(OnDescendantAdded)
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

for _, descendant in pairs(GetDescendants(WorldRootObject)) do
	if(descendant:IsA("Script")) then
		descendant.destroyEvent:Connect(OnScriptDestroyed)
	end
end