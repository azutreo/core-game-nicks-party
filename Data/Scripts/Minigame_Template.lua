local Module = {}

Module.name = "Template"
Module.minimumNumberOfPlayers = 1
Module.time = 60
Module.players = {}
Module.map = script:GetCustomProperty("Map")

function Module.Function()
	print("Template")
end

return Module