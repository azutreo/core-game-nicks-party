local EaseUI = require(script:GetCustomProperty("EaseUI"))

local PopSound = script:GetCustomProperty("PopSound"):WaitForObject()
local ScreenFadeSound = script:GetCustomProperty("ScreenFadeSound"):WaitForObject()

local Background = script:GetCustomProperty("Background"):WaitForObject()
local Sparkles = script:GetCustomProperty("Sparkles"):WaitForObject()
local WelcomeScreen = script:GetCustomProperty("WelcomeScreen"):WaitForObject()
local GameName = script:GetCustomProperty("GameName"):WaitForObject()
local CreatedBy = script:GetCustomProperty("CreatedBy"):WaitForObject()
local GameCreator = script:GetCustomProperty("GameCreator"):WaitForObject()

local FADE_OUT_DURATION = 1
local FADE_BEGIN_COLOR = Color.New(0.012983, 0.01096, 0.017642, 1)
local FADE_END_COLOR = Color.New(0.012983, 0.01096, 0.017642, 0)

local function setPosition(fluidUIPosition, property, newValue)
	while(not fluidUIPosition.context[property]) do
		Task.Wait()
	end

	Task.Wait()
	fluidUIPosition.context[property] = newValue
	fluidUIPosition.context.Update()
end

local function ease(fluidUIPosition, property, easeDuration, easingEquation)
	if(property == "x") then
		EaseUI.EaseFluidUIPercentX(fluidUIPosition, 0, easeDuration, easingEquation, EaseUI.EasingDirection.INOUT)
	elseif(property == "y") then
		EaseUI.EaseFluidUIPercentY(fluidUIPosition, 0, easeDuration, easingEquation, EaseUI.EasingDirection.INOUT)
	end

	Task.Wait(0.5)
	PopSound:Play()
	Task.Wait(0.5)
end

local function fadeOutWelcomeScreen()
	EaseUI.EaseFluidUIPercentY(GameName, -1, 0.5, EaseUI.EasingEquation.ELASTIC, EaseUI.EasingDirection.INOUT)
	EaseUI.EaseFluidUIPercentX(CreatedBy, -1.5, 0.5, EaseUI.EasingEquation.ELASTIC, EaseUI.EasingDirection.INOUT)
	EaseUI.EaseFluidUIPercentX(GameCreator, 1.5, 0.5, EaseUI.EasingEquation.ELASTIC, EaseUI.EasingDirection.INOUT)

	ScreenFadeSound:Play()

	local startTime = time()
	local task
	task = Task.Spawn(function()
		local deltaTime = time() - startTime
		if(deltaTime >= FADE_OUT_DURATION) then
			Background:SetColor(FADE_END_COLOR)
			Sparkles.visibility = Visibility.FORCE_OFF

			Events.BroadcastToServer("IntroComplete")

			return task:Cancel()
		end

		Background:SetColor(Color.Lerp(FADE_BEGIN_COLOR, FADE_END_COLOR, deltaTime / FADE_OUT_DURATION))
	end)
	task.repeatCount = -1
	task.repeatInterval = -1
end

local function animateWelcomeScreen()
	setPosition(GameName, "Percent", Vector2.New(0, -1))
	setPosition(CreatedBy, "Percent", Vector2.New(-1.5, 0))
	setPosition(GameCreator, "Percent", Vector2.New(1.5, 0))

	Background:SetColor(FADE_BEGIN_COLOR)
	WelcomeScreen.visibility = Visibility.FORCE_ON
	Sparkles.visibility = Visibility.FORCE_ON

	ease(GameName, "y", 1, EaseUI.EasingEquation.BOUNCE)
	ease(CreatedBy, "x", 1, EaseUI.EasingEquation.ELASTIC)
	ease(GameCreator, "x", 1, EaseUI.EasingEquation.ELASTIC)
end

local function playBeginningSequence()
	animateWelcomeScreen()

	Task.Wait(0.5)

	fadeOutWelcomeScreen()
end

playBeginningSequence()