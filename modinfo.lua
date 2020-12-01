name = "Fishing Every Season"
author = "Yakumo Yukari"
version = "1.2.3"
description = "Allows you to configure in which seasons you are able to fish in an oasis."
forumthread = ""
api_version = 6
api_version_dst = 10
dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
all_clients_require_mod = true 
icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {
	"tweak", "oasis", "fishing"
}

priority = -2
-- Tweak mod like this is recommended to have enough lower priority  
-- so that the mod to be guaranteed to be loaded AFTER any other mods to be loaded.

folder_name = folder_name or ""
if not folder_name:find("workshop-") then
    name = name.." - Test"
end

local period_option = {}
for i = 1, 73 do
	period_option[i] = { description = "Every "..(i - 3).." days("..(i - 3).."일마다)", data = i }
end
period_option[1].description = "No Spawn(스폰안함)"
period_option[2].description = "Default(기본값)"
period_option[3].description = "Every Season(매 계절마다)"

configuration_options =
{
	{
		name = "FreezeLake",
		label = "Freeze lake",
		hover = "Can (frog)lakes froze in winter?\n겨울에 (개구리가 나오는)연못이 얼어붙는지 설정합니다.",
		options = {
			{ description = "Yes(얼음)", data = true },
			{ description = "No(안얼음)", data = false },
		},
		default = false,
	},
	{
		name = "FreezeLakeMos",
		label = "Freeze mosquito lake",
		hover = "Can mosquito lakes froze in winter?\n겨울에 모기연못이 얼어붙는지 설정합니다.",
		options = {
			{ description = "Yes(얼음)", data = true },
			{ description = "No(안얼음)", data = false },
		},
		default = false,
	},
	{
		name = "OasisSeason",
		label = "Oasis Season",
		hover = "Set which season is able to fish in oasis.\n언제 오아시스에서 낚시할 수 있게되는지 설정합니다.",
		options = {
			{ description = "Dried(항상마름)", data = 0 },
			{ description = "Default(기본값)", data = 1 },
			{ description = "No Winter(겨울x)", data = 2 },
			{ description = "Always(항상)", data = 3 },
		},
		default = 3,
	},
	{
		name = "SandStorm",
		label = "Sandstorm",
		hover = "When is sandstorm activates?\n언제 모래폭풍이 활성화 될지 설정합니다.",
		options = {
			{ description = "Disable(비활성화)", data = 0 },
			{ description = "Default(기본값)", data = 1 },
			{ description = "No Winter(겨울x)", data = 2 },
			{ description = "Always(항상)", data = 3 },
		},
		default = 1,
	},
    --[[
	{
		name = "AntlionPeriod",
		label = "Antlion spawn period",
		hover = "Set spawn period for Antlion.\n개미사자의 소환주기를 설정합니다.",
		options = period_option,
		default = 1,
	},
	{
		name = "AntlionIgnore",
		label = "Ignore sandstorms on spawn Antlion",
		hover = "Spawn Antlion regardless sandstorm is activated?\n개미사자의 소환이 모래폭풍을 무시합니까?",
		options = {
			{ description = "Yes(무시함)", data = true },
			{ description = "No(무시하지 않음)", data = false },
		},
		default = false,
	},
    ]]--
}