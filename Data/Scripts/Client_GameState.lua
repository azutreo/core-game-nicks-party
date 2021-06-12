local GameState = require(script:GetCustomProperty("API_GameState"))

local GameServer = script:GetCustomProperty("GameServer"):WaitForObject()
local GameStateText = script:GetCustomProperty("GameState"):WaitForObject()
local TimerText = script:GetCustomProperty("Timer"):WaitForObject()
local TimerShadowText = script:GetCustomProperty("TimerShadow"):WaitForObject()

local function GetGameState(gameStateInt)
	for gameStateName, gameState in pairs(GameState) do
		if(gameState == gameStateInt) then
			return gameStateName
		end
	end
end

function Tick()
	GameStateText.text = GetGameState(GameServer:GetCustomProperty("State") or 0)

	local totalSeconds = GameServer:GetCustomProperty("Timer")
	local minutes = math.floor(totalSeconds / 60)
	local seconds = math.floor(totalSeconds - (60 * minutes))

	TimerText.text = string.format("%002i:%002i", tostring(minutes), tostring(seconds))
	TimerShadowText.text = string.format("%002i:%002i", tostring(minutes), tostring(seconds))
end

