local Module = {}

local MINIGAME_PREFIX = "Minigame_"
local FORCED_MINIGAME = script:GetCustomProperty("ForcedMinigame")

Module._lastMinigameIndex = 0
Module._minigames = {}

function Module.GetRandomMinigame(numberOfPlayers)
	if(FORCED_MINIGAME and #FORCED_MINIGAME > 0) then
		for _, minigame in pairs(Module._minigames) do
			if(minigame.name == FORCED_MINIGAME) then
				return minigame
			end
		end
	end

	local index = math.random(#Module._minigames)
	if(index == Module._lastMinigameIndex) then return end

	local minigame = Module._minigames[index]

	if(numberOfPlayers < minigame.minimumNumberOfPlayers) then return end

	Module._lastMinigameIndex = index
	return minigame
end

for minigameName, minigameScript in pairs(script:GetCustomProperties()) do
	if(string.sub(minigameName, 1, #MINIGAME_PREFIX) == MINIGAME_PREFIX) then
		table.insert(Module._minigames, require(minigameScript))
	end
end

return Module