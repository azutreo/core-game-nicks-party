local BanAPI = require(script:GetCustomProperty("API_Bans"))

local BAN_GAME_ID = script:GetCustomProperty("BanGameId")

local function OnPlayerJoined(player)
	local isBanned = BanAPI.GetIsBanned(player)
	if(not isBanned) then return end

	while(Object.IsValid(player)) do
		player:TransferToGame(BAN_GAME_ID)
		Task.Wait(1)
	end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)