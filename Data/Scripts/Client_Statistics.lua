local StatisticsAPI = require(script:GetCustomProperty("API_Statistics"))

local ScrollPanel = script:GetCustomProperty("ScrollPanel"):WaitForObject()
local StatisticTemplate = script:GetCustomProperty("Statistic")

local LocalPlayer = Game.GetLocalPlayer()

local numberOfStatistics = 0

local function CreateStatistic(statisticName, resourceName)
	local panel = World.SpawnAsset(StatisticTemplate, {
		parent = ScrollPanel
	})
	panel.name = statisticName
	panel.y = (panel.height * numberOfStatistics) + (5 * numberOfStatistics)

	local nameText, valueText =
		panel:GetCustomProperty("Name"):WaitForObject(),
		panel:GetCustomProperty("Value"):WaitForObject()

	nameText.text = statisticName
	valueText.text = tostring(LocalPlayer:GetResource(resourceName))

	numberOfStatistics = numberOfStatistics + 1
end

local function UpdateStatistic(statisticName, resourceValue)
	local panel = ScrollPanel:FindChildByName(statisticName)
	if(not panel) then return end

	local valueText = panel:GetCustomProperty("Value"):WaitForObject()
	valueText.text = tostring(resourceValue)
end

local function OnResourceChanged(player, resourceName, resourceValue)
	for statisticName, resource in pairs(StatisticsAPI.statistics) do
		if(resourceName == resource) then
			UpdateStatistic(statisticName, resourceValue)
		end
	end
end

LocalPlayer.resourceChangedEvent:Connect(OnResourceChanged)

for statisticName, resourceName in pairs(StatisticsAPI.statistics) do
	CreateStatistic(statisticName, resourceName)
end