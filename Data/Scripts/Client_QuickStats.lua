local CurrencyValueText = script:GetCustomProperty("CurrencyValue"):WaitForObject()
local CurrencyValueShadowText = script:GetCustomProperty("CurrencyValueShadow"):WaitForObject()

local WinsValueText = script:GetCustomProperty("WinsValue"):WaitForObject()
local WinsValueShadowText = script:GetCustomProperty("WinsValueShadow"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local function UpdateCurrency(value)
	if(not value) then
		value = LocalPlayer:GetResource("Currency")
	end
	value = tostring(value)

	CurrencyValueText.text = value
	CurrencyValueShadowText.text = value
end

local function UpdateWins(value)
	if(not value) then
		value = LocalPlayer:GetResource("Wins")
	end
	value = tostring(value)

	WinsValueText.text = value
	WinsValueShadowText.text = value
end

local function OnResourceChanged(player, resourceName, newValue)
	if(resourceName == "Currency") then
		UpdateCurrency(newValue)
	elseif(resourceName == "Wins") then
		UpdateWins(newValue)
	end

	CurrencyValueText.text = tostring(LocalPlayer:GetResource("Currency"))
	CurrencyValueShadowText.text = tostring(LocalPlayer:GetResource("Currency"))
end

LocalPlayer.resourceChangedEvent:Connect(OnResourceChanged)

UpdateCurrency()
UpdateWins()