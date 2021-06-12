local MinigamesAPI = require(script:GetCustomProperty("API_Minigames"))
local TeamsAPI = require(script:GetCustomProperty("API_Teams"))
local GameStateAPI = require(script:GetCustomProperty("API_GameState"))
local PlayerDataAPI = require(script:GetCustomProperty("API_PlayerData"))
local HelpfulFunctionsAPI = require(script:GetCustomProperty("API_HelpfulFunctions"))

local MapsGroup = script:GetCustomProperty("Maps"):WaitForObject()
local LobbySpawn = script:GetCustomProperty("LobbySpawn"):WaitForObject()
local StandardPlayerSettings = script:GetCustomProperty("StandardPlayerSettings"):WaitForObject()
local FrozenPlayerSettings = script:GetCustomProperty("FrozenPlayerSettings"):WaitForObject()
local WinnersTeleportsGroup = script:GetCustomProperty("WinnersTeleports"):WaitForObject()

local GoAudioTemplate = script:GetCustomProperty("GoAudio")
local ImpactAudioTemplate = script:GetCustomProperty("AudioImpact")

local LOBBY_TIME = script:GetCustomProperty("LobbyTime")
local FORCED_DURATION = nil

local players = {}
local roundActive = false
local victoryScreenActive = false

local task, minigame, map

local function GoIntoWaiting()
	script:SetNetworkedCustomProperty("State", GameStateAPI.WAITING)
	script:SetNetworkedCustomProperty("Timer", 10)
	script:SetNetworkedCustomProperty("Minigame", "")
	script:SetNetworkedCustomProperty("Description", "")
end

local function ClearMaps()
	for _, spawnedMap in ipairs(MapsGroup:GetChildren()) do
		spawnedMap:Destroy()
	end
end

local function OnPlayerDied(player)
	World.SpawnAsset(ImpactAudioTemplate, {
		position = player:GetWorldPosition()
	})

	player.team = TeamsAPI.GetTeamByName("Lobby").id
	StandardPlayerSettings:ApplyToPlayer(player)

	if(minigame) then
		for index, activeParticipant in ipairs(minigame.activeParticipants) do
			if(activeParticipant == player) then
				table.remove(minigame.activeParticipants, index)
			end
		end
		table.insert(minigame.deaths, player)

		if(minigame.OnPlayerDied) then
			minigame.OnPlayerDied(player)
		end

		if(#minigame.activeParticipants < minigame.minimumNumberOfPlayers) then
			Game.EndRound()
		end
	end

	Task.Wait(1)

	if(not Object.IsValid(player)) then return end
	if(player.team ~= TeamsAPI.GetTeamByName("Lobby").id) then return end
	if(not player.isDead) then return end

	player:Respawn({
		position = LobbySpawn:GetWorldPosition(),
		rotation = LobbySpawn:GetWorldRotation()
	})
end

local function OnPlayerReady(player)
	table.insert(players, player)

	if(script:GetCustomProperty("State") ~= GameStateAPI.WAITING) then return end

	StartLobby()
end

local function OnPlayerJoined(player)
	local playerData = PlayerDataAPI.GetPlayerData(player)

	--playerData:Set("Currency", 10000)
	player:SetResource("Currency", playerData:Get("Currency", 0))
	player:SetResource("Wins", playerData:Get("Wins", 0))
	player:SetResource("Currency_Total", playerData:Get("Currency_Total", 0))
	player:SetResource("MinigamesPlayed", playerData:Get("MinigamesPlayed", 0))

	while(not player.serverUserData.connections) do Task.Wait() end
	table.insert(player.serverUserData.connections, player.diedEvent:Connect(OnPlayerDied))

	Task.Wait()
	player.team = TeamsAPI.GetTeamByName("Lobby").id
	player:Respawn({
		position = LobbySpawn:GetWorldPosition(),
		rotation = LobbySpawn:GetWorldRotation()
	})
end

local function OnPlayerLeft(player)
	for index, p in pairs(players) do
		if(p == player) then
			table.remove(players, index)
			break
		end
	end

	if(minigame) then
		for index, winner in ipairs(minigame.winners) do
			if(winner == player) then
				table.remove(minigame.winners, index)
			end
		end
		for index, participant in ipairs(minigame.participants) do
			if(participant == player) then
				table.remove(minigame.participants, index)
			end
		end
		for index, activeParticipant in ipairs(minigame.activeParticipants) do
			if(activeParticipant == player) then
				table.remove(minigame.activeParticipants, index)
			end
		end
		for index, deadPlayer in ipairs(minigame.deaths) do
			if(deadPlayer == player) then
				table.remove(minigame.deaths, index)
			end
		end

		if(#minigame.activeParticipants < minigame.minimumNumberOfPlayers) then
			Game.EndRound()
		end

		if(minigame.OnPlayerLeft) then
			minigame.OnPlayerLeft(player)
		end
	end

	if(#players > 0) then return end

	GoIntoWaiting()

	if(minigame) then
		Game.EndRound()
	end
end

local function OnToggleAfk(player, afk)
	if(afk) then
		for index, p in pairs(players) do
			if(p == player) then
				table.remove(players, index)
				break
			end
		end

		if(script:GetCustomProperty("State") ~= GameStateAPI.LOBBY) then return end
		if(#players > 0) then return end

		GoIntoWaiting()

		if(minigame) then
			Game.EndRound()
		end
	else
		for index, p in pairs(players) do
			if(p == player) then
				table.remove(players, index)
				break
			end
		end
		table.insert(players, player)

		if(script:GetCustomProperty("State") ~= GameStateAPI.WAITING) then return end

		StartLobby()
	end
end

local function OnRoundStart()
	if(roundActive) then return end
	roundActive = true

	script:SetNetworkedCustomProperty("State", GameStateAPI.PREPARING)
	script:SetNetworkedCustomProperty("Timer", 0)

	math.randomseed(time())

	minigame = MinigamesAPI.GetRandomMinigame(#players)
	while(type(minigame) ~= "table") do
		Task.Wait()
		minigame = MinigamesAPI.GetRandomMinigame(#players)
	end

	map = World.SpawnAsset(minigame.map, {
		parent = MapsGroup
	})

	Task.Wait(2)

	if(not minigame) then return end

	script:SetNetworkedCustomProperty("Timer", (FORCED_DURATION and (FORCED_DURATION + 7)) or (minigame.time and (minigame.time + 7)) or 67)
	script:SetNetworkedCustomProperty("State", GameStateAPI.ROUND)
	script:SetNetworkedCustomProperty("Minigame", minigame.name or "")

	for _, participant in ipairs(players) do
		table.insert(minigame.participants, participant)
		table.insert(minigame.activeParticipants, participant)
	end

	if(minigame.OnTeleportPlayers) then
		minigame.OnTeleportPlayers(map)
	else
		local spawns = map:GetCustomProperty("Spawns"):WaitForObject():GetChildren()
		for index, player in ipairs(minigame.participants) do
			player.team = TeamsAPI.GetTeamByName("Team 1").id
			player:ResetVelocity()

			if(minigame.playerSettings) then
				minigame.playerSettings:ApplyToPlayer(player)
			else
				FrozenPlayerSettings:ApplyToPlayer(player)
			end

			local spawnIndex = index % #spawns
			if(spawnIndex == 0) then
				spawnIndex = #spawns
			end
			local spawn = spawns[spawnIndex]
			player:Respawn({
				position = spawn:GetWorldPosition(),
				rotation = spawn:GetWorldRotation()
			})
		end
	end

	script:SetNetworkedCustomProperty("Description", minigame.description or " ")

	if(minigame.OnMinigameStarted) then
		minigame.OnMinigameStarted(map)
	end

	if(not minigame) then return end

	if(minigame.waitAfterStart) then
		Task.Wait(minigame.waitAfterStart)
	else
		Task.Wait(5)
	end

	if(not minigame) then return end

	World.SpawnAsset(GoAudioTemplate)
	script:SetNetworkedCustomProperty("Description", "")

	if(not minigame.dontOverridePlayerSettings) then
		for _, player in ipairs(minigame.participants) do
			StandardPlayerSettings:ApplyToPlayer(player)
		end
	end

	Task.Wait(2)

	if(minigame.OnMinigameLooped) then
		task = Task.Spawn(function()
			if(not minigame) then return end

			minigame.OnMinigameLooped(map)
		end)
		task.repeatCount = -1
		task.repeatInterval = -1
	end
end

local function RewardParticipant(player, equalWinners, winners, activeParticipants)
	if(not Object.IsValid(player)) then return end

	if(equalWinners) then
		for _, winner in pairs(activeParticipants) do
			if(winner == player) then return end
		end
	else
		for _, winner in pairs(winners) do
			if(winner == player) then return end
		end
	end

	local playerData = PlayerDataAPI.GetPlayerData(player)

	local currency = playerData:Get("Currency", 0) + 5
	local totalCurrency = playerData:Get("Currency_Total", 0) + 5

	playerData:Set("Currency", currency)
	player:SetResource("Currency", currency)
	playerData:Set("Currency_Total", totalCurrency)
	player:SetResource("Currency_Total", totalCurrency)

	HelpfulFunctionsAPI.BroadcastEvent(player, "Rewards_Show", 5)
end

local function RewardParticipants(participants, equalWinners, winners, activeParticipants)
	for _, player in ipairs(participants) do
		RewardParticipant(player, equalWinners, winners, activeParticipants)
	end
end

local function RewardWinner(player, index, equalWinners)
	if(not Object.IsValid(player)) then return end

	local didWin = false
	local reward
	if(equalWinners) then
		reward = 15
		didWin = true
	else
		if(index == 1) then
			reward = 25
			didWin = true
		elseif(index <= 3) then
			reward = 25 - (5 * (index - 1))
		else
			reward = 5
		end
	end
	if(not reward) then return end

	local playerData = PlayerDataAPI.GetPlayerData(player)

	local currency = playerData:Get("Currency", 0) + reward
	local totalCurrency = playerData:Get("Currency_Total", 0) + reward
	local wins = playerData:Get("Wins", 0) + 1

	playerData:Set("Currency", currency)
	player:SetResource("Currency", currency)
	playerData:Set("Currency_Total", totalCurrency)
	player:SetResource("Currency_Total", totalCurrency)

	if(didWin) then
		playerData:Set("Wins", wins)
		player:SetResource("Wins", wins)
	end

	HelpfulFunctionsAPI.BroadcastEvent(player, "Rewards_Show", reward)
end

local function RewardWinners(winners, activeParticipants, equalWinners)
	if(equalWinners) then
		for index, player in ipairs(activeParticipants) do
			RewardWinner(player, index, equalWinners)
		end
	else
		for index, player in ipairs(winners) do
			RewardWinner(player, index, equalWinners)
		end
	end
end

local function TeleportPlayerToVictoryScreen(player, teleports, count)
	if(not Object.IsValid(player)) then return end

	local teleport = teleports[count]
	player:ResetVelocity()
	player:Respawn({
		position = teleport:GetWorldPosition(),
		rotation = teleport:GetWorldRotation()
	})
	player:SetWorldPosition(teleport:GetWorldPosition())
	player:SetWorldRotation(teleport:GetWorldRotation())

	return count + 1
end

local function DisplayWinners(winners, activeParticipants, equalWinners)
	for _, player in ipairs(Game.GetPlayers()) do
		FrozenPlayerSettings:ApplyToPlayer(player)
	end

	local teleports = WinnersTeleportsGroup:GetChildren()
	local count = 1
	for _, player in ipairs(winners) do
		count = TeleportPlayerToVictoryScreen(player, teleports, count)
	end

	if(equalWinners) then
		for _, player in ipairs(activeParticipants) do
			count = TeleportPlayerToVictoryScreen(player, teleports, count)
		end
	end

	victoryScreenActive = true
	HelpfulFunctionsAPI.BroadcastEvent("All", "VictoryScreen_Enable")
end

local function ReturnPlayer(player)
	if(not Object.IsValid(player)) then return end

	local playerData = PlayerDataAPI.GetPlayerData(player)
	local minigamesPlayed = playerData:Get("MinigamesPlayed", 0) + 1
	playerData:Set("MinigamesPlayed", minigamesPlayed)
	player:SetResource("MinigamesPlayed", minigamesPlayed)

	if(player.team ~= TeamsAPI.GetTeamByName("Lobby").id) then return end
	if(not player.isDead) then return end

	player:Respawn({
		position = LobbySpawn:GetWorldPosition(),
		rotation = LobbySpawn:GetWorldRotation()
	})
end

local function OnRoundEnd()
	if(not roundActive) then return end
	roundActive = false

	GoIntoWaiting()

	if(task) then
		task:Cancel()
		task = nil
	end

	Task.Wait(1)

	ClearMaps()
	if(Object.IsValid(map)) then
		map:Destroy()
		map = nil
	end

	for _, player in ipairs(minigame.participants) do
		player.team = TeamsAPI.GetTeamByName("Lobby").id
		ReturnPlayer(player)
	end

	RewardParticipants(minigame.deaths, minigame.equalWinners, minigame.winners, minigame.activeParticipants)

	script:SetNetworkedCustomProperty("State", GameStateAPI.WINNERS)
	if((#minigame.winners >= 1) or (#minigame.activeParticipants >= 1)) then
		script:SetNetworkedCustomProperty("Minigame", "VictoryScreen")
		script:SetNetworkedCustomProperty("Timer", 5.5)

		RewardWinners(minigame.winners, minigame.activeParticipants, minigame.equalWinners)
		DisplayWinners(minigame.winners, minigame.activeParticipants, minigame.equalWinners)
	else
		script:SetNetworkedCustomProperty("Timer", 0)
	end

	minigame.winners = {}
	minigame.activeParticipants = {}
	minigame.participants = {}
	minigame.deaths = {}

	if(minigame.OnMinigameEnded) then
		minigame.OnMinigameEnded(map)
	end

	minigame = nil
end

function StartLobby()
	if(#players <= 0) then
		return GoIntoWaiting()
	end

	script:SetNetworkedCustomProperty("Timer", LOBBY_TIME)
	script:SetNetworkedCustomProperty("State", GameStateAPI.LOBBY)
	script:SetNetworkedCustomProperty("Minigame", "")

	for _, player in ipairs(Game.GetPlayers()) do
		StandardPlayerSettings:ApplyToPlayer(player)
	end

	if(victoryScreenActive) then
		victoryScreenActive = false
		HelpfulFunctionsAPI.BroadcastEvent("All", "VictoryScreen_Disable")
	end
end

function Tick(deltaTime)
	local gameState = script:GetCustomProperty("State")
	if((gameState == GameStateAPI.WAITING) or (gameState == GameStateAPI.PREPARING)) then return end

	script:SetNetworkedCustomProperty("Timer", CoreMath.Clamp(script:GetCustomProperty("Timer") - deltaTime, 0, math.huge))

	local totalSeconds = script:GetCustomProperty("Timer")
	if(totalSeconds <= 0) then
		if(gameState == GameStateAPI.LOBBY) then
			Game.StartRound()
		elseif(gameState == GameStateAPI.ROUND) then
			Game.EndRound()
		else
			StartLobby()
		end
	end
end

Events.ConnectForPlayer("AFK", OnToggleAfk)
Events.ConnectForPlayer("IntroComplete", OnPlayerReady)

Game.roundStartEvent:Connect(OnRoundStart)
Game.roundEndEvent:Connect(OnRoundEnd)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)