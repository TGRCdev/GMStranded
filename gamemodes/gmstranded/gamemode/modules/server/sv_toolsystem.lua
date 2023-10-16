local PlayerMeta = FindMetaTable("Player")
local EntityMeta = FindMetaTable("Entity")

function PlayerMeta:SynchTools( tbl )
	
	if table.Count( tbl ) == 0 then return end
	self.inventory = tbl
	
	net.Start( "sgs_sendtoolsstable" )
		net.WriteTable( self.inventory )
	net.Send( self )

end

function PlayerMeta:SetInventory()
	self.inventory = { weapon_physgun = 1, weapon_physcannon = 1, gms_remover = 1, gms_proplocker = 1, gms_sppshare = 1, gms_packager = 1, gmod_camera = 1 }
end

--TOOLS--

function SGS_EquipTools( ply, com, args )
	local ct = ply.equippedtool
	if ct == "weapon_physgun" and ply.isgrab == true then
		return
	end

	if ply.amode then return end

	if ply:Alive() then

		local toolid = args[ 1 ]
		local tool = SGS_ReverseToolLookup( toolid )
		
		if tool and ply:HasTool( toolid ) then
			ply:RemTool( toolid )
			if not ply.equippedtool then
				ply:StripWeapons()
				ply:Give( tool.entity )
			else
				ply:StripWeapons()
				ply:AddTool( ply.equippedtool )
				ply:Give( tool.entity )
			end
			
			if tool.color == nil then
				ply:SetWeaponColor(Vector(1,1,1))
			else
				ply:SetWeaponColor(tool.color)
			end
			
			ply.tpmode = false
			ply.equippedtool = toolid
		end
		
	else
		ply:SendMessage("You are dead!", 60, Color(255, 0, 0, 255))
	end

end
concommand.Add( "SGS_EquipTools", SGS_EquipTools )

function SGS_EquipTool( ply, tool )
	local tool = SGS_ReverseToolLookup( tEnt )
end

function SGS_DropTool( ply, com, args )

	if ply:Alive() then

		if IsValid(ply:GetActiveWeapon()) then
		
			local curclass = ply:GetActiveWeapon():GetClass()
			local nodrop = { "weapon_physgun", "weapon_physcannon", "gms_remover", "gms_sppshare", "gms_proplocker", "gms_packager", "gmod_camera" }
			for k, v in pairs(nodrop) do
				if curclass == v then
					ply:SendMessage("You can't drop this tool!", 60, Color(255, 0, 0, 255))
					return
				end
			end
			ply:DropMyWeapon(ply:GetActiveWeapon())
			ply:StripWeapons()
			ply.equippedtool = nil
			ply:ConCommand("sgs_refreshhotbar")
			ply:ConCommand("sgs_refreshtools")
			
			SGS_EquipTools( ply, _, {curclass} )
		end
	else
		ply:SendMessage("You are dead!", 60, Color(255, 0, 0, 255))
	end

end
concommand.Add( "SGS_DropTool", SGS_DropTool )

function PlayerMeta:DropMyWeapon( ent )
	if not IsValid( ent ) then return end

	local tool_data = SGS_ReverseToolLookup( ent:GetClass() )
	local color = Color( 255, 255, 255, 255 )
	
	if tool_data.color then
		local c = tool_data.color
		color = Color( c.x * 255, c.y * 255, c.z * 255, 255 ) 
	end

	local tool = ents.Create("gms_tool")
	
	if tool_data.skin then
		tool:SetSkin( tool_data.skin )
	end
	
	tool:SetPos(self:TraceFromEyes(25).HitPos)	
	tool:SetModel( tool_data.model )
	tool:Spawn()
	
	if tool_data.scale then
		tool:SetModelScale( tool_data.scale, 0 )
		
	end
	
	tool:SetColor( color )
	tool.tooltype = ent:GetClass()
	tool:GetPhysicsObject():Wake()
	tool:SetLocalVelocity( self:GetAimVector() * 250)
	tool:CPPISetOwnerless(true)
	tool.ownerless = true
	timer.Simple( 180, function() SGS_MarkForDeletionOwnerless( tool ) end )

end

function SGS_ChatDropTool( ply, text, public )

    if (string.sub(string.lower(text), 1, 9) == "!droptool") then
		ply:ConCommand("SGS_DropTool")
		return false
    end
	
end
hook.Add( "PlayerSay", "SGS_ChatDropTool", SGS_ChatDropTool )

function SGS_UnEquipTool( ply, _, _ )

	if ply:Alive() then
		if IsValid(ply:GetActiveWeapon()) then
			ply:AddTool( ply.equippedtool )
			ply:StripWeapons()
			ply.equippedtool = nil
		end
	else
		ply:SendMessage("You are dead!", 60, Color(255, 0, 0, 255))
	end

end
concommand.Add( "SGS_UnEquipTool", SGS_UnEquipTool )

function SGS_ChatEnequipTool( ply, text, public )

    if (string.sub(string.lower(text), 1, 8) == "!unequip") then
		ply:ConCommand("SGS_UnEquipTool")
		return false
    end
	
end
hook.Add( "PlayerSay", "SGS_ChatEnequipTool", SGS_ChatEnequipTool )

function PlayerMeta:AddTool( tool )
	if not tool then return end
	
	self.inventory[tool] = (self.inventory[tool] or 0) + 1
	net.Start("sgs_addtool")
		net.WriteString( tool )
	net.Send( self )

end

function PlayerMeta:RemTool( tool )

	if self:HasTool( tool, true ) then
		if not self.inventory[tool] then
			-- Player is holding it
			self:StripWeapon(tool)
		else
			self.inventory[tool] = self.inventory[tool] - 1
			if self.inventory[tool] == 0 then
				self.inventory[tool] = nil
			end
			net.Start("sgs_remtool")
				net.WriteString( tool )
			net.Send( self )
		end
	end

end

function SGS_PickedUpTool( ply, wep )

	if not IsValid(ply:GetActiveWeapon()) then
		--ply:AddTool( wep:GetClass() )
		ply.equippedtool = wep:GetClass()
	else
		--ply:AddTool( wep:GetClass() )
	end
	if ply.tpmode then
		ply:SendMessage("You picked up a " .. SGS_ReverseToolLookup( wep:GetClass() ).title .. "!", 60, Color(0, 255, 50, 255))
	end
	ply.tpmode = true

	return true

end
hook.Add("PlayerCanPickupWeapon", "SGS_PickedUpTool", SGS_PickedUpTool)

function PlayerMeta:CheckDefaultTools()

	for tool, _ in pairs(SGS.startinginventory) do
		if not self:HasTool( tool ) then
			self:AddTool( tool )
		end
	end

end

function PlayerMeta:LoseTools()
	local tbl3 = {}
	local dropped_tools = {}
	for tool, amount in pairs(self.inventory) do
		if not SGS.startinginventory[tool] then
			table.insert(tbl3, v)
		end
	end
	
	if self.equippedtool then
		if not SGS.startinginventory[self.equippedtool] then
			table.insert(tbl3, self.equippedtool)
		end
	end
	local chance = 50
	if GAMEMODE.Tribes:GetTribeLevel( self ) >= 4 then
		chance = 35
	end
	for k, v in pairs(tbl3) do
		if v == "weapon_fists" then continue end
		if SGS_ReverseToolLookup( v ) then
			if math.random(1,100) <= chance then
				local npos = self:GetPos() +  Vector(math.random(-50,50),math.random(-50,50),50)
				local ent = ents.Create( "gms_tool" )
				ent:SetPos( npos )
				ent:SetModel( SGS_ReverseToolLookup( v ).model )
				ent:Spawn()
				ent:CPPISetOwnerless(true)
				ent.ownerless = true
				timer.Simple( 180, function() SGS_MarkForDeletionOwnerless( ent ) end )
				ent.tooltype = v
				ent:GetPhysicsObject():Wake()	
				self:RemTool(v)
				table.insert( dropped_tools, SGS_ReverseToolLookup( v ).title )
			end
		end
	end
	
	return dropped_tools
end

function SGS_PlayerLoadout( ply )
	return true
end
hook.Add( "PlayerLoadout", "SGSLoadout", SGS_PlayerLoadout )