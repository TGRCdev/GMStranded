AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
	-- Some default calls to make the NPC function
	self:SetModel( "models/humans/group01/male_04.mdl" )
	self:SetHullType( HULL_HUMAN )
	self:SetHullSizeNormal()
	self:SetSolid( SOLID_BBOX )
	self:SetMoveType( MOVETYPE_NONE )
	self:CapabilitiesAdd( bit.bor( CAP_ANIMATEDFACE, CAP_TURN_HEAD ) )
    self:SetNWString("Owner", "World")
	self:SetUseType(SIMPLE_USE)

	-- I don't know how NPCs work but this seems to make the NPC sit as I wanted
	timer.Simple(0.25, function()
		self:SetSchedule(SCHED_WAIT_FOR_SCRIPT)
	end)
end

function ENT:Use( ply )
	ply:SendMessage("Hello, " .. ply:GetName() .. "!")
end

--Called when something hurts the entity.
--Return: Nothing
function ENT:OnTakeDamage(dmiDamage)
	-- TODO: Retaliate
	return 0
end

--Called when the SENT thinks.
--Return: Nothing
function ENT:Think()
	self:SetSequence("sitcouchfeet1")
end