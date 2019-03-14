name = "Fishing Every Season"
author = "Yakumo Yukari"
version = "1.2"
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
	"tweak", "oasis"
}

priority = -2
-- Tweak mod like this is recommended to have enough lower priority  
-- so that the mod to be guaranteed to be loaded AFTER any other mods to be loaded.

folder_name = folder_name or ""
if not folder_name:find("workshop-") then
    name = name.." - Test"
end

configuration_options =
{
	{
		name = "FreezeLake",
		label = "Freeze lake",
		hover = "Set can (frog)lakes be frozen in winter.\n겨울에 (개구리가 나오는)연못이 얼어붙는지 설정합니다.",
		options = {
			{ description = "Yes(얼음)", data = true},
			{ description = "No(안얼음)", data = false},
		},
		default = false,
	},
	{
		name = "FreezeLakeMos",
		label = "Freeze mosquito lake",
		hover = "Set can mosquito lakes be frozen in winter.\n겨울에 모기연못이 얼어붙는지 설정합니다.",
		options = {
			{ description = "Yes(얼음)", data = true},
			{ description = "No(안얼음)", data = false},
		},
		default = false,
	},
	{
		name = "OasisSeason",
		label = "Oasis Season",
		hover = "Set which season is able to fish in oasis.\n오아시스에서 낚시를 할 수 있는 계절을 설정합니다.",
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
		hover = "Set when to activate sandstorm.",
		options = {
			{ description = "No Sandstorm", data = 0 },
			{ description = "Default(기본값)", data = 1 },
			{ description = "No Winter(겨울x)", data = 2 },
			{ description = "Always(항상)", data = 3 },
		},
		default = 1,
	},
}