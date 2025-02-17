include("shared.lua")

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

function DrawSailorNames()
	local playerPos = LocalPlayer():GetPos()

	for _, sailor in ipairs(ents.FindByClass("npc_sailor")) do
		local sailorPos = sailor:GetPos() + Vector(0,0,25)
		
		local trace = {}
		trace.start = playerPos
		trace.endpos = sailorPos
		local trace = util.TraceLine( trace )

		local dist = playerPos:Distance(sailorPos)
		local pos = sailor:EyePos()
		pos = pos:ToScreen()

		local textalign = TEXT_ALIGN_CENTER

		local color = Color(210,210,0,255)

		if not trace.HitWorld and dist <= 600 then
			draw.SimpleTextOutlined( "Sailor " .. sailor:GetNWString("Name", "Null"), "SGS_HUD3", pos.x, pos.y, color, textalign, 1,1,Color(0,0,0,255))
			draw.SimpleTextOutlined("[Trades and Requisitions]", "SGS_HUD3", pos.x, pos.y + 10, color,textalign,1,1,Color(0,0,0,255))
		elseif dist < 2000 then
			-- Draw indicator box over NPC
			draw.RoundedBoxEx(2, pos.x - 4, pos.y - 4, 8, 8, color, true, true, true, true)
		end
	end
end
hook.Add("HUDPaint", "DrawSailorNames", DrawSailorNames)

--Return true if this entity is translucent.
--Return: Boolean
function ENT:IsTranslucent()
	return false
end