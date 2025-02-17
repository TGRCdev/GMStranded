include("shared.lua")
ENT.RenderGroup = RENDERGROUP_BOTH
--Called when it's time to draw the entity.
--Return: Nothing
function ENT:Draw()
	local pl = LocalPlayer()
	local dis = pl:GetPos():DistToSqr(self:GetPos())
	if SGS.drawdistance == nil then return end
		if dis > SGS.drawdistance then 
		self:DestroyShadow()
		return 
	end
	self:CreateShadow()
	self:DrawModel()
end

--Called when the SENT is spawned
--Return: Nothing
function ENT:Initialize()
	self:SetResource(SGS_LookupResource(self:GetResourceID()))
end

--Return true if this entity is translucent.
--Return: Boolean
function ENT:IsTranslucent()
	return self:GetColor().a < 255
end