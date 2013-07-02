FACTION_CP = 2

local FACTION = {}
	FACTION.name = "Civil Protection"
	FACTION.uniqueID = "cp"
	FACTION.desc = "Citizens who joined the Combine as a policing force."
	FACTION.color = Color(70, 70, 220)
	FACTION.maleModels = {
		"models/police.mdl"
	}
	FACTION.femaleModels = FACTION.maleModels
	FACTION.isDefault = false

	function FACTION:GetDefaultName()
		return "CP-RCT."..math.random(11111, 99999)
	end
nut.faction.Register(FACTION_CP, FACTION)