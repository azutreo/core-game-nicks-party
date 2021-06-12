local API = {}

API.rewards = {
	{
		day = 1,
		value = 25,
	},
	{
		day = 2,
		value = 25,
	},
	{
		day = 3,
		value = 50,
	},
	{
		day = 4,
		value = 75,
	},
	{
		day = 5,
		value = 100,
	},
	{
		day = 6,
		value = 125,
	},
	{
		day = 7,
		value = 150,
	}
}

function API.GetReward(day)
	for _, reward in pairs(API.rewards) do
		if(reward.day == day) then
			return reward
		end
	end
end

return API