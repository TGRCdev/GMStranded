local initialized = false
local in_commit = false

local function SqlOrDefault(val, default)
    if not val then return default end
    return sql.SQLStr(val)
end

local function SqlOrNull(val)
    return SqlOrDefault(val, "NULL")
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
    sql.Commit()
    initialized = false
    EnsureRecipeTables()
end

function EnsureRecipeTables()
    if initialized then return end
    sql.Begin()
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe (
            RecipeId TEXT PRIMARY KEY,
            Category TEXT DEFAULT('misc'),
            Icon TEXT,
            Title TEXT,
            Description TEXT
        )
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_structure_recipe (
            StructureId TEXT,
            RecipeId TEXT,
            Primary Key(StructureId, RecipeId),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        )
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_level_req (
            RecipeId TEXT,
            Skill TEXT,
            Level INTEGER,
            Primary Key(RecipeId, Skill),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        )
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_item_cost (
            RecipeId TEXT,
            ResourceId TEXT,
            Amount INTEGER DEFAULT(1),
            Primary Key(RecipeId, ResourceId),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        )
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_tool_cost (
            RecipeId TEXT,
            ToolId TEXT,
            Amount INTEGER DEFAULT(1),
            Primary Key(RecipeId, ToolId),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        )
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_gives_item (
            RecipeId TEXT,
            ResourceId TEXT,
            Amount INTEGER DEFAULT(1),
            Primary Key(RecipeId, ResourceId),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        )
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_gives_tool (
            RecipeId TEXT,
            ToolId TEXT,
            Amount INTEGER DEFAULT(1),
            Primary Key(RecipeId, ToolId),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        )
    ]])
    sql.Query([[
        CREATE TABLE IF NOT EXISTS sgs_recipe_gives_xp (
            RecipeId TEXT,
            Skill TEXT,
            Amount INTEGER,
            Primary Key(RecipeId, Skill),
            Foreign Key(RecipeId) References sgs_recipe(RecipeId) ON DELETE CASCADE ON UPDATE CASCADE
        )
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

function SGS_RegisterRecipe(structure_id, recipe)
    local internal_commit = false
    if not in_commit then
        print("WARN: Registering recipe \"" .. recipe.id .. "\" outside of a commit. This will be slower for large amounts of recipes.")
        internal_commit = true
        SGS_BeginRecipeCommit()
    end

    local recipe_id = sql.SQLStr(recipe.id)
    sql.Query(Format("INSERT OR REPLACE INTO sgs_recipe (RecipeId, Category, Icon, Title, Description) VALUES (%s, %s, %s, %s, %s)", recipe_id, SqlOrDefault(recipe.category, "'misc'"), SqlOrNull(recipe.icon), SqlOrNull(recipe.title), SqlOrNull(recipe.description)))
    sql.Query(Format("INSERT OR REPLACE INTO sgs_structure_recipe (StructureId, RecipeId) VALUES (%s, %s)", sql.SQLStr(structure_id), sql.SQLStr(recipe_id)))
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
            Title as title
        FROM sgs_recipe
        WHERE id == %s
    ]], recipe_id))
    ConvertSqlNulls(recipe)

    -- Level requirements
    local lvl_reqs = sql.Query(Format([[
        SELECT
            Skill, Level
        FROM sgs_recipe_level_req
        WHERE RecipeId == %s
    ]], recipe_id))
    if lvl_reqs then
        recipe.lvl_reqs = {}
        for _, row in ipairs(lvl_reqs) do
            recipe.lvl_reqs[row.Skill] = row.Level
        end
    end

    -- Item costs
    local item_cost = sql.Query(Format([[
        SELECT
            ResourceId, Amount
        FROM sgs_recipe_item_cost
        WHERE RecipeId == %s
    ]], recipe_id))
    if item_cost then
        recipe.item_cost = {}
        for _, row in ipairs(item_cost) do
            recipe.item_cost[row.ResourceId] = row.Amount
        end
    end

    -- Tool costs
    local tool_cost = sql.Query(Format([[
        SELECT
            ToolId, Amount
        FROM sgs_recipe_tool_cost
        WHERE RecipeId == %s
    ]], recipe_id))
    if tool_cost then
        recipe.tool_cost = {}
        for _, row in ipairs(tool_cost) do
            recipe.tool_cost[row.ToolId] = row.Amount
        end
    end

    -- Gives Items
    local gives_item = sql.Query(Format([[
        SELECT
            ResourceId, Amount
        FROM sgs_recipe_gives_item
        WHERE RecipeId == %s
    ]], recipe_id))
    if gives_item then
        recipe.gives_items = {}
        for _, row in ipairs(gives_item) do
            recipe.gives_items[row.ResourceId] = row.Amount
        end
    end

    -- Gives Tools
    local gives_tool = sql.Query(Format([[
        SELECT
            ToolId, Amount
        FROM sgs_recipe_gives_tool
        WHERE RecipeId == %s
    ]], recipe_id))
    if gives_tool then
        recipe.gives_tools = {}
        for _, row in ipairs(gives_tool) do
            recipe.gives_tools[row.ToolId] = row.Amount
        end
    end

    -- Gives XP
    local gives_xp = sql.Query(Format([[
        SELECT
            Skill, Amount
        FROM sgs_recipe_gives_xp
        WHERE RecipeId == %s
    ]], recipe_id))
    if gives_xp then
        recipe.gives_xp = {}
        for _, row in ipairs(gives_xp) do
            recipe.gives_xp[row.Skill] = row.Amount
        end
    end

    return recipe
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
    }

    SGS_RegisterRecipe("workbench", RECIPE)
end

ResetRecipeTables()

-- Load Recipe Tables
local files, _ = file.Find("gmstranded/gamemode/modules/recipes/*.lua", "LUA")
for _, filename in ipairs(files) do
    print("Stranded: Loading recipes (" .. filename .. ")")
    include( "gmstranded/gamemode/modules/recipes/" .. filename )
    AddCSLuaFile( "gmstranded/gamemode/modules/recipes/" .. filename )
end