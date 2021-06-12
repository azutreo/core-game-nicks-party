local Minigame = {}

Minigame.map = script:GetCustomProperty("Map")

Minigame.name = "Color Hex"
Minigame.description = "Watch for what color to run to; arrive too late and you will fall into the ocean! Oh no!"
Minigame.minimumNumberOfPlayers = 1
Minigame.time = 60 * 1.25
Minigame.equalWinners = true

Minigame.winners = {}
Minigame.activeParticipants = {}
Minigame.participants = {}
Minigame.deaths = {}

Minigame._count = 0

function Minigame.OnMinigameStarted(spawnedMap)
	math.randomseed(time())
end

function Minigame.OnMinigameLooped(spawnedMap)
	local waitTime = CoreMath.Clamp(4 - (Minigame._count / 4), 2, 5)
	Minigame._count = Minigame._count + 1

	local boards, platforms, timer =
		spawnedMap:GetCustomProperty("Boards"):WaitForObject():GetChildren(),
		spawnedMap:GetCustomProperty("Platforms"):WaitForObject():GetChildren(),
		spawnedMap:GetCustomProperty("Timer"):WaitForObject()

	local randomBoard = boards[math.random(#boards)]

	for _, board in pairs(boards) do
		if(board.name == randomBoard.name) then
			board.visibility = Visibility.INHERIT
		else
			board.visibility = Visibility.FORCE_OFF
		end
	end

	Task.Wait()

	local startTime = time()
	local task
	task = Task.Spawn(function()
		if(not Object.IsValid(timer)) then
			return task:Cancel()
		end
		timer.text = string.format("%.2f", CoreMath.Clamp(CoreMath.Round(waitTime - (time() - startTime), 2), 0, math.huge))
	end)
	task.repeatCount = -1
	task.repeatInterval = -1

	Task.Wait(waitTime)
	task:Cancel()
	timer.text = "0.00"

	for _, platform in pairs(platforms) do
		if(platform.name ~= randomBoard.name) then
			platform.visibility = Visibility.FORCE_OFF
			platform.collision = Collision.FORCE_OFF
		end
	end

	for _, board in pairs(boards) do
		board.visibility = Visibility.FORCE_OFF
	end

	Task.Wait(1.5)

	for _, platform in pairs(platforms) do
		platform.visibility = Visibility.FORCE_ON
		platform.collision = Collision.FORCE_ON
	end

end

function Minigame.OnMinigameEnded()
	Minigame._count = 0
end

return Minigame