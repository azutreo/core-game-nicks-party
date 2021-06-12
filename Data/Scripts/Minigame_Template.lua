local Minigame = {}

Minigame.map = script:GetCustomProperty("Map")

Minigame.name = "Minigame Name"
Minigame.minimumNumberOfPlayers = 1
Minigame.time = 60 * 1
Minigame.equalWinners = false

Minigame.winners = {}
Minigame.activeParticipants = {}
Minigame.participants = {}
Minigame.deaths = {}

return Minigame