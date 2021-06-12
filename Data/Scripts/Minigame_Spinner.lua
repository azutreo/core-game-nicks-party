local Minigame = {}

local SpinnerPlayerSettings = script:GetCustomProperty("SpinnerPlayerSettings"):WaitForObject()

local function OnBeginOverlap(trigger, object)
	if(not object:IsA("Player")) then return end

	object:Die()
end

Minigame.map = script:GetCustomProperty("Map")

Minigame.name = "Spinner"
Minigame.description = "Jump once the spinner gets to you; beware, it speeds up as the round goes on!"
Minigame.minimumNumberOfPlayers = 1
Minigame.time = 60 * 1
Minigame.equalWinners = true

Minigame.playerSettings = SpinnerPlayerSettings
Minigame.dontOverridePlayerSettings = true

Minigame.winners = {}
Minigame.participants = {}
Minigame.activeParticipants = {}
Minigame.deaths = {}

Minigame._counter = 0

Minigame._spinnerConnection = nil

function Minigame.OnMinigameStarted(spawnedMap)
	local spinnerTrigger = spawnedMap:GetCustomProperty("SpinnerTrigger"):WaitForObject()
	Minigame._spinnerConnection = spinnerTrigger.beginOverlapEvent:Connect(OnBeginOverlap)
end

function Minigame.OnMinigameLooped(spawnedMap)
	local spinner = spawnedMap:GetCustomProperty("Spinner"):WaitForObject()

	local timeToSpin = CoreMath.Clamp(0.1 * (Minigame._counter/2), 0.1, 0.7)
	Minigame._counter = Minigame._counter + 1

	spinner:RotateContinuous(Rotation.New(0, 0, -180), timeToSpin)
	Task.Wait(1 / timeToSpin)
end

function Minigame.OnMinigameEnded(spawnedMap)
	Minigame._counter = 0

	Minigame._spinnerConnection:Disconnect()
	Minigame._spinnerConnection = nil
end

return Minigame