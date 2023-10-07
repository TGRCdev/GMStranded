ENT.Type = "anim"
ENT.Base = "base_anim"

ENT.PrintName = "Ore Node" --The name of the SENT.
ENT.Author = "TGRCDev" --Your name.
ENT.Contact = "" --EMail address.
ENT.Purpose = "" --The purpose of this SENT.
ENT.Instructions = "" --Instructions

ENT.Spawnable = false --Can the clients spawn this SENT?
ENT.AdminSpawnable = false --Can the admins spawn this SENT?

function ENT:SetupDataTables()
    self:NetworkVar("String", 0, "ResourceID")

    if CLIENT then
        self:NetworkVarNotify("ResourceID", function(rock, name, old, new)
            print("ResourceID Updated (" .. old .. ", " .. new .. ")")
            if old == new then return end
            local res = SGS_LookupResource(new)
            if not res then
                print("Entity " .. rock:GetEntIndex() .. " was given invalid resource ID \"" .. new .. "\"")
            end
            rock._resource = res
        end)
    end
end

function ENT:GetResource()
    return self._resource
end

function ENT:SetResource(res)
    self._resource = res
    if SERVER then
        self:SetModel(res.model)
        self:SetColor(res.color or Color(255,255,255,255))
        self:SetResourceID(res.id)
        self:UpdatePhysicsModel()
    end
end