local EaseUI = require(script:GetCustomProperty("EaseUI"))

local Panel = script:GetCustomProperty("Panel"):WaitForObject()
local RewardValueText = script:GetCustomProperty("RewardValue"):WaitForObject()
local AudioRewardTemplate = script:GetCustomProperty("AudioReward")

local EASING_EQUATION = EaseUI.EasingEquation.BACK
local EASING_DIRECTION_IN = EaseUI.EasingDirection.OUT
local EASING_DIRECTION_OUT = EaseUI.EasingDirection.IN

local EASE_DURATION = 1
local PAUSE_TIME = 2
local Y_DOWN_GOAL = 130
local Y_UP_GOAL = -200

local queue = {}

local currentReward

function HidePopup()
	EaseUI.EaseY(Panel, Y_UP_GOAL, EASE_DURATION/2, EASING_EQUATION, EASING_DIRECTION_OUT)
	Task.Wait(EASE_DURATION/2)

	currentReward = nil
	if(queue[1]) then
		ShowPopup()
	end
end

function ShowPopup()
	if(currentReward) then return end
	currentReward = queue[1]

	Panel.width = 125 + (40 * #tostring(currentReward))
	RewardValueText.text = tostring(currentReward)
	table.remove(queue, 1)

	World.SpawnAsset(AudioRewardTemplate)

	EaseUI.EaseY(Panel, Y_DOWN_GOAL, EASE_DURATION, EASING_EQUATION, EASING_DIRECTION_IN)
	Task.Wait(EASE_DURATION)

	Task.Wait(PAUSE_TIME)

	HidePopup()
end

local function OnShowReward(value)
	table.insert(queue, value)
	ShowPopup()
end

Events.Connect("Rewards_Show", OnShowReward)