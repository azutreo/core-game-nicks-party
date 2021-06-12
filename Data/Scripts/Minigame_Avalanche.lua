local Minigame = {}

local BallTemplate = script:GetCustomProperty("Ball")

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

Minigame.name = "Avalanche"
Minigame.description = "Reach the top as soon as you can; avoid the boulders, though!"
Minigame.minimumNumberOfPlayers = 1
Minigame.time = 60 * 1
Minigame.equalWinners = false

Minigame.winners = {}
Minigame.participants = {}
Minigame.activeParticipants = {}
Minigame.deaths = {}

Minigame._lastSpawn = time()

Minigame._goalConnection = nil

function Minigame.OnMinigameStarted(spawnedMap)
	Minigame._lastSpawn = time()

	local goalTrigger = spawnedMap:GetCustomProperty("Goal"):WaitForObject()
	Minigame._goalConnection = goalTrigger.beginOverlapEvent:Connect(OnReachGoal)

	math.randomseed(time())
end

function Minigame.OnMinigameLooped(spawnedMap)
	if(time() - Minigame._lastSpawn < 1) then return end
	Minigame._lastSpawn = time()

	local locations = spawnedMap:GetCustomProperty("BallSpawns"):WaitForObject():GetChildren()
	local randomLocation = locations[math.random(#locations)]

	local ball = World.SpawnAsset(BallTemplate, {
		position = randomLocation:GetWorldPosition()
	})
	local ballReal = ball:GetCustomProperty("Ball"):WaitForObject()
	ballReal:SetWorldPosition(randomLocation:GetWorldPosition())

	local trigger = ball:GetCustomProperty("Trigger"):WaitForObject()

	local a
	a = trigger.beginOverlapEvent:Connect(OnBeginOverlap)
	local b
	b = trigger.destroyEvent:Connect(function()
		a:Disconnect()
		b:Disconnect()
	end)
end

function Minigame.OnMinigameEnded(spawnedMap)
	Minigame._goalConnection:Disconnect()
	Minigame._goalConnection = nil
end

return Minigame