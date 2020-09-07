local Void = script:GetCustomProperty("Trigger"):WaitForObject()

local function enteredVoid(object, player)
	if(not player:IsA("Player")) then return end

	player:Die()
end

Void.beginOverlapEvent:Connect(enteredVoid)