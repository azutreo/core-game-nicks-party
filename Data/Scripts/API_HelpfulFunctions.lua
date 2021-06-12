local Module = {}

--[[
	FindPlayerByName(playerName) - Scans through all players and returns the one with the name passed through
	WaitForChild(parent, childName) - Will continuously wait until it finds a child, helpful for waiting for
									something on the client after it has been spawned on the server
	GetDescendants(parent) - will return all descendants of a coreobject in the order in the hierarchy
--]]

local function SpawnTask(func, ...)
	local connection
	connection = Events.Connect("Game_Server_Spawn_Task", function(...)
		func(...)
		connection:Disconnect()
	end)
	Events.Broadcast("Game_Server_Spawn_Task", ...)
end

function Module:FindPlayerByName(playerName)
	for _, player in pairs(Game.GetPlayers()) do
		if(player.name == playerName) then
			return player
		end
	end
end

function Module:WaitForChild(parent, childName, timeout)
	assert(Object.IsValid(parent), "Parent is not a valid Object")

	local child, connection
	connection = parent.childAddedEvent:Connect(function(_, newChild)
		if(newChild.name ~= childName) then return end

		child = newChild
		connection:Disconnect()
	end)

	child = parent:FindChildByName(childName)
	if(child) then
		connection:Disconnect()
		return child
	end

	local startTime = time()
	local runTime = 0
	if(not timeout) then
		timeout = 60
	end

	while(not child) do
		Task.Wait()
		runTime = time() - startTime

		if(runTime > timeout) then connection:Disconnect() return end
	end

	return child
end

local function scanParent(parent, descendants)
	for _, child in pairs(parent:GetChildren()) do
		table.insert(descendants, child)
		descendants = scanParent(child, descendants)
	end

	return descendants
end

function Module.GetDescendants(parent)
	assert(Object.IsValid(parent), "Parent is not a valid Object")

	return scanParent(parent, {})
end

function Module.BroadcastEvent(player, event, ...)
	print(player, event, ...)
	SpawnTask(function(...)
		if(Object.IsValid(player) and player:IsA("Player")) then
			while(Events.BroadcastToPlayer(player, event, ...) == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT) do
				Task.Wait()
			end
		elseif(type(player) == "string") then
			while(Events.BroadcastToAllPlayers(event, ...) == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT) do
				Task.Wait()
			end
		end
	end, ...)
end

function Module.BroadcastServerEvent(event, ...)
	SpawnTask(function(...)
		while(Events.BroadcastToServer(event, ...) == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT) do
			Task.Wait()
		end
	end, ...)
end

return Module