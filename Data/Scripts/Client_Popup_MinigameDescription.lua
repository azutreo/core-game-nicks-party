local GameServer = script:GetCustomProperty("GameServer"):WaitForObject()
local Panel = script:GetCustomProperty("Panel"):WaitForObject()
local MinigameNameText = script:GetCustomProperty("MinigameName"):WaitForObject()
local MinigameDescriptionText = script:GetCustomProperty("MinigameDescription"):WaitForObject()
local Camera = script:GetCustomProperty("Camera"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local function OnNetworkedCustomPropertyChanged(object, propertyName)
	if(propertyName ~= "Description") then return end

	local description = GameServer:GetCustomProperty("Description")
	if(description == "") then
		Panel.visibility = Visibility.FORCE_OFF
		LocalPlayer:ClearOverrideCamera(0.5)
	else
		MinigameNameText.text = string.upper(GameServer:GetCustomProperty("Minigame"))
		MinigameDescriptionText.text = string.upper(GameServer:GetCustomProperty("Description"))
		Panel.visibility = Visibility.FORCE_ON
		LocalPlayer:SetOverrideCamera(Camera)
	end
end

GameServer.networkedPropertyChangedEvent:Connect(OnNetworkedCustomPropertyChanged)