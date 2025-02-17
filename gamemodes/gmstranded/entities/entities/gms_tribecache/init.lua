AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

--Called when an entity is no longer touching this SENT.
--Return: Nothing
function ENT:EndTouch(entEntity)
end

--Called when the SENT is spawned
--Return: Nothing

function ENT:Initialize()
	self:SetModel("models/hunter/misc/sphere075x075.mdl")
	self:SetMaterial("models/XQM/LightLinesRed_tool")
 	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetRenderMode( RENDERMODE_TRANSALPHA )
	self:SetUseType(3)

	local phys = self:GetPhysicsObject()
	if phys and phys:IsValid() then
		phys:EnableMotion(false) -- Freezes the object in place.
	end
	
	self:CacheEnable()
	self.tribeid = self.tribeid or 0
	
	
	self.max = 5000
	
end

function ENT:SetResourceDropInfo( rType, rAmt )
	
	if not GAMEMODE.Tribes.tblTribes[ self.tribeid ].cachecontents then GAMEMODE.Tribes.tblTribes[ self.tribeid ].cachecontents = {} end
	
	GAMEMODE.Tribes.tblTribes[ self.tribeid ].cachecontents[rType] = ( GAMEMODE.Tribes.tblTribes[ self.tribeid ].cachecontents[rType] or 0 ) + rAmt
	if GAMEMODE.Tribes.tblTribes[ self.tribeid ].cachecontents[rType] == 0 then GAMEMODE.Tribes.tblTribes[ self.tribeid ].cachecontents[rType] = nil end

end

function ENT:GetTotalResources()
	if not GAMEMODE.Tribes.tblTribes[ self.tribeid ].cachecontents then GAMEMODE.Tribes.tblTribes[ self.tribeid ].cachecontents = {} end
	
	local total = 0
	for k, v in pairs( GAMEMODE.Tribes.tblTribes[ self.tribeid ].cachecontents ) do
		if v<0 then v=0 end
		total = total + v
	end
	return total
	
end

function ENT:GetFreeSpace()

	return self.max - self:GetTotalResources()

end

function ENT:Use( ply )

	if CurTime() < ply.lastuse + 1 then return end
	
	if self.enabled == false then 
		ply:SendMessage("This cache is disabled!", 60, Color(255, 0, 0, 255))
		ply.lastuse = CurTime()
		return 
	end
	
	if not ( GAMEMODE.Tribes:GetPlayersTribe( ply ) == self.tribeid ) then
		ply:SendMessage("This cache doesn't belong to your tribe", 60, Color(255, 0, 0, 255))
		ply.lastuse = CurTime()
		return 
	end

	net.Start("UpdateCacheTable")
		net.WriteTable( GAMEMODE.Tribes.tblTribes[ self.tribeid ].cachecontents or {} )
	net.Send( ply )
	
	ply.openpcache = self
	
	net.Start("sgs_opencache")
	net.Send( ply )
	
	ply.lastuse = CurTime()
end

function ENT:AcceptInput(input, ply)
end

--Called when the entity key values are setup (either through calls to ent:SetKeyValue, or when the map is loaded).
--Return: Nothing
function ENT:KeyValue(k,v)
end

--Called when a save-game is loaded.
--Return: Nothing
function ENT:OnRestore()
end

--Called when something hurts the entity.
--Return: Nothing
function ENT:OnTakeDamage(dmiDamage)
end

--Controls/simulates the physics on the entity.
--Return: (SimulateConst) sim, (Vector) linear_force and (Vector) angular_force
function ENT:PhysicsSimulate(pobPhysics,numDeltaTime)
end

--Called when an entity starts touching this SENT.
--Return: Nothing
function ENT:StartTouch( ent2 )

	if not self.enabled then return end
	local owner1, _ = self:CPPIGetOwner()
	local owner2, _ = ent2:CPPIGetOwner()
	
	if not IsValid( owner2 ) then return end
	if not IsValid( owner1 ) then return end
	
	if isbool( owner2 ) then return end
	
	
	if not owner1:Team() == owner2:Team() then return end
	
	print( owner1, owner2 )

	if ent2:GetClass() == "gms_resourcedrop" then
		if self:GetTotalResources() >= self.max then return end
		
		for k, v in pairs(ent2.contents) do
			if self:GetTotalResources() + v <= self.max then
				self:SetResourceDropInfo( k, v )
				ent2:Remove()
			else
				local ply = ent2:CPPIGetOwner()
				local n = self.max - self:GetTotalResources()
				local nn = v - n
				
				self:SetResourceDropInfo( k, n )
				ent2:SetResourceDropInfo( k, nn )
				SGS_SetupDrop( ent2, k, nn )
			end
		end
	end
end

--Called when the SENT thinks.
--Return: Nothing

function ENT:Think()

	local f_ents = ents.FindInSphere(self:GetPos(), 80)
	local f_num = 0
	local f2_num = 0
	
	for _, v in pairs(f_ents) do
		if table.HasValue( SGS.cache_entities, v:GetClass() ) then
			f_num = f_num + 1
		end
		
		if v:GetClass() == "gms_resourcedrop" then
			f2_num = f2_num + 1
		end
	end
			
	if f_num >= 2 or f2_num >= 2 then
		if self.enabled then
			self:CacheDisable()
		end
	else
		if not self.enabled then
			self:CacheEnable()
		end
	end
	
	self:NextThink( CurTime() + 0.1 )
	return true

end

function ENT:CacheDisable()
	self.enabled = false
	self:SetColor(Color(0, 0, 0, 255))
end

function ENT:CacheEnable()
	self.enabled = true
	self:SetColor(Color(255, 255, 255, 255))
end

--Called when an entity touches this SENT.
--Return: Nothing
function ENT:Touch(entEntity)
end

--Called when: ?
--Return: TRANSMIT_ALWAYS, TRANSMIT_NEVER or TRANSMIT_PVS
function ENT:UpdateTransmitState(entEntity)
end