local EaseUI = require(script:GetCustomProperty("EaseUI"))

local TogglesPanel = script:GetCustomProperty("Toggles"):WaitForObject()
local MenusPanel = script:GetCustomProperty("Menus"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local BINDING_MOUSE_TOGGLE = "ability_extra_14"
local EASE_GOAL_OUT_Y = -1000
local EASE_GOAL_IN_Y = 0
local EASE_DURATION = 0.5
local EASE_EQUATION = EaseUI.EasingEquation.BACK
local EASE_DIRECTION_IN = EaseUI.EasingDirection.OUT
local EASE_DIRECTION_OUT = EaseUI.EasingDirection.IN

local function EaseMenuIn(menu)
	EaseUI.EaseY(menu, EASE_GOAL_IN_Y, EASE_DURATION, EASE_EQUATION, EASE_DIRECTION_IN)
end

local function EaseMenuOut(menu)
	EaseUI.EaseY(menu, EASE_GOAL_OUT_Y, EASE_DURATION, EASE_EQUATION, EASE_DIRECTION_OUT)
end

local function OnToggleButtonClicked(button)
	if(LocalPlayer.clientUserData.activePinnedMenu) then return end

	Events.Broadcast("TogglePressed", button.name)

	local previousMenu = LocalPlayer.clientUserData.activeMenu
	if(Object.IsValid(previousMenu)) then
		EaseMenuOut(previousMenu)

		LocalPlayer.clientUserData.activeMenu = nil
		if(previousMenu.name == button.name) then return end
	end

	local menu = MenusPanel:FindChildByName(button.name)
	if(not menu) then return end

	LocalPlayer.clientUserData.activeMenu = menu
	EaseMenuIn(menu)
end

local function SetupToggleButton(button)
	if(not button:IsA("UIButton")) then return end

	button.clickedEvent:Connect(OnToggleButtonClicked)

	local menu = MenusPanel:FindChildByName(button.name)
	if(not menu) then return end

	menu.y = EASE_GOAL_OUT_Y
	menu.visibility = Visibility.FORCE_ON
end

local function ToggleMouse()
	if(LocalPlayer.clientUserData.activePinnedMenu) then return end
	if(LocalPlayer.clientUserData.activeMenu) then return end

	local active = UI.IsCursorVisible()
	UI.SetCursorVisible(not active)
	UI.SetCanCursorInteractWithUI(not active)
end

local function OnBindingReleased(player, binding)
	if(binding ~= BINDING_MOUSE_TOGGLE) then return end

	ToggleMouse()
end

LocalPlayer.bindingReleasedEvent:Connect(OnBindingReleased)

for _, toggleButton in pairs(TogglesPanel:GetChildren()) do
	SetupToggleButton(toggleButton)
end