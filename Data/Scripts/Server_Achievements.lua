local AchievementsAPI = require(script:GetCustomProperty("API_Achievements"))
local PlayerDataAPI = require(script:GetCustomProperty("API_PlayerData"))
local HelpfulFunctionsAPI = require(script:GetCustomProperty("API_HelpfulFunctions"))

local function DoesAlreadyHaveAchievement(achievements, achievement)
	local alreadyHas = false
	for _, a in pairs(achievements) do
		if(a == achievement.id) then
			alreadyHas = true
			break
		end
	end

	return alreadyHas
end

local function AlreadyClaimedAchievement(claimedAchievements, achievement)
	local alreadyHas = false
	for _, a in pairs(claimedAchievements) do
		if(a == achievement.id) then
			alreadyHas = true
			break
		end
	end

	return alreadyHas
end

local function UpdateAchievement(player, playerData, achievement, achievements, resourceName, resourceValue)
	if(achievement.type ~= resourceName) then return end
	if(resourceValue < achievement.compare) then return end

	local alreadyHas = DoesAlreadyHaveAchievement(achievements, achievement)
	if(alreadyHas) then return end

	table.insert(achievements, achievement.id)
	playerData:Set("Achievements", achievements)

	HelpfulFunctionsAPI.BroadcastEvent(player, "UpdateAchievements", table.unpack(achievements))
end

local function OnResourceChanged(player, resourceName, resourceValue)
	local playerData = PlayerDataAPI.GetPlayerData(player)
	local achievements = playerData:Get("Achievements", {})

	for _, achievement in pairs(AchievementsAPI.achievements) do
		UpdateAchievement(player, playerData, achievement, achievements, resourceName, resourceValue)
	end
end

local function OnPlayerJoined(player)
	player.resourceChangedEvent:Connect(OnResourceChanged)
end

local function GetClaimedAchievements(player)
	local playerData = PlayerDataAPI.GetPlayerData(player)
	local achievementsClaimed = playerData:Get("Achievements_Claimed", {})

	if(#achievementsClaimed <= 0) then return end
	HelpfulFunctionsAPI.BroadcastEvent(player, "AchievementsClaimed_Set", table.unpack(achievementsClaimed))
end

local function GetAchievements(player)
	local playerData = PlayerDataAPI.GetPlayerData(player)
	local achievements = playerData:Get("Achievements", {})

	if(#achievements <= 0) then return end
	HelpfulFunctionsAPI.BroadcastEvent(player, "Achievements_Set", table.unpack(achievements))
end

local function ClaimAchievementReward(player, achievementId)
	local achievement = AchievementsAPI.GetAchievementById(achievementId)
	if(not achievement) then return end

	local playerData = PlayerDataAPI.GetPlayerData(player)
	local achievements = playerData:Get("Achievements", {})
	local achievementsClaimed = playerData:Get("Achievements_Claimed", {})

	local alreadyHas = DoesAlreadyHaveAchievement(achievements, achievement)
	local alreadyClaimed = AlreadyClaimedAchievement(achievementsClaimed, achievement)
	if(not alreadyHas) then return end
	if(alreadyClaimed) then return end

	local currency = playerData:Get("Currency", 0) + achievement.reward
	local totalCurrency = playerData:Get("Currency_Total", 0) + achievement.reward
	playerData:Set("Currency", currency)
	player:SetResource("Currency", currency)
	playerData:Set("Currency_Total", totalCurrency)
	player:SetResource("Currency_Total", totalCurrency)

	table.insert(achievementsClaimed, achievement.id)
	playerData:Set("Achievements_Claimed", achievementsClaimed)

	HelpfulFunctionsAPI.BroadcastEvent(player, "Rewards_Show", achievement.reward)
	HelpfulFunctionsAPI.BroadcastEvent(player, "AchievementsClaimed_Set", table.unpack(achievementsClaimed))
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

Events.ConnectForPlayer("Achievements_Claim", ClaimAchievementReward)
Events.ConnectForPlayer("Achievements_Get", GetAchievements)
Events.ConnectForPlayer("AchievementsClaimed_Get", GetClaimedAchievements)