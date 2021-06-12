local Minigame = {}

local GOAL_ROTATION = Rotation.New(0, 0, 180)

local function OnReachGoal(trigger, object)
	if(not object:IsA("Player")) then return end

	table.insert(Minigame.winners, object)
	object:Die()
end

local function OnBeginOverlap(trigger, object)
	if(not object:IsA("Player")) then return end

	object:Die()
end

Minigame.map = script:GetCustomProperty("Map")

Minigame.name = "Wipeout!"
Minigame.description = "Be one of the first to reach the end of this quick and simple obstacle course!"
Minigame.minimumNumberOfPlayers = 1
Minigame.time = 60 * 0.75
Minigame.equalWinners = false

Minigame.winners = {}
Minigame.activeParticipants = {}
Minigame.participants = {}
Minigame.deaths = {}

Minigame._goalConnection = nil
Minigame._connections = {}

function Minigame.OnMinigameStarted(spawnedMap)
	Minigame._lastSpawn = time()

	local goalTrigger = spawnedMap:GetCustomProperty("Goal"):WaitForObject()
	Minigame._goalConnection = goalTrigger.beginOverlapEvent:Connect(OnReachGoal)

	for _, spinner in pairs(spawnedMap:GetCustomProperty("Spinners"):WaitForObject():GetChildren()) do
		local trigger = spinner:GetCustomProperty("Trigger"):WaitForObject()
		table.insert(Minigame._connections, trigger.beginOverlapEvent:Connect(OnBeginOverlap))
		spinner:RotateContinuous(GOAL_ROTATION, 0.5, true)
	end
end

function Minigame.OnMinigameEnded(spawnedMap)
	Minigame._goalConnection:Disconnect()
	Minigame._goalConnection = nil

	for _, connection in pairs(Minigame._connections) do
		connection:Disconnect()
	end
	Minigame._connections = {}
end

return Minigame