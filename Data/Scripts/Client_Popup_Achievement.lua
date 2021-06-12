local EaseUI = require(script:GetCustomProperty("EaseUI"))

local Panel = script:GetCustomProperty("Panel"):WaitForObject()
local AudioAchievementTemplate = script:GetCustomProperty("AudioAchievement")

local EASING_EQUATION = EaseUI.EasingEquation.BACK
local EASING_DIRECTION_IN = EaseUI.EasingDirection.OUT
local EASING_DIRECTION_OUT = EaseUI.EasingDirection.IN

local EASE_DURATION = 1
local PAUSE_TIME = 2
local X_GOAL_IN = -60
local X_GOAL_OUT = 400

local visible = false
local queue = 0

function HidePopup()
	EaseUI.EaseX(Panel, X_GOAL_OUT, EASE_DURATION/2, EASING_EQUATION, EASING_DIRECTION_OUT)
	Task.Wait(EASE_DURATION/2)

	visible = false
	if(queue > 0) then
		ShowPopup()
	else
		queue = 0
	end
end

function ShowPopup()
	if(visible) then return end
	visible = true

	queue = queue - 1

	World.SpawnAsset(AudioAchievementTemplate)

	EaseUI.EaseX(Panel, X_GOAL_IN, EASE_DURATION, EASING_EQUATION, EASING_DIRECTION_IN)
	Task.Wait(EASE_DURATION)

	Task.Wait(PAUSE_TIME)

	HidePopup()
end

local function OnShowReward()
	queue = queue + 1
	ShowPopup()
end

Events.Connect("UpdateAchievements", OnShowReward)