--[[
	Purpose: Returns a table that is simply an inventory table. It will be
	the character's inventory after created.
--]]
function SCHEMA:GetDefaultInv(client, name, faction)
	-- CID will be for citizens only.
	if (faction == FACTION_CITIZEN) then
		local inventory = {}
		-- Inventory contains a cid where cid is the item's uniqueID.
		inventory.cid = {}

		-- First cid item in the inventory.
		inventory.cid[1] = {
			-- How many copies of this item it contains.
			quantity = 1,
			data = {
				-- The data contains a random set of digits.
				Digits = math.random(11111, 99999),

				-- The owner will be set to the character's name.
				Owner = name
			}
		}

		return inventory
	end
end

--[[
	Purpose: Called when the player has spawned with a valid character.
--]]
function SCHEMA:PlayerSpawn(client)
	print("Just like regular gamemodes, except we replace GM with SCHEMA.")
end