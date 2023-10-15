local initialized = false
local in_commit = false

local function SqlOrDefault(val, default)
    if not val then return default end
    return sql.SQLStr(val)
end

local function SqlOrNull(val)
    return SqlOrDefault(val, "NULL")
end

local function SqlBool(val)
    if val then
        return "TRUE"
    else
        return "FALSE"
    end
end

if SERVER then
sql.m_strError = nil -- This is required to invoke __newindex
setmetatable(sql, { __newindex = function( table, k, v )
    if k == "m_strError" and v then
        ErrorNoHaltWithStack("[SQL Error] " .. v )
    end
end } )
end

function ResetRecipeTables()
    sql.Begin()
    sql.Query("DROP TABLE IF EXISTS sgs_recipe_gives_xp")
    sql.Query("DROP TABLE IF EXISTS sgs_recipe_gives_tool")
    sql.Query("DROP TABLE IF EXISTS sgs_recipe_gives_item")
    sql.Query("DROP TABLE IF EXISTS sgs_recipe_tool_cost")
    sql.Query("DROP TABLE IF EXISTS sgs_recipe_item_cost")
    sql.Query("DROP TABLE IF EXISTS sgs_recipe_level_req")
    sql.Query("DROP TABLE IF EXISTS sgs_structure_recipe")
    sql.Query("DROP TABLE IF EXISTS sgs_recipe")
    sql.Query("DROP TABLE IF EXISTS sgs_recipe_stat")
    sql.Commit()
    initialized = false
    EnsureRecipeTables()

    -- Load Recipe Tables
    local files, _ = file.Find("gmstranded/gamemode/modules/recipes/*.lua", "LUA")
    for _, filename in ipairs(files) do
        print("Stranded: Loading recipes (" .. filename .. ")")
        include( "gmstranded/gamemode/modules/recipes/" .. filename )
        AddCSLuaFile( "gmstranded/gamemode/modules/recipes/" .. filename )
    end
end

function EnsureRecipeTables()
    if initialized then return end
    sql.Begin()
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe (
            RecipeId TEXT PRIMARY KEY,
            Category TEXT DEFAULT('misc') NOT NULL,
            Icon TEXT,
            Title TEXT,
            Description TEXT,
            SortKey INTEGER DEFAULT(0) NOT NULL,
            SmithCheck BOOLEAN DEFAULT(FALSE) NOT NULL
        ) WITHOUT ROWID
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_structure_recipe (
            StructureId TEXT NOT NULL,
            RecipeId TEXT,
            Primary Key(StructureId, RecipeId),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        ) WITHOUT ROWID
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_level_req (
            RecipeId TEXT,
            Skill TEXT,
            Level INTEGER NOT NULL,
            Primary Key(RecipeId, Skill),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        ) WITHOUT ROWID
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_item_cost (
            RecipeId TEXT,
            ResourceId TEXT,
            Amount INTEGER DEFAULT(1) NOT NULL,
            Primary Key(RecipeId, ResourceId),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        ) WITHOUT ROWID
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_tool_cost (
            RecipeId TEXT,
            ToolId TEXT,
            Amount INTEGER DEFAULT(1) NOT NULL,
            Primary Key(RecipeId, ToolId),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        ) WITHOUT ROWID
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_gives_item (
            RecipeId TEXT,
            ResourceId TEXT,
            Amount INTEGER DEFAULT(1) NOT NULL,
            Primary Key(RecipeId, ResourceId),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        ) WITHOUT ROWID
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_gives_tool (
            RecipeId TEXT,
            ToolId TEXT,
            Amount INTEGER DEFAULT(1) NOT NULL,
            Primary Key(RecipeId, ToolId),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        ) WITHOUT ROWID
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_gives_xp (
            RecipeId TEXT,
            Skill TEXT,
            Amount INTEGER NOT NULL,
            Primary Key(RecipeId, Skill),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        ) WITHOUT ROWID
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_stat (
            RecipeId TEXT,
            StatId TEXT,
            Amount INTEGER NOT NULL,
            Primary Key(RecipeId, StatId),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        ) WITHOUT ROWID
    ]])
    sql.Commit()
    initialized = true
end

function SGS_BeginRecipeCommit()
    if in_commit then
        ErrorNoHaltWithStack("Tried to begin a recipe commit while already in a recipe commit")
        return
    end
    EnsureRecipeTables()
    sql.Begin()
    in_commit = true
end

function SGS_EndRecipeCommit()
    if not in_commit then
        ErrorNoHaltWithStack("Tried to end a recipe commit without an active recipe commit")
        return
    end
    sql.Commit()
    in_commit = false
end

SGS.sortkey = SGS.sortkey or 0
function SGS_RegisterRecipe(structure_id, recipe)
    local internal_commit = false
    if not in_commit then
        print("WARN: Registering recipe \"" .. recipe.id .. "\" outside of a commit. This will be slower for large amounts of recipes.")
        internal_commit = true
        SGS_BeginRecipeCommit()
    end

    local recipe_id = sql.SQLStr(recipe.id)
    sql.Query(Format("INSERT OR REPLACE INTO sgs_recipe (RecipeId, Category, Icon, Title, Description, SortKey, SmithCheck) VALUES (%s, %s, %s, %s, %s, %s, %s)", recipe_id, SqlOrDefault(recipe.category, "'misc'"), SqlOrNull(recipe.icon), SqlOrNull(recipe.title), SqlOrNull(recipe.description), SGS.sortkey, SqlBool(recipe.smithcheck)))
    SGS.sortkey = SGS.sortkey + 1
    sql.Query(Format("INSERT OR REPLACE INTO sgs_structure_recipe (StructureId, RecipeId) VALUES (%s, %s)", sql.SQLStr(structure_id), recipe_id))
    for skill, req in pairs(recipe.lvl_reqs or {}) do
        sql.Query(Format("INSERT OR REPLACE INTO sgs_recipe_level_req (RecipeId, Skill, Level) VALUES (%s, %s, %s)", recipe_id, sql.SQLStr(skill), sql.SQLStr(req)))
    end
    for item, cost in pairs(recipe.item_cost or {}) do
        sql.Query(Format("INSERT OR REPLACE INTO sgs_recipe_item_cost (RecipeId, ResourceId, Amount) VALUES (%s, %s, %s)", recipe_id, sql.SQLStr(item), sql.SQLStr(cost)))
    end
    for tool, cost in pairs(recipe.tool_cost or {}) do
        sql.Query(Format("INSERT OR REPLACE INTO sgs_recipe_tool_cost (RecipeId, ToolId, Amount) VALUES (%s, %s, %s)", recipe_id, sql.SQLStr(tool), sql.SQLStr(cost)))
    end
    for item, gives in pairs(recipe.gives_items or {}) do
        sql.Query(Format("INSERT OR REPLACE INTO sgs_recipe_gives_item (RecipeId, ResourceId, Amount) VALUES (%s, %s, %s)", recipe_id, sql.SQLStr(item), sql.SQLStr(gives)))
    end
    for tool, gives in pairs(recipe.gives_tools or {}) do
        sql.Query(Format("INSERT OR REPLACE INTO sgs_recipe_gives_tool (RecipeId, ToolId, Amount) VALUES (%s, %s, %s)", recipe_id, sql.SQLStr(tool), sql.SQLStr(gives)))
    end
    for skill, gives in pairs(recipe.gives_xp or {}) do
        sql.Query(Format("INSERT OR REPLACE INTO sgs_recipe_gives_xp (RecipeId, Skill, Amount) VALUES (%s, %s, %s)", recipe_id, sql.SQLStr(skill), sql.SQLStr(gives)))
    end
    for stat, amount in pairs(recipe.stats or {}) do
        sql.Query(Format("INSERT OR REPLACE INTO sgs_recipe_stat (RecipeId, StatId, Amount) VALUES (%s, %s, %s)", recipe_id, sql.SQLStr(stat), sql.SQLStr(amount)))
    end

    if internal_commit then
        SGS_EndRecipeCommit()
    end
end

function ConvertSqlNulls(row)
    for k,v in pairs(row) do
        if v == "NULL" then
            row[k] = nil
        end
    end
end

function SGS_QueryRecipe(recipe_id)
    EnsureRecipeTables()

    local recipe_id = sql.SQLStr(recipe_id)

    -- Check that a recipe exists with this ID
    if sql.QueryValue(Format("SELECT EXISTS(SELECT 1 FROM sgs_recipe WHERE RecipeId == %s)", recipe_id)) != "1" then
        return nil
    end

    -- Retrieve basic data
    local recipe = sql.QueryRow(Format([[
        SELECT 
            RecipeId as id,
            Category as category,
            Icon as icon,
            Title as title,
            Description as description,
            SmithCheck as smithcheck
        FROM sgs_recipe
        WHERE id == %s
    ]], recipe_id))
    ConvertSqlNulls(recipe)
    recipe.smithcheck = tobool(recipe.smithcheck)

    -- Allowed structures
    local structures = sql.Query(Format([[
        SELECT
            StructureId
        FROM sgs_structure_recipe
        WHERE RecipeId == %s
    ]], recipe_id))
    recipe.structures = {}
    for _, row in ipairs(structures) do
        recipe.structures[row.StructureId] = true
    end

    -- Level requirements
    local lvl_reqs = sql.Query(Format([[
        SELECT
            Skill, Level
        FROM sgs_recipe_level_req
        WHERE RecipeId == %s
    ]], recipe_id))
    recipe.lvl_reqs = {}
    for _, row in ipairs(lvl_reqs or {}) do
        recipe.lvl_reqs[row.Skill] = tonumber(row.Level)
    end

    -- Item costs
    local item_cost = sql.Query(Format([[
        SELECT
            ResourceId, Amount
        FROM sgs_recipe_item_cost
        WHERE RecipeId == %s
    ]], recipe_id))
    recipe.item_cost = {}
    for _, row in ipairs(item_cost or {}) do
        recipe.item_cost[row.ResourceId] = tonumber(row.Amount)
    end

    -- Tool costs
    local tool_cost = sql.Query(Format([[
        SELECT
            ToolId, Amount
        FROM sgs_recipe_tool_cost
        WHERE RecipeId == %s
    ]], recipe_id))
    recipe.tool_cost = {}
    for _, row in ipairs(tool_cost or {}) do
        recipe.tool_cost[row.ToolId] = tonumber(row.Amount)
    end

    -- Gives Items
    local gives_item = sql.Query(Format([[
        SELECT
            ResourceId, Amount
        FROM sgs_recipe_gives_item
        WHERE RecipeId == %s
    ]], recipe_id))
    recipe.gives_items = {}
    for _, row in ipairs(gives_item or {}) do
        recipe.gives_items[row.ResourceId] = tonumber(row.Amount)
    end

    -- Gives Tools
    local gives_tool = sql.Query(Format([[
        SELECT
            ToolId, Amount
        FROM sgs_recipe_gives_tool
        WHERE RecipeId == %s
    ]], recipe_id))
    recipe.gives_tools = {}
    for _, row in ipairs(gives_tool or {}) do
        recipe.gives_tools[row.ToolId] = tonumber(row.Amount)
    end

    -- Gives XP
    local gives_xp = sql.Query(Format([[
        SELECT
            Skill, Amount
        FROM sgs_recipe_gives_xp
        WHERE RecipeId == %s
    ]], recipe_id))
    recipe.gives_xp = {}
    for _, row in ipairs(gives_xp or {}) do
        recipe.gives_xp[row.Skill] = tonumber(row.Amount)
    end

    -- Stats
    local stats = sql.Query(Format([[
        SELECT
            StatId, Amount
        FROM sgs_recipe_stat
        WHERE RecipeId == %s
    ]], recipe_id))
    recipe.stats = {}
    for _, row in ipairs(stats or {}) do
        recipe.stats[row.StatId] = tonumber(row.Amount)
    end

    return recipe
end

function SGS_StructureRecipes(structure_id)
    EnsureRecipeTables()

    local structure_id = sql.SQLStr(structure_id)

    -- Check that a structure exists with this ID
    if sql.QueryValue(Format("SELECT EXISTS(SELECT 1 FROM sgs_structure_recipe WHERE StructureId == %s)", structure_id)) != "1" then
        return nil
    end

    -- Basic information
    local recipes = sql.Query(Format([[
        SELECT
            RecipeId as id,
            Icon as icon,
            Category as category,
            Title as title,
            Description as description,
            SortKey as sortkey
        FROM sgs_recipe NATURAL JOIN sgs_structure_recipe
        WHERE StructureId == %s
    ]], structure_id))
    for _, recipe in ipairs(recipes) do
        -- Fix sortkey's type
        recipe.sortkey = tonumber(recipe.sortkey)
        -- Fix smithcheck's type
        recipe.smithcheck = tobool(recipe.smithcheck)
    end

    -- Level requirements
    local lvl_reqs_rows = sql.Query(Format([[
        SELECT
            RecipeId, Skill, Level
        FROM sgs_recipe_level_req
            NATURAL JOIN sgs_structure_recipe
        WHERE StructureId == %s
    ]], structure_id))
    local lvl_reqs = {}
    for _, row in ipairs(lvl_reqs_rows or {}) do
        lvl_reqs[row.RecipeId] = lvl_reqs[row.RecipeId] or {}
        lvl_reqs[row.RecipeId][row.Skill] = tonumber(row.Level)
    end

    -- Item costs
    local item_cost_rows = sql.Query(Format([[
        SELECT
            RecipeId, ResourceId, Amount
        FROM sgs_recipe_item_cost
            NATURAL JOIN sgs_structure_recipe
        WHERE StructureId == %s
    ]], structure_id))
    local item_costs = {}
    for _, row in ipairs(item_cost_rows or {}) do
        item_costs[row.RecipeId] = item_costs[row.RecipeId] or {}
        item_costs[row.RecipeId][row.ResourceId] = tonumber(row.Amount)
    end

    -- Tool costs
    local tool_cost_rows = sql.Query(Format([[
        SELECT
            RecipeId, ToolId, Amount
        FROM sgs_recipe_tool_cost
            NATURAL JOIN sgs_structure_recipe
        WHERE StructureId == %s
    ]], structure_id))
    local tool_costs = {}
    for _, row in ipairs(tool_cost_rows or {}) do
        tool_costs[row.RecipeId] = tool_costs[row.RecipeId] or {}
        tool_costs[row.RecipeId][row.ToolId] = tonumber(row.Amount)
    end

    -- Gives items
    local gives_item_rows = sql.Query(Format([[
        SELECT
            RecipeId, ResourceId, Amount
        FROM sgs_recipe_gives_item
            NATURAL JOIN sgs_structure_recipe
        WHERE StructureId == %s
    ]], structure_id))
    local gives_items = {}
    for _, row in ipairs(gives_item_rows or {}) do
        gives_items[row.RecipeId] = gives_items[row.RecipeId] or {}
        gives_items[row.RecipeId][row.ResourceId] = tonumber(row.Amount)
    end

    -- Gives tools
    local gives_tool_rows = sql.Query(Format([[
        SELECT
            RecipeId, ToolId, Amount
        FROM sgs_recipe_gives_tool
            NATURAL JOIN sgs_structure_recipe
        WHERE StructureId == %s
    ]], structure_id))
    local gives_tools = {}
    for _, row in ipairs(gives_tool_rows or {}) do
        gives_tools[row.RecipeId] = gives_tools[row.RecipeId] or {}
        gives_tools[row.RecipeId][row.ToolId] = tonumber(row.Amount)
    end

    -- Gives xp
    local gives_xp_rows = sql.Query(Format([[
        SELECT
            RecipeId, Skill, Amount
        FROM sgs_recipe_gives_xp
            NATURAL JOIN sgs_structure_recipe
        WHERE StructureId == %s
    ]], structure_id))
    local gives_xp = {}
    for _, row in ipairs(gives_xp_rows or {}) do
        gives_xp[row.RecipeId] = gives_xp[row.RecipeId] or {}
        gives_xp[row.RecipeId][row.Skill] = tonumber(row.Amount)
    end

    -- Stats
    local stat_rows = sql.Query(Format([[
        SELECT
            RecipeId, StatId, Amount
        FROM sgs_recipe_stat
            NATURAL JOIN sgs_structure_recipe
        WHERE StructureId == %s
    ]], structure_id))
    local stats = {}
    for _, row in ipairs(stat_rows or {}) do
        stats[row.RecipeId] = stats[row.RecipeId] or {}
        stats[row.RecipeId][row.StatId] = tonumber(row.Amount)
    end

    -- Final assembly of recipe list
    for _, recipe in ipairs(recipes) do
        recipe.lvl_reqs = lvl_reqs[recipe.id] or {}
        recipe.item_cost = item_costs[recipe.id] or {}
        recipe.tool_cost = tool_costs[recipe.id] or {}
        recipe.gives_items = gives_items[recipe.id] or {}
        recipe.gives_tools = gives_tools[recipe.id] or {}
        recipe.gives_xp = gives_xp[recipe.id] or {}
        recipe.stats = stats[recipe.id] or {}
    end

    return recipes
end

-- Test Recipe
function _TestRecipe()
    local RECIPE = {
        id = "gms_test_recipe",
        lvl_reqs = { woodcutting = 20, smithing = 23 },
        item_cost = { wood = 15, iron = 7 },
        tool_cost = { gms_hatchet = 1, gms_pickaxe = 3 },
        gives_items = { gtoken = 15, sapphire = 3 },
        gives_tools = { gms_fryingpan = 1, gms_fishingrod = 1 },
        gives_xp = { woodcutting = 500, mining = 200, smithing = 300 },
        stats = { fakestat = 1 }
    }

    SGS_RegisterRecipe("gms_workbench", RECIPE)
end

ResetRecipeTables()