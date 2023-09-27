GM.Worlds.Events = GM.Worlds.Events or {}
GM.Worlds.Events.Sailors = GM.Worlds.Events.Sailors or {}
GM.Worlds.Events.Sailors.NextAppearance = GM.Worlds.Events.Sailors.NextAppearance or {}

function SGS_NextSailorAppearance()
    GAMEMODE.Worlds.Events.Sailors.NextAppearance.day = math.random(3, 5) -- Appear every 3-5 days
end
GM.Worlds.Events.Sailors.NextAppearance.day = math.random(3,5)
GM.Worlds.Events.Sailors.NextAppearance.active = false

function SGS_StartSailors()
    local sailors = GAMEMODE.Worlds.Events.Sailors
    if sailors.active then return end

    -- Choose a world
    local worlds = GAMEMODE.Worlds.Events.Sailors.Worlds
    if #worlds == 0 then return end

    local world = worlds[math.random(1, #worlds)]
    
    sailors.world = world
    sailors.active = true
    for k, v in pairs( player.GetAll() ) do
		if GAMEMODE.Worlds:GetEntityWorldSpace( v ) == world then
			v:SendMessage( "A ship has docked nearby!", 60, Color(255, 255, 0, 255))
            v:SendLua("surface.PlaySound(\"events/sailors_arrive.mp3\")")
		else
			v:SendMessage( "A ship has docked on a distant world.", 60, Color(255, 255, 0, 255))
		end
	end

    SGS_SpawnSailors(world)
    sailors.day = 3 -- Leave after 3 days
end

function SGS_SpawnSailors(world)
    local event = world.Events.sailors
    local boat = ents.Create("prop_dynamic")
    boat:SetModel(SGS.proplist["sailor_rowboat"])
    boat:SetPos(event.boat.pos)
    boat:SetAngles(event.boat.angles)
    boat:SetNWString("Owner", "World")
    boat:PhysicsInit(SOLID_VPHYSICS)
    boat:SetMoveType(MOVETYPE_NONE)
    event.boat.entity = boat
    boat:Spawn()

    local sailor = ents.Create("npc_sailor")
    sailor:SetPos(event.sailor.pos)
    sailor:SetAngles(event.sailor.angles or Angle())
    sailor:SetNWString("Name", event.sailor.name)
    event.sailor.entity = sailor
    sailor:Spawn()
end

function SGS_DespawnSailors(world)
    if not world.Events.sailors then return end

    local event = world.Events.sailors
    event.boat.entity:Remove()
    event.boat.entity = nil
    event.sailor.entity:Remove()
    event.sailor.entity = nil
end

function SGS_EndSailors()
    local sailors = GAMEMODE.Worlds.Events.Sailors
    if not sailors.active then return end

    sailors.active = false
    for k, v in pairs( player.GetAll() ) do
		v:SendMessage( "The sailors have departed for the seas.", 60, Color(255, 255, 0, 255))
	end

    SGS_DespawnSailors(sailors.world)
    SGS_NextSailorAppearance()
end

function SGS_CheckSailors(min)
    local sailors = GAMEMODE.Worlds.Events.Sailors
    if not sailors.NextAppearance then return end

    if min == 500 then
        if sailors.NextAppearance.day > 0 then
            sailors.NextAppearance.day = sailors.NextAppearance.day - 1
        else
            if sailors.active then
                SGS_EndSailors()
            else
                SGS_StartSailors()
            end
        end
    end
end
hook.Add("DayLightChangeTime", "SGS_CheckSailors", SGS_CheckSailors)