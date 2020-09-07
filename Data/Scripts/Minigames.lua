local MINIGAME_PREFIX = "Minigame_"

local Module = {}

Module._lastMinigameIndex = 0
Module._minigames = {}

for minigameName, minigameScript in pairs(script:GetCustomProperties()) do
	if(string.sub(minigameName, 1, #MINIGAME_PREFIX) == MINIGAME_PREFIX) then
		local minigame = require(minigameScript)
		table.insert(Module._minigames, minigame)
	end
end

function Module.GetRandomMinigame(numberOfPlayers)
	local index = math.random(#Module._minigames)
	if(index == Module._lastMinigameIndex) then return end

	local minigame = Module._minigames[index]

	if(numberOfPlayers < minigame.minimumNumberOfPlayers) then return end

	Module._lastMinigameIndex = index
	return minigame
end

return Module