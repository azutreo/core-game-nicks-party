local Panel = script:GetCustomProperty("Panel"):WaitForObject()
local LeftButton = script:GetCustomProperty("LeftButton"):WaitForObject()
local RightButton = script:GetCustomProperty("RightButton"):WaitForObject()
local NameText = script:GetCustomProperty("Name"):WaitForObject()
local NameShadowText = script:GetCustomProperty("NameShadow"):WaitForObject()
local Camera = script:GetCustomProperty("Camera"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local players = Game.GetPlayers({ignorePlayers = {LocalPlayer}})

local debounce = false
local currentlySpectating

local function GetCurrentPlayerIndex()
	if(not currentlySpectating) then return end

	for index, player in ipairs(players) do
		if(player == currentlySpectating) then
			return index
		end
	end
end

local function SpectatePreviousPlayer()
	local currentPlayerIndex = GetCurrentPlayerIndex()
	if(not currentPlayerIndex) then return end

	local numberOfPlayers = #players

	local previousPlayerIndex = currentPlayerIndex - 1
	if(previousPlayerIndex < 1) then
		previousPlayerIndex = numberOfPlayers
	end

	local newPlayer = players[previousPlayerIndex]
	if(not newPlayer) then return end

	Spectate(newPlayer)
end

local function SpectateNextPlayer()
	local currentPlayerIndex = GetCurrentPlayerIndex()
	if(not currentPlayerIndex) then return end

	local numberOfPlayers = #players

	local nextPlayerIndex = currentPlayerIndex + 1
	if(nextPlayerIndex > numberOfPlayers) then
		nextPlayerIndex = 1
	end

	local newPlayer = players[nextPlayerIndex]
	if(not newPlayer) then return end

	Spectate(newPlayer)
end

local function SpectateFirstPlayer()
	local newPlayer = players[1]
	if(not newPlayer) then return end

	Spectate(newPlayer)
end

local function OnPlayerJoined(player)
	players = Game.GetPlayers({ignorePlayers = {LocalPlayer}})
end

local function OnPlayerLeft(player)
	players = Game.GetPlayers({ignorePlayers = {LocalPlayer, player}})

	if(currentlySpectating == player) then
		SpectateNextPlayer()
	end
end

local function ToggleSpectate(buttonName)
	if(buttonName ~= "Spectate") then return end

	if(currentlySpectating) then
		Unspectate()
	else
		SpectateFirstPlayer()
	end
end

local function OnBindingReleased(player, binding)
	if(not currentlySpectating) then return end

	if(binding == "ability_extra_48" or binding == "ability_extra_30") then
		SpectatePreviousPlayer()
	elseif(binding == "ability_extra_49" or binding == "ability_extra_32") then
		SpectateNextPlayer()
	end
end

function Spectate(player)
	if(Camera.followPlayer == player) then return end
	if((LocalPlayer:GetActiveCamera() ~= LocalPlayer:GetDefaultCamera()) and (LocalPlayer:GetActiveCamera() ~= Camera)) then return end

	if(debounce) then return end
	debounce = true

	currentlySpectating = player

	LocalPlayer:SetOverrideCamera(Camera)
	Camera.followPlayer = player

	NameText.text = player.name
	NameShadowText.text = player.name
	Panel.visibility = Visibility.INHERIT

	debounce = false
end

function Unspectate()
	currentlySpectating = nil

	Panel.visibility = Visibility.FORCE_OFF
	NameText.text = ""
	NameShadowText.text = ""

	Camera.followPlayer = nil

	if((LocalPlayer:GetActiveCamera() ~= LocalPlayer:GetDefaultCamera()) and (LocalPlayer:GetActiveCamera() ~= Camera)) then return end
	LocalPlayer:ClearOverrideCamera()
end

Events.Connect("TogglePressed", ToggleSpectate)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

LocalPlayer.bindingReleasedEvent:Connect(OnBindingReleased)

LeftButton.clickedEvent:Connect(SpectatePreviousPlayer)
RightButton.clickedEvent:Connect(SpectateNextPlayer)