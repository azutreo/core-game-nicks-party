local GameServerScript = script:GetCustomProperty("GameServer"):WaitForObject()
local VictoryScreenCamera = script:GetCustomProperty("Camera"):WaitForObject()
local ConfettiVFX = script:GetCustomProperty("Confetti"):WaitForObject()
local BackgroundAudioGroup = script:GetCustomProperty("BackgroundAudio"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local lobbyAudio = BackgroundAudioGroup:GetCustomProperty("LobbyAudio"):WaitForObject()
local currentSong = lobbyAudio

function EnableVictoryScreen()
	LocalPlayer:SetOverrideCamera(VictoryScreenCamera)
	ConfettiVFX:Play()
end

function DisableVictoryScreen()
	LocalPlayer:ClearOverrideCamera()
	ConfettiVFX:Stop()
end

function Tick()
	local currentMinigame = GameServerScript:GetCustomProperty("Minigame")

	if(currentMinigame == currentSong.name) then return end
	if(currentMinigame == "" and currentSong == lobbyAudio) then return end

	if(currentMinigame == "") then
		currentSong:Stop()
		currentSong = lobbyAudio
		currentSong:Play()
	else
		local audio = BackgroundAudioGroup:FindChildByName(currentMinigame)
		if(Object.IsValid(audio)) then
			currentSong:Stop()
			currentSong = audio
			currentSong:Play()
		end
	end
end

Events.Connect("VictoryScreen_Enable", EnableVictoryScreen)
Events.Connect("VictoryScreen_Disable", DisableVictoryScreen)