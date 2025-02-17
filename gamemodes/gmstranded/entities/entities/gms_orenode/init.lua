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
	res.color = res.color or Color(255,255,255,255)

	self:SetColor(res.color)
	self:SetUseType( SIMPLE_USE )
	if res.depleted_color.a < 255 or res.color.a < 255 then
		self:SetRenderMode(RENDERMODE_TRANSCOLOR)
	end
	
	self.depleted = false
	self.respawn = CurTime()
	self.rtotal = math.random(res.amt_min, res.amt_max)
	self:UpdatePhysicsModel()
end

function ENT:UpdatePhysicsModel()
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
		phys:EnableMotion(false)
	end
end

function ENT:LoadMapEntity(entry)
	if not entry.resource then
		ErrorNoHalt("ERROR: gms_orenode spawned with no \"resource\" key. Defaulting to \"stone\"")
		entry.resource = "stone"
	end
	local res = SGS_LookupResource(entry.resource)
	if not res then
		ErrorNoHalt("ERROR: Unknown resource \"" .. entry.resource .. "\". Defaulting to \"stone\"")
		res = SGS_LookupResource("stone")
	end
	self:SetResource(res)
end

function ENT:SaveMapEntity(entry)
	entry.resource = self:GetResource().id
end

function ENT:Deplete()
	local res = self:GetResource()
	self.depleted = true
	self:EmitSound("physics/concrete/concrete_break3.wav", 60, math.random(80,120))
	self:SetColor(res.depleted_color)
	self.respawn = CurTime() + math.random(res.respawn_min, res.respawn_max)
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

	if self.depleted == true and CurTime() >= self.respawn then
		local res = self:GetResource()
		self.rtotal = math.random(res.amt_min, res.amt_max)
		self.depleted = false
		self:SetColor(res.color or Color(255, 255, 255, 255))
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