SGS.arcane_multipliers = SGS.arcane_multipliers or {}
function SGS_RegisterArcane( structure, recipe )
    if recipe.multipliers then
        table.SortByMember(recipe.multipliers, "multiplier")
        SGS.arcane_multipliers[recipe.id] = recipe.multipliers
    end
    SGS_RegisterRecipe( structure, recipe )
end

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneWind2.png"
RECIPE.title = "Forge Wind Stone"
RECIPE.id = "forge1"
RECIPE.description = "Imbues airy magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 1, stone_powder = 1}
RECIPE.lvl_reqs = { arcane = 1}
RECIPE.multipliers = { {level = 15, multiplier = 2}, {level = 30, multiplier = 3} }
RECIPE.gives_items = { wind_stone = 1}
RECIPE.gives_xp = { arcane = 6 }
RECIPE.category = "1. stone forging"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneWater2.png"
RECIPE.title = "Forge Water Stone"
RECIPE.id = "forge2"
RECIPE.description = "Imbues watery magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 1, stone_powder = 2}
RECIPE.lvl_reqs = { arcane = 10}
RECIPE.multipliers = { {level = 25, multiplier = 2}, {level = 35, multiplier = 3} }
RECIPE.gives_items = { water_stone = 1}
RECIPE.gives_xp = { arcane = 20 }
RECIPE.category = "1. stone forging"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneEarth2.png"
RECIPE.title = "Forge Earth Stone"
RECIPE.id = "forge3"
RECIPE.description = "Imbues rocky magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 1, iron_powder = 1}
RECIPE.lvl_reqs = { arcane = 15}
RECIPE.multipliers = { {level = 35, multiplier = 2}, {level = 45, multiplier = 3} }
RECIPE.gives_items = { earth_stone = 1}
RECIPE.gives_xp = { arcane = 25 }
RECIPE.category = "1. stone forging"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneFire2.png"
RECIPE.title = "Forge Fire Stone"
RECIPE.id = "forge4"
RECIPE.description = "Imbues fiery magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 1, coal_powder = 1}
RECIPE.lvl_reqs = { arcane = 20}
RECIPE.multipliers = { {level = 40, multiplier = 2}, {level = 50, multiplier = 3} }
RECIPE.gives_items = { fire_stone = 1}
RECIPE.gives_xp = { arcane = 30 }
RECIPE.category = "1. stone forging"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneChaos2.png"
RECIPE.title = "Forge Chaos Stone"
RECIPE.id = "forge5"
RECIPE.description = "Imbues chaotic magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 1, silver_powder = 1}
RECIPE.lvl_reqs = { arcane = 30}
RECIPE.multipliers = { {level = 45, multiplier = 2}, {level = 60, multiplier = 3} }
RECIPE.gives_items = { chaos_stone = 1}
RECIPE.gives_xp = { arcane = 40 }
RECIPE.category = "1. stone forging"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneNature2.png"
RECIPE.title = "Forge Nature Stone"
RECIPE.id = "forge6"
RECIPE.description = "Imbues natural magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 1, trinium_powder = 1}
RECIPE.lvl_reqs = { arcane = 40}
RECIPE.multipliers = { {level = 55, multiplier = 2}, {level = 65, multiplier = 3} }
RECIPE.gives_items = { nature_stone = 1}
RECIPE.gives_xp = { arcane = 50 }
RECIPE.category = "1. stone forging"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneCosmic2.png"
RECIPE.title = "Forge Cosmic Stone"
RECIPE.id = "forge7"
RECIPE.description = "Imbues cosmic magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 1, naquadah_powder = 1}
RECIPE.lvl_reqs = { arcane = 50}
RECIPE.multipliers = { {level = 60, multiplier = 2}, {level = 75, multiplier = 3} }
RECIPE.gives_items = { cosmic_stone = 1}
RECIPE.gives_xp = { arcane = 60 }
RECIPE.category = "1. stone forging"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )





RECIPE = {}
RECIPE.icon = "vgui/stones/RuneWind2.png"
RECIPE.title = "Forge Wind Stone x5"
RECIPE.id = "forge51"
RECIPE.description = "Imbues airy magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 5, stone_powder = 5}
RECIPE.lvl_reqs = { arcane = 1}
RECIPE.multipliers = { {level = 15, multiplier = 2}, {level = 30, multiplier = 3} }
RECIPE.gives_items = { wind_stone = 5}
RECIPE.gives_xp = { arcane = 27 }
RECIPE.category = "2. stone forging - 5x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneWater2.png"
RECIPE.title = "Forge Water Stone x5"
RECIPE.id = "forge52"
RECIPE.description = "Imbues watery magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 5, stone_powder = 10}
RECIPE.lvl_reqs = { arcane = 10}
RECIPE.multipliers = { {level = 25, multiplier = 2}, {level = 35, multiplier = 3} }
RECIPE.gives_items = { water_stone = 5}
RECIPE.gives_xp = { arcane = 90 }
RECIPE.category = "2. stone forging - 5x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneEarth2.png"
RECIPE.title = "Forge Earth Stone x5"
RECIPE.id = "forge53"
RECIPE.description = "Imbues rocky magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 5, iron_powder = 5}
RECIPE.lvl_reqs = { arcane = 15}
RECIPE.multipliers = { {level = 35, multiplier = 2}, {level = 45, multiplier = 3} }
RECIPE.gives_items = { earth_stone = 5}
RECIPE.gives_xp = { arcane = 112 }
RECIPE.category = "2. stone forging - 5x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneFire2.png"
RECIPE.title = "Forge Fire Stone x5"
RECIPE.id = "forge54"
RECIPE.description = "Imbues fiery magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 5, coal_powder = 5}
RECIPE.lvl_reqs = { arcane = 20}
RECIPE.multipliers = { {level = 40, multiplier = 2}, {level = 50, multiplier = 3} }
RECIPE.gives_items = { fire_stone = 5}
RECIPE.gives_xp = { arcane = 135 }
RECIPE.category = "2. stone forging - 5x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneChaos2.png"
RECIPE.title = "Forge Chaos Stone x5"
RECIPE.id = "forge55"
RECIPE.description = "Imbues chaotic magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 5, silver_powder = 5}
RECIPE.lvl_reqs = { arcane = 30}
RECIPE.multipliers = { {level = 45, multiplier = 2}, {level = 60, multiplier = 3} }
RECIPE.gives_items = { chaos_stone = 5}
RECIPE.gives_xp = { arcane = 180 }
RECIPE.category = "2. stone forging - 5x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneNature2.png"
RECIPE.title = "Forge Nature Stone x5"
RECIPE.id = "forge56"
RECIPE.description = "Imbues natural magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 5, trinium_powder = 5}
RECIPE.lvl_reqs = { arcane = 40}
RECIPE.multipliers = { {level = 55, multiplier = 2}, {level = 65, multiplier = 3} }
RECIPE.gives_items = { nature_stone = 5}
RECIPE.gives_xp = { arcane = 225 }
RECIPE.category = "2. stone forging - 5x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneCosmic2.png"
RECIPE.title = "Forge Cosmic Stone x5"
RECIPE.id = "forge57"
RECIPE.description = "Imbues cosmic magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 5, naquadah_powder = 5}
RECIPE.lvl_reqs = { arcane = 50}
RECIPE.multipliers = { {level = 60, multiplier = 2}, {level = 75, multiplier = 3} }
RECIPE.gives_items = { cosmic_stone = 5}
RECIPE.gives_xp = { arcane = 270 }
RECIPE.category = "2. stone forging - 5x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )





RECIPE = {}
RECIPE.icon = "vgui/stones/RuneWind2.png"
RECIPE.title = "Forge Wind Stone 10x"
RECIPE.id = "forge101"
RECIPE.description = "Imbues airy magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 10, stone_powder = 10}
RECIPE.lvl_reqs = { arcane = 1}
RECIPE.multipliers = { {level = 15, multiplier = 2}, {level = 30, multiplier = 3} }
RECIPE.gives_items = { wind_stone = 10}
RECIPE.gives_xp = { arcane = 45 }
RECIPE.category = "3. stone forging - 10x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneWater2.png"
RECIPE.title = "Forge Water Stone 10x"
RECIPE.id = "forge102"
RECIPE.description = "Imbues watery magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 10, stone_powder = 20}
RECIPE.lvl_reqs = { arcane = 10}
RECIPE.multipliers = { {level = 25, multiplier = 2}, {level = 35, multiplier = 3} }
RECIPE.gives_items = { water_stone = 10}
RECIPE.gives_xp = { arcane = 150 }
RECIPE.category = "3. stone forging - 10x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneEarth2.png"
RECIPE.title = "Forge Earth Stone 10x"
RECIPE.id = "forge103"
RECIPE.description = "Imbues rocky magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 10, iron_powder = 10}
RECIPE.lvl_reqs = { arcane = 15}
RECIPE.multipliers = { {level = 35, multiplier = 2}, {level = 45, multiplier = 3} }
RECIPE.gives_items = { earth_stone = 10}
RECIPE.gives_xp = { arcane = 187 }
RECIPE.category = "3. stone forging - 10x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneFire2.png"
RECIPE.title = "Forge Fire Stone 10x"
RECIPE.id = "forge104"
RECIPE.description = "Imbues fiery magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 10, coal_powder = 10}
RECIPE.lvl_reqs = { arcane = 20}
RECIPE.multipliers = { {level = 40, multiplier = 2}, {level = 50, multiplier = 3} }
RECIPE.gives_items = { fire_stone = 10}
RECIPE.gives_xp = { arcane = 225 }
RECIPE.category = "3. stone forging - 10x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneChaos2.png"
RECIPE.title = "Forge Chaos Stone 10x"
RECIPE.id = "forge105"
RECIPE.description = "Imbues chaotic magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 10, silver_powder = 10}
RECIPE.lvl_reqs = { arcane = 30}
RECIPE.multipliers = { {level = 45, multiplier = 2}, {level = 60, multiplier = 3} }
RECIPE.gives_items = { chaos_stone = 10}
RECIPE.gives_xp = { arcane = 300 }
RECIPE.category = "3. stone forging - 10x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneNature2.png"
RECIPE.title = "Forge Nature Stone 10x"
RECIPE.id = "forge106"
RECIPE.description = "Imbues natural magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 10, trinium_powder = 10}
RECIPE.lvl_reqs = { arcane = 40}
RECIPE.multipliers = { {level = 55, multiplier = 2}, {level = 65, multiplier = 3} }
RECIPE.gives_items = { nature_stone = 10}
RECIPE.gives_xp = { arcane = 375 }
RECIPE.category = "3. stone forging - 10x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/stones/RuneCosmic2.png"
RECIPE.title = "Forge Cosmic Stone 10x"
RECIPE.id = "forge107"
RECIPE.description = "Imbues cosmic magical properties into an inert stone."
RECIPE.item_cost = { inert_stone = 10, naquadah_powder = 10}
RECIPE.lvl_reqs = { arcane = 50}
RECIPE.multipliers = { {level = 60, multiplier = 2}, {level = 75, multiplier = 3} }
RECIPE.gives_items = { cosmic_stone = 10}
RECIPE.gives_xp = { arcane = 450 }
RECIPE.category = "3. stone forging - 10x"
SGS_RegisterArcane( "gms_arcaneforge", RECIPE )