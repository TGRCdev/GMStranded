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

	if self.amount == 1 then
		self:SetModel(SGS.proplist["tree_chunk1"])
	elseif self.amount == 2 then
		self:SetModel(SGS.proplist["tree_chunk2"])
	elseif self.amount == 3 then
		self:SetModel(SGS.proplist["tree_chunk3"])
	end
 	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetCollisionGroup( COLLISION_GROUP_WEAPON )
	self:SetColor(Color(255,255,255,255))
	
	self.decaytime = CurTime() + 120
	self.unowntime = self.decaytime - 30
	
	self.owned = true
end

function ENT:Use( ply )

	if CurTime() > ply.lastuse + 0.333 then
	
		local res = self:GetResource()
		self:Remove()
		ply:AddResource( res.rgives, self.amount )
		ply:AddStat( res.stat, self.amount )
		ply.lastuse = CurTime()
		
	end
	
end

function ENT:GetResource()
	return self.resource
end

function ENT:SetResource(res)
	self.resource = res
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
	if CurTime() >= self.unowntime and self.owned then
		self:CPPISetOwnerless(true)
		self.owned = false
	end

	if CurTime() >= self.decaytime then
		self:Remove()
	end
	self:NextThink(CurTime() + 1)
	return true
end

--Called when an entity touches this SENT.
--Return: Nothing
function ENT:Touch(entEntity)
end

--Called when: ?
--Return: TRANSMIT_ALWAYS, TRANSMIT_NEVER or TRANSMIT_PVS
function ENT:UpdateTransmitState(entEntity)
end