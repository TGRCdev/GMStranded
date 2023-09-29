GM.Events = GM.Events or {}
GM.Events.Sailors = GM.Events.Sailors or {}
GM.Events.Sailors.PlayerStocks = GM.Events.Sailors.PlayerStocks or {}

function SGS_NextSailorAppearance()
    GAMEMODE.Events.Sailors.day = math.random(3, 5) -- Appear every 3-5 days
end

function SGS_CalcSailorStock()
    local CurStocks = {}
    for category_name, items in pairs(GAMEMODE.Events.Sailors.Stock) do
        local category = {}
        for item_id, item in pairs(items) do
            item.amt = math.random(0,item.maxstock)
            if item.amt > 0 then
                category[item_id] = item
            end
        end

        if next(category) != nil then
            CurStocks[category_name] = category
        end
    end

    return CurStocks
end

function SGS_StartSailors()
    local sailors = GAMEMODE.Events.Sailors
    if sailors.active then return end

    -- Choose a world
    local worlds = GAMEMODE.Events.Sailors.Worlds
    if #worlds == 0 then return end

    -- Setup stocks
    sailors.CurStocks = SGS_CalcSailorStock()
    sailors.PlayerStocks = {}

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
    local sailors = GAMEMODE.Events.Sailors
    if not sailors.active then return end

    sailors.active = false
    for _, ply in pairs( player.GetAll() ) do
		ply:SendMessage( "The sailors have departed for the seas.", 60, Color(255, 255, 0, 255))
	end
    net.Start("sgs_endsailors")
    net.Broadcast()
    sailors.PlayerStocks = {}

    SGS_DespawnSailors(sailors.world)
    SGS_NextSailorAppearance()
end
util.AddNetworkString("sgs_endsailors")

function SGS_SailorStock(category, item_id)
    print("DEBUG: [" .. category .. "][" .. item_id .. "]")
    local sailors = GAMEMODE.Events.Sailors
    if not sailors.CurStocks[category] or not sailors.CurStocks[category][item_id] then
        return nil
    else
        return sailors.CurStocks[category][item_id]
    end
end

local PlayerMeta = FindMetaTable("Player")

function PlayerMeta:SailorStock()
    return GAMEMODE.Events.Sailors.PlayerStocks[self:GetPlayerID()]
end

function PlayerMeta:SailorStockRemaining(category, item_id)
    local stock = self:SailorStock()
    if not stock or
        not stock[category] or 
        not stock[category][item_id] then
        local item = SGS_SailorStock(category, item_id)
        if not item then
            return 0
        else
            return item.amt
        end
    else
        return stock[category][item_id]
    end
end

function PlayerMeta:SailorBuy(category, item_id)
    local id = self:GetPlayerID()
    local sailors = GAMEMODE.Events.Sailors

    if not sailors.active then
        self:SendMessage("There are no sailors to buy from!", 60, Color(255,0,0,255))
        return false
    end

    local sailor_ent = sailors.world.Events.sailors.sailor.entity

    if sailor_ent:GetPos():DistToSqr(self:GetPos()) > 250000 then
        self:SendMessage("You need to be closer to purchase from the sailor!", 60, Color(255,0,0,255))
    end

    local item = SGS_SailorStock(category, item_id)

    if not item then
        self:SendMessage("Invalid item!", 60, Color(255, 0, 0, 255))
        return
    end

    if self:SailorStockRemaining(category, item_id) <= 0 then
        self:SendMessage("That item is out of stock.", 60, Color(255,0,0,255))
        return
    end

    local purchased, cost = self:Buy(item)
    if purchased then
        self:AddStat("sailor_tokens_spent", cost)
        sailors.PlayerStocks[id] = sailors.PlayerStocks[id] or {}
        sailors.PlayerStocks[id][category] = sailors.PlayerStocks[id][category] or {}
        sailors.PlayerStocks[id][category][item_id] = sailors.PlayerStocks[id][category][item_id] or SGS_SailorStock(category, item_id).amt
        sailors.PlayerStocks[id][category][item_id] = sailors.PlayerStocks[id][category][item_id] - 1

        net.Start("sgs_sailor_purchase_complete")
            net.WriteString(category)
            net.WriteString(item_id)
        net.Send(self)
    end
end
util.AddNetworkString("sgs_sailor_purchase_complete")

function SGS_Sailor_Purchase(ply, com, args)
    if #args > 2 then
        ply:SendMessage("Too many arguments.", 60, Color(0, 255, 0, 255))
        return
    elseif #args < 2 then
        ply:SendMessage("Not enough arguments.", 60, Color(0,255,0,255))
        return
    end

    ply:SailorBuy(args[1], args[2])
end
concommand.Add("sgs_sailor_purchase", SGS_Sailor_Purchase)

function SGS_CheckSailors(min)
    local sailors = GAMEMODE.Events.Sailors
    if not sailors.day then
        SGS_NextSailorAppearance()
    end

    if min == 500 then
        if sailors.day > 0 then
            sailors.day = sailors.day - 1
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