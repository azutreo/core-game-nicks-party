local ShopAPI = require(script:GetCustomProperty("API_Shop"))

local CategoriesPanel = script:GetCustomProperty("Categories"):WaitForObject()
local CategoryContent = script:GetCustomProperty("CategoryContent"):WaitForObject()
local ShopItemTemplate = script:GetCustomProperty("ShopItem")

local IoPanel = script:GetCustomProperty("IO_Panel"):WaitForObject()
local IoNameText = script:GetCustomProperty("IO_Name"):WaitForObject()
local IoPreviewImage = script:GetCustomProperty("IO_PreviewImage"):WaitForObject()
local IoButtonColor = script:GetCustomProperty("IO_ButtonColor"):WaitForObject()
local IoButtonOutline = script:GetCustomProperty("IO_ButtonOutline"):WaitForObject()
local IoButtonText = script:GetCustomProperty("IO_ButtonText"):WaitForObject()
local IoButton = script:GetCustomProperty("IO_Button"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local WHITE_COLOR = Color.New(1, 1, 1)
local EQUIPPED_COLOR = Color.FromStandardHex("#4CAF50")
local OWNED_COLOR = Color.FromStandardHex("#4CAF50")
local UNOWNED_CAN_BUY_COLOR = Color.FromStandardHex("#FFC107FF")
local UNOWNED_CANT_BUY_COLOR = Color.FromStandardHex("#FFC1077F")

local COLOR_IO_GREEN = Color.FromStandardHex("#4Caf50")
local COLOR_IO_GREEN_OUTLINE = Color.FromStandardHex("#087f23")
local COLOR_IO_AMBER = Color.FromStandardHex("#ffc107")
local COLOR_IO_AMBER_OUTLINE = Color.FromStandardHex("#c79100")

local activeCategory = "Trails"
local trails = {}
local currentItemId

local debounce = false

local function DoesHaveTrail(trailId)
	if(trailId == 0) then return true end

	for _, trail in pairs(trails) do
		if(trail == trailId) then
			return true
		end
	end

	return false
end

local function ChangeCategory(button)
	local categoryLabel = button.parent
	activeCategory = categoryLabel.name

	IoPanel.visibility = Visibility.FORCE_OFF

	for _, child in pairs(CategoryContent:GetChildren()) do
		if(child.name == categoryLabel.name) then
			child.visibility = Visibility.FORCE_ON
		else
			child.visibility = Visibility.FORCE_OFF
		end
	end
end

local function OnIoButtonClicked()
	if(debounce) then return end
	debounce = true

	if(activeCategory == "Trails") then
		local equipped = LocalPlayer:GetResource("Trails_Current") == currentItemId
		local hasItem = DoesHaveTrail(currentItemId)

		if(equipped) then
			if(currentItemId == 0) then return end
			Events.BroadcastToServer("Trails_Equip", 0)
		elseif(hasItem) then
			Events.BroadcastToServer("Trails_Equip", currentItemId)
		else
			Events.BroadcastToServer("Trails_Purchase", currentItemId)
		end
	end

	Task.Wait(1)
	debounce = false
end

local function OnShopItemClicked(itemButton, itemId)
	currentItemId = itemId

	if(currentItemId == 0) then
		IoNameText.text = "None"

		IoPreviewImage:SetImage(nil)
		IoPreviewImage:SetColor(WHITE_COLOR)
	else
		local item = ShopAPI.GetItemById(activeCategory, currentItemId)
		if(not item) then return end

		IoNameText.text = item.name

		IoPreviewImage:SetImage(item.previewImage)
		IoPreviewImage:SetColor(item.previewColor or WHITE_COLOR)
	end

	local equipped, hasItem
	if(activeCategory == "Trails") then
		equipped = LocalPlayer:GetResource("Trails_Current") == currentItemId
		hasItem = DoesHaveTrail(currentItemId)
	end

	if(equipped) then
		IoButtonColor:SetColor(COLOR_IO_AMBER)
		IoButtonOutline:SetColor(COLOR_IO_AMBER_OUTLINE)
		IoButtonText:SetColor(COLOR_IO_AMBER_OUTLINE)
		IoButtonText.text = "UNEQUIP"
	elseif(hasItem) then
		IoButtonColor:SetColor(COLOR_IO_AMBER)
		IoButtonOutline:SetColor(COLOR_IO_AMBER_OUTLINE)
		IoButtonText:SetColor(COLOR_IO_AMBER_OUTLINE)
		IoButtonText.text = "EQUIP"
	else
		IoButtonColor:SetColor(COLOR_IO_GREEN)
		IoButtonOutline:SetColor(COLOR_IO_GREEN_OUTLINE)
		IoButtonText:SetColor(COLOR_IO_GREEN_OUTLINE)
		IoButtonText.text = "BUY"
	end

	IoPanel.visibility = Visibility.INHERIT
end

local function UpdateItem0(child, categoryPanel, currentTrail)
	if(not Object.IsValid(child)) then return end

	local itemButton, nameText, priceText, coinImage =
		child:FindChildByName("Button"),
		child:FindChildByName("Name"),
		child:FindChildByName("Price"),
		child:FindChildByName("Coin")

	if(categoryPanel.name == "Trails") then
		if(currentTrail == 0) then
			priceText.text = "EQUIPPED"

			priceText.width = -20
			priceText:SetColor(EQUIPPED_COLOR)
			coinImage:SetColor(OWNED_COLOR)
			coinImage.visibility = Visibility.FORCE_OFF
		else
			priceText.text = "OWNED"

			priceText.width = -20
			priceText:SetColor(OWNED_COLOR)
			coinImage:SetColor(OWNED_COLOR)
			coinImage.visibility = Visibility.FORCE_OFF
		end

		if(currentItemId == 0) then
			OnShopItemClicked(itemButton, 0)
		end
	end
end

local function UpdateItem(item, currency, child, categoryPanel, currentTrail)
	if(not Object.IsValid(child)) then return end

	local itemButton, nameText, priceText, coinImage =
		child:FindChildByName("Button"),
		child:FindChildByName("Name"),
		child:FindChildByName("Price"),
		child:FindChildByName("Coin")

	if(categoryPanel.name == "Trails") then
		local doesHaveTrail = DoesHaveTrail(item.id)

		if(item.id == currentTrail) then
			priceText.text = "EQUIPPED"

			priceText.width = -20
			priceText:SetColor(EQUIPPED_COLOR)
			coinImage:SetColor(OWNED_COLOR)
			coinImage.visibility = Visibility.FORCE_OFF
		elseif(doesHaveTrail) then
			priceText.text = "OWNED"

			priceText.width = -20
			priceText:SetColor(OWNED_COLOR)
			coinImage:SetColor(OWNED_COLOR)
			coinImage.visibility = Visibility.FORCE_OFF
		else
			priceText.text = string.format("%s", item.price)

			priceText.width = -55
			coinImage.visibility = Visibility.FORCE_ON

			if(currency >= item.price) then
				priceText:SetColor(UNOWNED_CAN_BUY_COLOR)
				coinImage:SetColor(UNOWNED_CAN_BUY_COLOR)
			else
				priceText:SetColor(UNOWNED_CANT_BUY_COLOR)
				coinImage:SetColor(UNOWNED_CANT_BUY_COLOR)
			end
		end
	end

	if(currentItemId == item.id) then
		OnShopItemClicked(itemButton, item.id)
	end
end

local function UpdateCategory(categoryPanel, categoryGrid)
	local categoryData = ShopAPI.shop[categoryPanel.name]
	if(not categoryData) then return end

	local currency, currentTrail =
		LocalPlayer:GetResource("Currency"),
		LocalPlayer:GetResource("Trails_Current")

	do
		local child = categoryGrid:FindChildByName("None")

		UpdateItem0(child, categoryPanel, currentTrail)
	end

	for index, item in ipairs(categoryData) do
		local child = categoryGrid:FindChildByName(item.name)

		UpdateItem(item, currency, child, categoryPanel, currentTrail)
	end
end

local function GenerateCategory(categoryPanel)
	local button = categoryPanel:GetCustomProperty("Button"):WaitForObject()
	if(not Object.IsValid(button)) then return end
	if(not button:IsA("UIButton")) then return end

	local categoryGrid = CategoryContent:FindChildByName(categoryPanel.name)
	if(not Object.IsValid(categoryGrid)) then return end

	button.clickedEvent:Connect(ChangeCategory)

	for _, child in pairs(categoryGrid:GetChildren()) do
		if(child:IsA("UIImage")) then
			child:Destroy()
		end
	end
	while(not categoryGrid:GetCustomProperty("FluidUIGrid"):WaitForObject().context.Update) do
		Task.Wait()
	end
	categoryGrid:GetCustomProperty("FluidUIGrid"):WaitForObject().context.Update()

	local categoryData = ShopAPI.shop[categoryPanel.name]
	if(not categoryData) then return end

	local currency, currentTrail =
		LocalPlayer:GetResource("Currency"),
		LocalPlayer:GetResource("Trails_Current")

	do
		local child = World.SpawnAsset(ShopItemTemplate, {parent = categoryGrid})
		child.name = "None"
		child:GetCustomProperty("Outline"):WaitForObject():SetColor(categoryPanel:GetColor())

		local itemButton, nameText, priceText, coinImage =
			child:GetCustomProperty("Button"):WaitForObject(),
			child:GetCustomProperty("Name"):WaitForObject(),
			child:GetCustomProperty("Price"):WaitForObject(),
			child:GetCustomProperty("Coin"):WaitForObject()

		nameText.text = "None"

		if(categoryPanel.name == "Trails") then
			if(currentTrail == 0) then
				priceText.text = "EQUIPPED"

				priceText.width = -20
				priceText:SetColor(EQUIPPED_COLOR)
				coinImage.visibility = Visibility.FORCE_OFF
			else
				priceText.text = "OWNED"

				priceText.width = -20
				priceText:SetColor(OWNED_COLOR)
				coinImage.visibility = Visibility.FORCE_OFF
			end
		end

		itemButton.clickedEvent:Connect(function()
			OnShopItemClicked(itemButton, 0)
		end)
	end

	for index, item in ipairs(categoryData) do
		local child = World.SpawnAsset(ShopItemTemplate, {parent = categoryGrid})
		child.name = item.name
		child:GetCustomProperty("Outline"):WaitForObject():SetColor(categoryPanel:GetColor())

		local itemButton, nameText, priceText, coinImage =
			child:GetCustomProperty("Button"):WaitForObject(),
			child:GetCustomProperty("Name"):WaitForObject(),
			child:GetCustomProperty("Price"):WaitForObject(),
			child:GetCustomProperty("Coin"):WaitForObject()

		nameText.text = item.name

		local doesHaveTrail = ((categoryPanel.name == "Trails") and DoesHaveTrail(item.id)) or false

		if(categoryPanel.name == "Trails") then
			if(item.id == currentTrail) then
				priceText.text = "EQUIPPED"

				priceText.width = -20
				priceText:SetColor(EQUIPPED_COLOR)
				coinImage.visibility = Visibility.FORCE_OFF
			elseif(doesHaveTrail) then
				priceText.text = "OWNED"

				priceText.width = -20
				priceText:SetColor(OWNED_COLOR)
				coinImage.visibility = Visibility.FORCE_OFF
			else
				priceText.text = string.format("%s", item.price)

				priceText.width = -55
				coinImage.visibility = Visibility.FORCE_ON

				if(currency >= item.price) then
					priceText:SetColor(UNOWNED_CAN_BUY_COLOR)
					coinImage:SetColor(UNOWNED_CAN_BUY_COLOR)
				else
					priceText:SetColor(UNOWNED_CANT_BUY_COLOR)
					coinImage:SetColor(UNOWNED_CANT_BUY_COLOR)
				end
			end
		end

		itemButton.clickedEvent:Connect(function()
			OnShopItemClicked(itemButton, item.id)
		end)
	end

	categoryGrid:GetCustomProperty("FluidUIGrid"):WaitForObject().context.Update()
end

local function GenerateShop()
	for _, categoryPanel in pairs(CategoriesPanel:GetChildren()) do
		GenerateCategory(categoryPanel)
	end
end

local function UpdateTrails(...)
	if(...) then
		trails = {...}
	end

	local categoryPanel, categoryGrid =
		CategoriesPanel:FindChildByName("Trails"),
		CategoryContent:FindChildByName("Trails")

	UpdateCategory(categoryPanel, categoryGrid)
end

local function SetTrails(...)
	trails = {...}

	local categoryPanel, categoryGrid =
		CategoriesPanel:FindChildByName("Trails"),
		CategoryContent:FindChildByName("Trails")

	UpdateCategory(categoryPanel, categoryGrid)
end

local function OnResourceChanged(player, resourceName, resourceValue)
	if(resourceName ~= "Trails_Current") then return end

	local categoryPanel, categoryGrid =
		CategoriesPanel:FindChildByName("Trails"),
		CategoryContent:FindChildByName("Trails")

	UpdateCategory(categoryPanel, categoryGrid)
end

LocalPlayer.resourceChangedEvent:Connect(OnResourceChanged)

IoButton.clickedEvent:Connect(OnIoButtonClicked)

Events.Connect("Trails_Update", UpdateTrails)
Events.Connect("Trails_Set", SetTrails)

GenerateShop()

while(Events.BroadcastToServer("Trails_Get") == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT) do
	Task.Wait()
end