local Module = {}

Module.name = "Cube"
Module.minimumNumberOfPlayers = 1
Module.time = 60
Module.players = {}
Module.map = script:GetCustomProperty("Map")

function Module.Function()
	print("Cube")
end

return Module