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
	local res = self.resource
	res.color = res.color or Color(255,255,255,255)

	self:SetModel(res.model)
	self:SetColor(res.color)
 	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetUseType( SIMPLE_USE )
	if res.depleted_color.a < 255 or res.color.a < 255 then
		self:SetRenderMode(RENDERMODE_TRANSCOLOR)
	end
	
	self.depleted = false
	self.respawn = CurTime()
	self.rtotal = math.random(res.amt_min, res.amt_max)
	local phys = self:GetPhysicsObject()
	if phys and phys:IsValid() then
		phys:EnableMotion(false) -- Freezes the object in place.
	end
end

function ENT:LoadMapEntity(entry)
	if not entry.resource then
		print("ERROR: gms_orenode spawned with no \"resource\" key")
		return
	end
	self:SetNWString("resource_id", entry.resource)
	local res = SGS_LookupResource(entry.resource)
	if not res then
		print("ERROR: Unknown resource \"" .. entry.resource .. "\"")
		return
	end

	self.resource = res
end

function ENT:SaveMapEntity(entry)
	entry.resource = self.resource.id
end

function ENT:Deplete()
	self.depleted = true
	self:EmitSound("physics/concrete/concrete_break3.wav", 60, math.random(80,120))
	self:SetColor(self.resource.depleted_color)
	self.respawn = CurTime() + math.random(self.resource.respawn_min, self.resource.respawn_max)
end

function ENT:Use( ply )
	if ply.foragetoggle then return end
	SGS_Mine( ply, self, 0, 1, nil, nil )
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

	if self.depleted == true then
		if CurTime() >= self.respawn then
			self.rtotal = math.random(self.resource.amt_min, self.resource.amt_max)
			self.depleted = false
			self:SetColor(Color(255, 255, 255, 255))
		end
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