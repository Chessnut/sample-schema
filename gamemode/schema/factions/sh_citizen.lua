FACTION_CITIZEN = 1

local FACTION = {}
	FACTION.name = "Citizen"
	FACTION.uniqueID = "civ"
	FACTION.desc = "The civilian faction that wears blue clothes."
	FACTION.color = Color(20, 150, 15)
nut.faction.Register(FACTION_CITIZEN, FACTION)