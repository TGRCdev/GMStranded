AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
    self:SetModel(SGS.proplist["portal_pad"])
    self:PhysicsInit( SOLID_VPHYSICS )
    self:SetMoveType( MOVETYPE_NONE )
    self:SetSolid( SOLID_VPHYSICS )
    self:SetUseType( SIMPLE_USE )
end

function ENT:Use( ply )
    if CurTime() > ply.lastuse + 1 then
        trace = ply:TraceFromEyes(100)
        if not IsValid(trace.Entity) then
            ply.lastuse = CurTime()
            return
        end
        ply:SendLua("SGS_PortalMenu()")
        ply.lastuse = CurTime()
    end
end