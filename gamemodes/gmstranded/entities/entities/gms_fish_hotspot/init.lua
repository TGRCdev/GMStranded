AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

--Called when the SENT is spawned
--Return: Nothing

function ENT:Initialize()
	self.nextSplash = CurTime()
	self.nextRipple = CurTime()

	self:DeactivateHotspot()
end

function ENT:DeactivateHotspot()
	self.hotspotActive = false
	self.startTime = CurTime() + math.random(300, 900) -- Hotspot activates every 5-15 minutes
end

function ENT:ActivateHotspot()
	self.hotspotActive = true
	self.endTime = CurTime() + math.random(90, 180) -- Hotspot runs for 1.5-3 minutes
end

function ENT:Think()
	if SGS.inedit then
		self.hotspotActive = true
		self.endTime = CurTime() + 1
	end

	if self.hotspotActive then
		if CurTime() >= self.endTime then
			self:DeactivateHotspot()
		elseif CurTime() >= self.nextSplash then
			local effect = EffectData()
			effect:SetOrigin( self:GetPos() + Vector(math.random(-25,25), math.random(-25,25), 0) )
			effect:SetScale(5)
			util.Effect("watersplash", effect)
			self.nextSplash = CurTime() + math.random(5,25) -- Splash every 5-25 seconds
		elseif CurTime() >= self.nextRipple then
			local effect = EffectData()
			effect:SetOrigin( self:GetPos() + Vector(math.random(-25,25), math.random(-25,25), 0) )
			effect:SetScale(10)
			util.Effect("waterripple", effect)
			self.nextRipple = CurTime() + 0.25 -- Ripple every 0.25 seconds
		end
	elseif CurTime() >= self.startTime then
		self:ActivateHotspot()
	end
end

concommand.Add("sgs_place_fish_hotspot", function(ply)
	if not ply:IsSuperAdmin() then return end
	if not SGS.inedit then
		ply:SendMessage("Set SGS.inedit = true first.", 10, Color(255,0,0,255))
		return
	end

	local trace = {}
	trace.start = ply:GetShootPos()
	trace.endpos = trace.start + (ply:GetAimVector() * 10000)
	trace.mask = bit.bor(MASK_WATER, MASK_SOLID)
	trace.filter = ply

	local tr = util.TraceLine(trace)
	if not tr.Hit or tr.MatType != MAT_SLOSH then
		ply:SendMessage("You must be looking at water to place a hotspot!", 10, Color(255,0,0,255))
		return
	end

	local hotspot = ents.Create("gms_fish_hotspot")
	hotspot:SetPos(tr.HitPos)
	hotspot:Spawn()
end)

concommand.Add("sgs_remove_fish_hotspot", function(ply)
	if not ply:IsSuperAdmin() then return end
	if not SGS.inedit then
		ply:SendMessage("Set SGS.inedit = true first.", 10, Color(255,0,0,255))
		return
	end

	local trace = {}
	trace.start = ply:GetShootPos()
	trace.endpos = trace.start + (ply:GetAimVector() * 10000)
	trace.mask = bit.bor(MASK_WATER, MASK_SOLID)
	trace.filter = ply

	local tr = util.TraceLine(trace)
	if not tr.Hit then
		ply:SendMessage("You must look at a surface!", 10, Color(255,0,0,255))
		return 
	end

	local removed = 0
	for _, ent in ipairs(ents.FindInSphere(tr.HitPos, 250)) do
		if ent:GetClass() == "gms_fish_hotspot" then
			ent:Remove()
			removed = removed + 1
		end
	end

	ply:SendMessage("Removed " .. removed .. " hotspots.", 10, Color(150,140,20,255))
end)