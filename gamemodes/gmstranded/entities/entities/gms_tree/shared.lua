ENT.Type = "anim"
ENT.Base = "base_anim"

ENT.PrintName = "Tree Node" --The name of the SENT.
ENT.Author = "TGRCDev" --Your name.
ENT.Contact = "tgrc@tgrc.dev" --EMail address.
ENT.Purpose = "" --The purpose of this SENT.
ENT.Instructions = "" --Instructions

ENT.Spawnable = false --Can the clients spawn this SENT?
ENT.AdminSpawnable = false --Can the admins spawn this SENT?

function ENT:SetupDataTables()
    self:NetworkVar("String", 0, "ResourceID")

    if CLIENT then
        self:NetworkVarNotify("ResourceID", function(tree, name, old, new)
            print("Entity(" .. tree:EntIndex() .. ") ResourceID Updated (\"" .. old .. "\" -> \"" .. new .. "\")")
            if old == new then return end
            local res = SGS_LookupResource(new)
            if not res then
                print("Entity " .. tree:EntIndex() .. " was given invalid resource ID \"" .. new .. "\"")
            end
            tree:SetResource(res)
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