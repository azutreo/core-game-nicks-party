local Module = {}

local trails = {
	white = script:GetCustomProperty("TrailWhite"),
	teal = script:GetCustomProperty("TrailTeal"),
	red = script:GetCustomProperty("TrailRed"),
	magenta = script:GetCustomProperty("TrailMagenta"),
	purple = script:GetCustomProperty("TrailPurple"),
	blue = script:GetCustomProperty("TrailBlue"),
	green = script:GetCustomProperty("TrailGreen"),
	yellow = script:GetCustomProperty("TrailYellow"),
	orange = script:GetCustomProperty("TrailOrange"),
	rgb = script:GetCustomProperty("TrailRGB"),
}

Module.shop = {

	Trails = {
		{
			id = 1,
			name = "White",
			price = 350,
			template = trails.white,
		},
		{
			id = 2,
			name = "Teal",
			price = 350,
			template = trails.teal,
			previewColor = Color.FromStandardHex("#00bcd4"),
		},
		{
			id = 3,
			name = "Red",
			price = 350,
			template = trails.red,
			previewColor = Color.FromStandardHex("#f44336"),
		},
		{
			id = 4,
			name = "Magenta",
			price = 350,
			template = trails.magenta,
			previewColor = Color.FromStandardHex("#e91e63"),
		},
		{
			id = 5,
			name = "Purple",
			price = 350,
			template = trails.purple,
			previewColor = Color.FromStandardHex("#673ab7"),
		},
		{
			id = 6,
			name = "Blue",
			price = 350,
			template = trails.blue,
			previewColor = Color.FromStandardHex("#2196f3"),
		},
		{
			id = 7,
			name = "Green",
			price = 350,
			template = trails.green,
			previewColor = Color.FromStandardHex("#4caf50"),
		},
		{
			id = 8,
			name = "Yellow",
			price = 350,
			template = trails.yellow,
			previewColor = Color.FromStandardHex("#ffeb3b"),
		},
		{
			id = 9,
			name = "Orange",
			price = 350,
			template = trails.orange,
			previewColor = Color.FromStandardHex("#ff9800"),
		},
		{
			id = 10,
			name = "RGB",
			price = 850,
			template = trails.rgb,
		},
	},

}

function Module.GetItemByName(categoryName, name)
	local category = Module.shop[categoryName]
	if(not category) then return end

	for _, item in pairs(category) do
		if(item.name == name) then
			return item
		end
	end
end

function Module.GetItemById(categoryName, id)
	local category = Module.shop[categoryName]
	if(not category) then return end

	for _, item in pairs(category) do
		if(item.id == id) then
			return item
		end
	end
end

return Module