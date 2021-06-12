local Minigame = {}

Minigame.map = script:GetCustomProperty("Map")

Minigame.name = "Cube"
Minigame.description = "Stay atop the cube until the round ends; would be unfortunate if gravity took you... :("
Minigame.minimumNumberOfPlayers = 1
Minigame.time = 60 * 0.75
Minigame.equalWinners = true

Minigame.winners = {}
Minigame.activeParticipants = {}
Minigame.participants = {}
Minigame.deaths = {}

function Minigame.OnMinigameStarted(spawnedMap)
	math.randomseed(time())
end

function Minigame.OnMinigameLooped(spawnedMap)
	local Cube = spawnedMap:GetCustomProperty("Cube"):WaitForObject()

	local randomRotation = Rotation.New(math.random(1, 360), math.random(1, 360), math.random(1, 360))
	Cube:RotateTo(randomRotation, 10)
	Task.Wait(10)
end

return Minigame