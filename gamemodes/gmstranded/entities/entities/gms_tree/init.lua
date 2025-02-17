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
	local res = self:GetResource()
	if not res then
		local default = "tree"
		ErrorNoHaltWithStack("gms_tree initialized with no resource (Entity ", self:EntIndex(), "). Defaulting to \"" .. default .. "\"")
		res = SGS_LookupResource(default)
		self:SetResource(res)
	end
 	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetAngles(Angle(0,math.random(-180, 180),0))
	self:SetUseType(SIMPLE_USE)
	
	self.maxgrowth = math.random( 7, 12 )
	self.maxgrowth = self.maxgrowth / 10
	
	self:SetModelScale( self.maxgrowth, 0 )
	
	self.rtotal = math.random(res.amt_min, res.amt_max)
	
	self.respawn = true
	
	self.respawntime = math.random( res.respawn_min, res.respawn_max )
	
	if not self.growth then self.growth = 1 end
	if not self.issap then self.issap = false end
	
	self.saptime = CurTime() + 30
	
	local phys = self:GetPhysicsObject()
	if phys and phys:IsValid() then
		phys:EnableMotion(false) -- Freezes the object in place.
	end
end

function ENT:Use( ply )
	if ply.foragetoggle then return end
	SGS_Lumber( ply, self, 0, 1, nil, nil )
end

function ENT:UpdatePhysicsModel()
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
		phys:EnableMotion(false)
	end
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
function ENT:StartTouch(entEntity)
end

--Called when the SENT thinks.
--Return: Nothing
function ENT:Think()

	if self.maxgrowth == nil then self.maxgrowth = 1 end
	if self.grown == nil then self.grown = false end
	
	if self.grown == true then return end
	
	if self.issap then
		if CurTime() >= self.saptime then self.issap = false end
	end
	
	if self.issap == false then
		if self.growth < self.maxgrowth then
			self.growth = math.Clamp(self.growth + 0.005, 0, self.maxgrowth)
			self:SetModelScale(self.growth, 0)
			net.Start("UpdateGrowth")
				net.WriteEntity(self)
				net.WriteFloat(self.growth)
			net.Broadcast()
		end
		if self.growth == self.maxgrowth then
			local pos = self:GetPos()
			self:SetPos( pos + Vector(0,0,1) )
			self:SetPos( pos )
			self.grown = true
			net.Start("UpdateShadow")
				net.WriteEntity(self)
			net.Broadcast()
			net.Start("UpdateGrowth")
				net.WriteEntity(self)
				net.WriteFloat(self.growth)
			net.Broadcast()
		end
	end
		
	
	self:NextThink(CurTime() + 0.05)
	return true
end

function ENT:LoadMapEntity(entry)
	if not entry.resource then
		ErrorNoHalt("ERROR: gms_tree spawned with no \"resource\" key. Setting resource to \"tree\"")
		entry.resource = "tree"
	end
	local res = SGS_LookupResource(entry.resource)
	if not res then
		ErrorNoHalt("ERROR: Unknown resource \"" .. entry.resource .. "\". Defaulting to \"tree\"")
		res = SGS_LookupResource("tree")
	end

	self:SetResource(res)
end

--Called when an entity touches this SENT.
--Return: Nothing
function ENT:Touch(entEntity)
end

--Called when: ?
--Return: TRANSMIT_ALWAYS, TRANSMIT_NEVER or TRANSMIT_PVS
function ENT:UpdateTransmitState(entEntity)
end