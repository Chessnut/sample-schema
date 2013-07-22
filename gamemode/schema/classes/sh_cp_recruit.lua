local CLASS = {}
	CLASS.name = "Metrocop Recruit"
	CLASS.uniqueID = "cp_rct"
	CLASS.faction = FACTION_CP

	function CLASS:OnSet(client)
		client:SetModel("models/Barney.mdl")
	end
CLASS_CP_RCT = nut.class.Register(CLASS)

if (SERVER) then
	nut.char.HookVar("charname", "recruitRanks", function(character)
		local client = character.player

		if (IsValid(client) and client:Team() == FACTION_CP and string.find(character:GetVar("charname"), "RCT.")) then
			client:SetCharClass(CLASS_CP_RCT)
		end
	end)
end
