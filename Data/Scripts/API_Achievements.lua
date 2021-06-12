local API = {}

API.ResourceType = {
	--CREATOR = "CreatorMet",
	MINIGAMES_PLAYED = "MinigamesPlayed",
	MINIGAMES_WON = "Wins",
}

API.achievements = {
	--[[{
		id = 1,
		name = "Meet the Creator",
		reward = 150,
	},]]
	{
		id = 2,
		name = "Play Your First Minigame",
		reward = 5,
		type = API.ResourceType.MINIGAMES_PLAYED,
		compare = 1,
	},
	{
		id = 3,
		name = "Win Your First Minigame",
		reward = 15,
		type = API.ResourceType.MINIGAMES_WON,
		compare = 1,
	},
	{
		id = 4,
		name = "Play 5 Minigames",
		reward = 15,
		type = API.ResourceType.MINIGAMES_PLAYED,
		compare = 5,
	},
	{
		id = 5,
		name = "Win 5 Minigames",
		reward = 50,
		type = API.ResourceType.MINIGAMES_WON,
		compare = 5,
	},
	{
		id = 6,
		name = "Play 10 Minigames",
		reward = 50,
		type = API.ResourceType.MINIGAMES_PLAYED,
		compare = 10,
	},
	{
		id = 7,
		name = "Win 10 Minigames",
		reward = 150,
		type = API.ResourceType.MINIGAMES_WON,
		compare = 10,
	},
	{
		id = 8,
		name = "Play 25 Minigames",
		reward = 250,
		type = API.ResourceType.MINIGAMES_PLAYED,
		compare = 25,
	},
	{
		id = 9,
		name = "Win 25 Minigames",
		reward = 350,
		type = API.ResourceType.MINIGAMES_WON,
		compare = 25,
	},
	{
		id = 10,
		name = "Play 50 Minigames",
		reward = 500,
		type = API.ResourceType.MINIGAMES_PLAYED,
		compare = 50,
	},
	{
		id = 11,
		name = "Win 50 Minigames",
		reward = 850,
		type = API.ResourceType.MINIGAMES_WON,
		compare = 50,
	},
}

function API.GetAchievementById(id)
	for _, achievement in pairs(API.achievements) do
		if(achievement.id == id) then
			return achievement
		end
	end
end

return API