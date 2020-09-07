local Minigames = require(script:GetCustomProperty("Minigames"))

local LOBBY_TEAM = script:GetCustomProperty("LobbyTeam")

local players = Game.GetPlayers()

local task, minigame, map

local function playerDied(player)
	player.team = LOBBY_TEAM

	for index, possiblePlayer in pairs(minigame.players) do
		if(possiblePlayer == player) then
			table.remove(minigame.players, index)
		end
	end

	if(#minigame.players < minigame.minimumNumberOfPlayers) then
		Game.EndRound()
	end
end

local function playerJoined(player)
	players = Game.GetPlayers()

	player.diedEvent:Connect(playerDied)
end

local function playerLeft(player)
	players = Game.GetPlayers({ignorePlayers = player})

	if(#minigame.players < minigame.minimumNumberOfPlayers) then
		Game.EndRound()
	end
end

local function roundStarted()
	math.randomseed(time())

	minigame = Minigames.GetRandomMinigame(#players)
	while(not minigame) do
		minigame = Minigames.GetRandomMinigame(#players)
	end

	minigame.players = {}
	for _, player in pairs(players) do
		table.insert(minigame.players, player)
	end

	map = World.SpawnAsset(minigame.map, {
		position = Vector3.New(500000, 0, 0)
	})
	task = Task.Spawn(function()
		minigame.Function()

		Task.Wait(minigame.time)

		Game.EndRound()
	end)
end

local function roundEnded()
	minigame.players = {}
	minigame = nil

	if(task) then
		task:Cancel()
		task = nil
	end

	if(map) then
		map:Destroy()
		map = nil
	end

	Task.Wait(1)
	Game.StartRound()
end

Game.roundStartEvent:Connect(roundStarted)
Game.roundEndEvent:Connect(roundEnded)

Game.playerJoinedEvent:Connect(playerJoined)
Game.playerLeftEvent:Connect(playerLeft)

Game.StartRound()