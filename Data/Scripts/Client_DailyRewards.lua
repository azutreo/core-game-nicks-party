local EaseUI = require(script:GetCustomProperty("EaseUI"))
local DailyRewardsAPI = require(script:GetCustomProperty("API_DailyRewards"))

local Panel = script:GetCustomProperty("Panel"):WaitForObject()
local Content = script:GetCustomProperty("Content"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local DAY_COUNT = 7

local EASING_EQUATION = EaseUI.EasingEquation.BACK
local EASING_DIRECTION_OUT = EaseUI.EasingDirection.IN

local EASE_DURATION = 0.5
local Y_UP_GOAL = -2000

local debounce = false

local function OnRewardClaimed(index)
	if(debounce) then return end
	debounce = true

	while(Events.BroadcastToServer("DailyRewards_Collect") == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT) do
		Task.Wait()
	end

	Events.Broadcast("Rewards_Show", DailyRewardsAPI.GetReward(index).value)

	EaseUI.EaseY(Panel, Y_UP_GOAL, EASE_DURATION, EASING_EQUATION, EASING_DIRECTION_OUT)
	Task.Wait(EASE_DURATION)
	Panel.visibility = Visibility.FORCE_OFF

	UI.SetCanCursorInteractWithUI(false)
	UI.SetCursorVisible(false)

	LocalPlayer.clientUserData.activePinnedMenu = nil
end

local function OnDaysCollected(rewardData)
	local today = os.date("*t").day
	local collectedDayCount = tonumber(rewardData:sub(-2))
	local latestCollectableDay = today

	local lastTimeCollected = tonumber(rewardData:sub(1, 8), 16)
	if os.time() - lastTimeCollected >= 86400 or today ~= os.date("*t", lastTimeCollected).day then -- not the same day as the last collect
		latestCollectableDay = collectedDayCount + 1 -- can collect the next day
	else
		latestCollectableDay = collectedDayCount
	end

	if(latestCollectableDay == (DAY_COUNT + 1)) then -- able to collect the first day of the next month, clear the calendar
		collectedDayCount = 0
		latestCollectableDay = 1
	end

	if(collectedDayCount == latestCollectableDay) then return end

	local panel = Content:GetChildren()[latestCollectableDay]
	LocalPlayer.clientUserData.activePinnedMenu = panel

	local button, disabled =
		panel:GetCustomProperty("Button"):WaitForObject(),
		panel:GetCustomProperty("Disabled"):WaitForObject()

	button.clickedEvent:Connect(function()
		OnRewardClaimed(latestCollectableDay)
	end)

	disabled.visibility = Visibility.FORCE_OFF
	Panel.visibility = Visibility.INHERIT

	UI.SetCanCursorInteractWithUI(true)
	UI.SetCursorVisible(true)
end

Events.Connect("DailyRewards_DaysCollected", OnDaysCollected)

while(Events.BroadcastToServer("DailyRewards_GetDaysCollected") == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT) do
	Task.Wait()
end