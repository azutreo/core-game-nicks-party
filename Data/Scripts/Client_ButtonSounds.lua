local HelpfulFunctionsAPI = require(script:GetCustomProperty("API_HelpfulFunctions"))

local UserInterfaceFolder = script:GetCustomProperty("UserInterface"):WaitForObject()
local PressAudioTemplate = script:GetCustomProperty("ButtonPressAudio")
local ReleaseAudioTemplate = script:GetCustomProperty("ButtonReleaseAudio")
local HoverAudioTemplate = script:GetCustomProperty("ButtonHoverAudio")

local function OnButtonHovered(button)
	World.SpawnAsset(HoverAudioTemplate)
end

local function OnButtonPressed(button)
	World.SpawnAsset(PressAudioTemplate)
end

local function OnButtonReleased(button)
	World.SpawnAsset(ReleaseAudioTemplate)
end

local function SetupButton(button)
	button.hoveredEvent:Connect(OnButtonHovered)
	button.pressedEvent:Connect(OnButtonPressed)
	button.releasedEvent:Connect(OnButtonReleased)
end

local function OnDescendantAdded(parent, button)
	if(not button:IsA("UIButton")) then return end

	SetupButton(button)
end

UserInterfaceFolder.descendantAddedEvent:Connect(OnDescendantAdded)

for _, button in pairs(HelpfulFunctionsAPI.GetDescendants(UserInterfaceFolder)) do
	if(button:IsA("UIButton")) then
		SetupButton(button)
	end
end