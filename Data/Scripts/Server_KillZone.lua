local KillZoneTrigger = script:GetCustomProperty("Trigger"):WaitForObject()

local function OnBeginOverlap(object, player)
	if(not player:IsA("Player")) then return end

	player:Die()
end

KillZoneTrigger.beginOverlapEvent:Connect(OnBeginOverlap)