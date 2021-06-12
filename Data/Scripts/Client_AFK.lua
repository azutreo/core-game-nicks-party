local AfkStatusText = script:GetCustomProperty("AFKStatus"):WaitForObject()

local debounce = false
local afk = false

local function OnButtonPressed(buttonName)
	if(buttonName ~= "AFK") then return end
	if(debounce) then return end
	debounce = true

	afk = not afk
	Events.BroadcastToServer("AFK", afk)

	if(afk) then
		AfkStatusText.text = "Currently AFK"
	else
		AfkStatusText.text = "Currently Playing"
	end

	Task.Wait(1)
	debounce = false
end

Events.Connect("TogglePressed", OnButtonPressed)