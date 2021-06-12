local API = {}

local PunishmentsSharedStorageKey = script:GetCustomProperty("Punishments")

API.reasons = {
	CERBERUS = "Administrator or Developer of Cerberus Games",
}

API.bans = {
	--[[
	--	FearTheDev
	["33fbba21cf2b457bafb7f092f8b9d31e"] = API.reasons.CERBERUS,

	--	Coderz
	["d5daea732ee3422fbe85aecb900e73ec"] = API.reasons.CERBERUS,

	--	Player1
	["d2e690c766ed447aa2f31e594e4bf292"] = API.reasons.CERBERUS,

	--	benben3963
	["3b23755024b14118b031347551ff3d87"] = API.reasons.CERBERUS,

	--	Bot1
	["ad173268e17d472eb6c82081cdd1f7a3"] = API.reasons.CERBERUS,

	--	0dividedby0E
	["fc3765057ea845449f9bdd94d2c62b4b"] = API.reasons.CERBERUS,

	--	SapphireRose
	["dd205b41c13e4c3c84fa7a77b4349722"] = API.reasons.CERBERUS,

	--	sinowrathx
	["a27a1cb5d35e4bcfbe191e37708c2405"] = API.reasons.CERBERUS,

	--	cen
	["6f72759d21774782a050b56f3a71a57e"] = API.reasons.CERBERUS,
	--]]
}

function API.GetIsBanned(player)
	local punishments = Storage.GetSharedPlayerData(PunishmentsSharedStorageKey, player)
	if(not punishments.banReason and not API.bans[player.id]) then return false end

	punishments.banReason = API.bans[player.id] or punishments.banReason or "You have been prohibited from playing this game"
	Storage.SetSharedPlayerData(PunishmentsSharedStorageKey, player, punishments)

	return true
end

return API