local PlayerDataAPI = require(script:GetCustomProperty("API_PlayerData"))
local DailyRewardsAPI = require(script:GetCustomProperty("API_DailyRewards"))

local DAY_COUNT = 7

local function OnGetDaysCollected(player)
	local playerData = PlayerDataAPI.GetPlayerData(player)

	if(not playerData:Get("RewardCalendar")) then
		playerData:Set("RewardCalendar", ("%08X%02d"):format(0, 0))
	end

	while Events.BroadcastToPlayer(player, "DailyRewards_DaysCollected", playerData:Get("RewardCalendar")) == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT do
		Task.Wait()
	end
end

local function OnCollectReward(player)
	local playerData = PlayerDataAPI.GetPlayerData(player)
	local rewardCalendar = playerData:Get("RewardCalendar")
	assert(rewardCalendar ~= nil, "GetDaysCollected must be invoked first")

	-- first 8 characters are os.time() converted to hex
	local lastTimeCollected = tonumber(rewardCalendar:sub(1, 8), 16)

	-- already collected today
	if os.time() < lastTimeCollected + 86400 and os.date("*t").day == os.date("*t", lastTimeCollected).day then return end

	-- last 2 characters represent the number of days collected
	local day = (tonumber(rewardCalendar:sub(-2)) % DAY_COUNT) + 1
	playerData:Set("RewardCalendar", ("%08X%02d"):format(os.time(), day))

	local currency = playerData:Get("Currency", 0) + DailyRewardsAPI.GetReward(day).value
	local totalCurrency = playerData:Get("Currency_Total", 0) + DailyRewardsAPI.GetReward(day).value
	playerData:Set("Currency", currency)
	player:SetResource("Currency", currency)
	playerData:Set("Currency_Total", totalCurrency)
	player:SetResource("Currency_Total", totalCurrency)
end

Events.ConnectForPlayer("DailyRewards_GetDaysCollected", OnGetDaysCollected)
Events.ConnectForPlayer("DailyRewards_Collect", OnCollectReward)