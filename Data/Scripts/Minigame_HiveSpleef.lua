local Minigame = {}

Minigame.map = script:GetCustomProperty("Map")

Minigame.name = "Hexaspleef"
Minigame.description = "Run across the board and try to stay alive! Each tile disappears a second after you have been atop."
Minigame.minimumNumberOfPlayers = 2
Minigame.time = 60 * 0.75
Minigame.equalWinners = true

Minigame.winners = {}
Minigame.participants = {}
Minigame.activeParticipants = {}
Minigame.deaths = {}

return Minigame