function SCHEMA:GetDefaultInv(inventory, client, data)
	-- PrintTable(data) to see what information it contains.
	
	if (data.faction == FACTION_CITIZEN) then
		inventory:Add("cid", 1, {
			Digits = math.random(11111, 99999),
			Owner = data.charname
		})
	end
end

--[[
	Purpose: Called when the player has spawned with a valid character.
--]]
function SCHEMA:PlayerSpawn(client)
	print("Just like regular gamemodes, except we replace GM with SCHEMA.")
end
