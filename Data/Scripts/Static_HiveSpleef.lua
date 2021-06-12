local SceneryGroup = script:GetCustomProperty("Scenery"):WaitForObject()

local platformConnections = {}
local deleted = {}

local ready = false

local function DeletePlatform(platform)
	if(deleted[platform]) then return end
	deleted[platform] = true

	if(platformConnections[platform]) then
		for _, connection in pairs(platformConnections[platform]) do
			connection:Disconnect()
		end
		platformConnections[platform] = nil
	end

	Task.Wait(1)
	if(not Object.IsValid(platform)) then return end

	platform:Destroy()
end

local function OnTriggerOverlapped(trigger, player)
	if(not ready) then return end
	if(not Object.IsValid(player) or not player:IsA("Player")) then return end

	DeletePlatform(trigger.parent)
end

local function OnScriptDestroy()
	for _, platform in pairs(platformConnections) do
		for _, connection in pairs(platform) do
			connection:Disconnect()
		end
	end

	platformConnections = {}
end

script.destroyEvent:Connect(OnScriptDestroy)

for _, row in pairs(SceneryGroup:GetChildren()) do
	for _, platform in pairs(row:GetChildren()) do
		platformConnections[platform] = {}
		for _, trigger in pairs(platform:GetChildren()) do
			if(Object.IsValid(trigger) and trigger:IsA("Trigger")) then
				platformConnections[platform][trigger] = trigger.beginOverlapEvent:Connect(OnTriggerOverlapped)
			end
		end
	end
end

Task.Wait(9)
ready = true

for _, row in pairs(SceneryGroup:GetChildren()) do
	for _, platform in pairs(row:GetChildren()) do
		platformConnections[platform] = {}
		for _, trigger in pairs(platform:GetChildren()) do
			if(Object.IsValid(trigger) and trigger:IsA("Trigger")) then
				for _, player in pairs(Game.GetPlayers()) do
					if(trigger:IsOverlapping(player)) then
						OnTriggerOverlapped(trigger, player)
					end
				end
			end
		end
	end
end