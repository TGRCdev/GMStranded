SGS.Gates = SGS.Gates or {}

function SGS.Gates:SpawnGate(id, world, info)
    local pos = info.Position
    if not pos then
        print("Error! Tried to spawn gate \"" .. id .. "\" without a position!")
        return
    end

    print("Spawning gate \"" .. id .. "\"")
    local gate = ents.Create("gms_gate")

    gate:SetPos(pos)
    if info.Angles then
        gate:SetAngles(info.Angles)
    end
    gate.id = id
    gate.name = info.Name or (world.Name .. " Gate")
    gate.world = world

    for k, v in pairs(info) do
        gate[k] = v
    end

    SGS.Gates[id] = gate
    world.Gates[id] = gate

    gate:Spawn()
end

concommand.Add("sgs_portalto", function( ply, cmd, args )
    if ply.inprocess then
        ply:SendMessage("You can't do this while you are performing an action.", 60, Color(255, 0, 0, 255))
        return false
    end

    if not ply:Alive() then
        ply:SendMessage("You can't use a gate while dead.", 60, Color(255, 0, 0, 255))
        return
    end

    if #args > 1 then
        ply:SendMessage("Too many arguements. sgs_portalto <dest_id>.", 60, Color(0, 255, 0, 255))
        return
    end
    local dest_id = args[1]

    local orig = ply:TraceFromEyes(100)
    if not IsValid(orig.Entity) or orig.Entity:GetClass() != "gms_gate" then
        ply:SendMessage("You are not near a gate!",3,Color(255,0,0,255))
        return
    end
    orig = orig.Entity

    if dest_id == orig.id then
        ply:SendMessage("You are already there!",3,Color(255,0,0,255))
        return
    end

    if not SGS.Gates[dest_id] then
        ply:SendMessage("No such gate with the id \"" .. dest_id .. "\"")
        return
    end
    local dest = SGS.Gates[dest_id]

    ply:SetPos(dest:GetPos() + (dest:GetAngles():Forward():GetNormalized() * 100))
    ply:SetEyeAngles(dest:GetAngles())
    ply:SetAngles(dest:GetAngles())
end)