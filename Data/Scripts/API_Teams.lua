local Module = {}

Module.teams = {
	{
		id = 1,
		name = "Lobby",
	},
	{
		id = 2,
		name = "Team 1",
		isParticipant = true,
	},
	{
		id = 3,
		name = "Team 2",
		isParticipant = true,
	},
	{
		id = 4,
		name = "Team 3",
		isParticipant = true,
	},
	{
		id = 5,
		name = "Team 4",
		isParticipant = true,
	},
}

function Module.GetTeamByName(name)
	for _, team in pairs(Module.teams) do
		if(team.name == name) then
			return team
		end
	end
end

function Module.GetTeamById(id)
	for _, team in pairs(Module.teams) do
		if(team.id == id) then
			return team
		end
	end
end

function Module.IsPlayerParticipant(player, id)
	local team = Module.GetTeamById(id)
	if(not team) then return end

	return team.isParticipant
end

function Module.SetPlayerTeam(player, name)
	for _, team in pairs(Module.teams) do
		if(team.name == name) then
			player.team = team.id
			return
		end
	end
end

return Module