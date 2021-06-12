local AchievementsAPI = require(script:GetCustomProperty("API_Achievements"))
local HelpfulFunctionsAPI = require(script:GetCustomProperty("API_HelpfulFunctions"))

local ScrollPanel = script:GetCustomProperty("ScrollPanel"):WaitForObject()
local NotificationImage = script:GetCustomProperty("Notification"):WaitForObject()
local AchievementTemplate = script:GetCustomProperty("Achievement")

local LocalPlayer = Game.GetLocalPlayer()

local COLOR_CLAIMED = Color.FromStandardHex("#1e1e1e")
local COLOR_UNCLAIMED = Color.FromStandardHex("#4caf50")

local numberOfAchievements = 0
local achievementsHave = {}
local claimedAchievements = {}

local function DoesHaveAchievement(achievementId)
	for _, achievement in pairs(achievementsHave) do
		if(achievementId == achievement) then
			return true
		end
	end

	return false
end

local function IsAchievementClaimed(achievementId)
	for _, achievement in pairs(claimedAchievements) do
		if(achievementId == achievement) then
			return true
		end
	end

	return false
end

local function ClaimAchievementReward(achievement)
	local has = DoesHaveAchievement(achievement.id)
	local claimed = IsAchievementClaimed(achievement.id)
	if(not has) then return end
	if(claimed) then return end

	HelpfulFunctionsAPI.BroadcastServerEvent("Achievements_Claim", achievement.id)
end

local function CreateAchievement(achievement)
	local panel = World.SpawnAsset(AchievementTemplate, {
		parent = ScrollPanel
	})
	panel.name = tostring(achievement.id)
	panel.y = (panel.height * numberOfAchievements) + (5 * numberOfAchievements)

	local achievementText, rewardText, button =
		panel:GetCustomProperty("Achievement"):WaitForObject(),
		panel:GetCustomProperty("Reward"):WaitForObject(),
		panel:GetCustomProperty("Button"):WaitForObject()

	achievementText.text = achievement.name
	rewardText.text = string.format("%s COINS", achievement.reward)

	button.clickedEvent:Connect(function()
		ClaimAchievementReward(achievement)
	end)

	numberOfAchievements = numberOfAchievements + 1
end

local function UpdateAchievement(achievement)
	local panel = ScrollPanel:FindChildByName(tostring(achievement.id))
	if(not panel) then return end

	local disabledImage, buttonColor, buttonPanel =
		panel:GetCustomProperty("Disabled"):WaitForObject(),
		panel:GetCustomProperty("ButtonColor"):WaitForObject(),
		panel:GetCustomProperty("ButtonPanel"):WaitForObject()

	local hasAchievement = DoesHaveAchievement(achievement.id)
	local isClaimed = IsAchievementClaimed(achievement.id)

	if(hasAchievement) then
		buttonPanel.visibility = Visibility.INHERIT
		disabledImage.visibility = Visibility.FORCE_OFF
	else
		buttonPanel.visibility = Visibility.FORCE_OFF
		disabledImage.visibility = Visibility.INHERIT
	end

	if(isClaimed) then
		buttonColor:SetColor(COLOR_CLAIMED)
	else
		buttonColor:SetColor(COLOR_UNCLAIMED)
	end
end

local function UpdateAchievements(...)
	achievementsHave = {...}

	if(#claimedAchievements < #achievementsHave) then
		NotificationImage.visibility = Visibility.INHERIT
	else
		NotificationImage.visibility = Visibility.FORCE_OFF
	end

	for _, achievement in pairs(AchievementsAPI.achievements) do
		UpdateAchievement(achievement)
	end
end

local function SetClaimedAchievements(...)
	claimedAchievements = {...}

	if(#claimedAchievements < #achievementsHave) then
		NotificationImage.visibility = Visibility.INHERIT
	else
		NotificationImage.visibility = Visibility.FORCE_OFF
	end

	for _, achievement in pairs(AchievementsAPI.achievements) do
		UpdateAchievement(achievement)
	end
end

for _, achievement in pairs(AchievementsAPI.achievements) do
	CreateAchievement(achievement)
end

Events.Connect("UpdateAchievements", UpdateAchievements)
Events.Connect("Achievements_Set", UpdateAchievements)
Events.Connect("AchievementsClaimed_Set", SetClaimedAchievements)
HelpfulFunctionsAPI.BroadcastServerEvent("Achievements_Get")
HelpfulFunctionsAPI.BroadcastServerEvent("AchievementsClaimed_Get")