local Whoosh1 = script:GetCustomProperty("Whoosh1"):WaitForObject()
local Coin1 = script:GetCustomProperty("Coin1"):WaitForObject()
local Coin2 = script:GetCustomProperty("Coin2"):WaitForObject()
local Impact = script:GetCustomProperty("Impact"):WaitForObject()
local Whoosh2 = script:GetCustomProperty("Whoosh2"):WaitForObject()

Whoosh1:Play()

Task.Wait(0.8)

Coin1:Play()
Coin2:Play()
Impact:Play()

Task.Wait(2.25)

Whoosh2:Play()