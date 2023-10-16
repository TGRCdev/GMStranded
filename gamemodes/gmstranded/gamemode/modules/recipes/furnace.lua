//--Misc--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/wood2coal_x1.png"
RECIPE.title = "Wood to Coal"
RECIPE.id = "misc11"
RECIPE.description = "Turns wood into coal"
RECIPE.item_cost = { wood = 5}
RECIPE.lvl_reqs = { smithing = 25}
RECIPE.gives_items = { coal = 1}
RECIPE.gives_xp = { smithing = 30 }
RECIPE.category = "coal"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/wood2coal_x5.png"
RECIPE.title = "Wood to Coal (x5)"
RECIPE.id = "misc12"
RECIPE.description = "Turns wood into coal"
RECIPE.item_cost = { wood = 25}
RECIPE.lvl_reqs = { smithing = 25}
RECIPE.gives_items = { coal = 5}
RECIPE.gives_xp = { smithing = 130 }
RECIPE.category = "coal"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/wood2coal_x10.png"
RECIPE.title = "Wood to Coal (x10)"
RECIPE.id = "misc13"
RECIPE.description = "Turns wood into coal"
RECIPE.item_cost = { wood = 50}
RECIPE.lvl_reqs = { smithing = 25}
RECIPE.gives_items = { coal = 10}
RECIPE.gives_xp = { smithing = 250 }
RECIPE.category = "coal"
SGS_RegisterRecipe( "gms_furnace", RECIPE )


//--Iron--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/iron_x1.png"
RECIPE.title = "Iron"
RECIPE.id = "iron1"
RECIPE.description = "Smelts Iron Ore into something more useful"
RECIPE.item_cost = { iron_ore = 1}
RECIPE.lvl_reqs = { smithing = 5}
RECIPE.gives_items = { iron = 1}
RECIPE.gives_xp = { smithing = 10 }
RECIPE.category = "iron"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/iron_x5.png"
RECIPE.title = "Iron x5"
RECIPE.id = "iron2"
RECIPE.description = "Smelts Iron Ore into something more useful"
RECIPE.item_cost = { iron_ore = 5}
RECIPE.lvl_reqs = { smithing = 5}
RECIPE.gives_items = { iron = 5}
RECIPE.gives_xp = { smithing = 45 }
RECIPE.category = "iron"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/iron_x10.png"
RECIPE.title = "Iron x10"
RECIPE.id = "iron3"
RECIPE.description = "Smelts Iron Ore into something more useful"
RECIPE.item_cost = { iron_ore = 10}
RECIPE.lvl_reqs = { smithing = 5}
RECIPE.gives_items = { iron = 10}
RECIPE.gives_xp = { smithing = 90 }
RECIPE.category = "iron"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

//--Construction--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/metal_x5.png"
RECIPE.title = "Metal x5"
RECIPE.id = "construction1"
RECIPE.description = "Converts Iron into a metal usable in constructing props"
RECIPE.item_cost = { iron = 1}
RECIPE.lvl_reqs = { smithing = 5}
RECIPE.gives_items = { metal = 5 }
RECIPE.gives_xp = { smithing = 10 }
RECIPE.category = "construction"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/metal_x25.png"
RECIPE.title = "Metal x25"
RECIPE.id = "construction2"
RECIPE.description = "Converts Iron into a metal usable in constructing props"
RECIPE.item_cost = { iron = 5}
RECIPE.lvl_reqs = { smithing = 5}
RECIPE.gives_items = { metal = 25 }
RECIPE.gives_xp = { smithing = 45 }
RECIPE.category = "construction"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/glass_x1.png"
RECIPE.title = "Glass"
RECIPE.id = "construction3"
RECIPE.description = "Melt sand into glass for use in construction"
RECIPE.item_cost = { sand = 2}
RECIPE.lvl_reqs = { smithing = 10}
RECIPE.gives_items = { glass = 1 }
RECIPE.gives_xp = { smithing = 20 }
RECIPE.category = "construction"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/glass_x5.png"
RECIPE.title = "Glass x5"
RECIPE.id = "construction4"
RECIPE.description = "Melt sand into glass for use in construction"
RECIPE.item_cost = { sand = 10}
RECIPE.lvl_reqs = { smithing = 10}
RECIPE.gives_items = { glass = 5 }
RECIPE.gives_xp = { smithing = 50 }
RECIPE.category = "construction"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

//--Alchemy--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/vial.png"
RECIPE.title = "Glass Vial"
RECIPE.id = "alchemy1"
RECIPE.description = "Creates a glass vial used in potion brewing"
RECIPE.item_cost = { glass = 2}
RECIPE.lvl_reqs = { smithing = 1}
RECIPE.gives_items = { vial = 1 }
RECIPE.gives_xp = { smithing = 10 }
RECIPE.category = "alchemy"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/flask.png"
RECIPE.title = "Glass Flask"
RECIPE.id = "alchemy2"
RECIPE.description = "Creates a glass flask used in potion brewing"
RECIPE.item_cost = { glass = 5, stone = 2}
RECIPE.lvl_reqs = { smithing = 12}
RECIPE.gives_items = { flask = 1 }
RECIPE.gives_xp = { smithing = 60 }
RECIPE.category = "alchemy"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/heavy_flask.png"
RECIPE.title = "Heavy Glass Flask"
RECIPE.id = "alchemy3"
RECIPE.description = "Creates a heavy glass flask used in potion brewing"
RECIPE.item_cost = { glass = 5, iron_ore = 2}
RECIPE.lvl_reqs = { smithing = 25}
RECIPE.gives_items = { heavy_flask = 1 }
RECIPE.gives_xp = { smithing = 120 }
RECIPE.category = "alchemy"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/imbued_flask.png"
RECIPE.title = "Imbued Glass Flask"
RECIPE.id = "alchemy4"
RECIPE.description = "Creates an imbued glass flask used in potion brewing"
RECIPE.item_cost = { glass = 5, silver_ore = 2}
RECIPE.lvl_reqs = { smithing = 36}
RECIPE.gives_items = { imbued_flask = 1 }
RECIPE.gives_xp = { smithing = 160 }
RECIPE.category = "alchemy"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

//--Steel--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/steel_x1.png"
RECIPE.title = "Steel"
RECIPE.id = "steel1"
RECIPE.description = "Smelts Iron and Coal into the tougher steel resource"
RECIPE.item_cost = { iron_ore = 1, coal = 2}
RECIPE.lvl_reqs = { smithing = 15}
RECIPE.gives_items = { steel = 1 }
RECIPE.gives_xp = { smithing = 20 }
RECIPE.category = "steel"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/steel_x5.png"
RECIPE.title = "Steel x5"
RECIPE.id = "steel2"
RECIPE.description = "Smelts Iron and Coal into the tougher steel resource"
RECIPE.item_cost = { iron_ore = 5, coal = 10}
RECIPE.lvl_reqs = { smithing = 15}
RECIPE.gives_items = { steel = 5 }
RECIPE.gives_xp = { smithing = 90 }
RECIPE.category = "steel"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/steel_x10.png"
RECIPE.title = "Steel x10"
RECIPE.id = "steel3"
RECIPE.description = "Smelts Iron and Coal into the tougher steel resource"
RECIPE.item_cost = { iron_ore = 10, coal = 20}
RECIPE.lvl_reqs = { smithing = 15}
RECIPE.gives_items = { steel = 10 }
RECIPE.gives_xp = { smithing = 180 }
RECIPE.category = "steel"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

//--Silver--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/silver_x1.png"
RECIPE.title = "Silver"
RECIPE.id = "silver1"
RECIPE.description = "Smelts Silver Ore and Coal into Silver"
RECIPE.item_cost = { silver_ore = 1, coal = 4}
RECIPE.lvl_reqs = { smithing = 25}
RECIPE.gives_items = { silver = 1 }
RECIPE.gives_xp = { smithing = 30 }
RECIPE.category = "silver"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/silver_x5.png"
RECIPE.title = "Silver x5"
RECIPE.id = "silver2"
RECIPE.description = "Smelts Silver Ore and Coal into Silver"
RECIPE.item_cost = { silver_ore = 5, coal = 20}
RECIPE.lvl_reqs = { smithing = 25}
RECIPE.gives_items = { silver = 5 }
RECIPE.gives_xp = { smithing = 140 }
RECIPE.category = "silver"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/silver_x10.png"
RECIPE.title = "Silver x10"
RECIPE.id = "silver3"
RECIPE.description = "Smelts Silver Ore and Coal into Silver"
RECIPE.item_cost = { silver_ore = 10, coal = 40}
RECIPE.lvl_reqs = { smithing = 25}
RECIPE.gives_items = { silver = 10 }
RECIPE.gives_xp = { smithing = 275 }
RECIPE.category = "silver"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

//--Trinium--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/trin_x1.png"
RECIPE.title = "Trinium"
RECIPE.id = "trinium1"
RECIPE.description = "Smelts Trinium Ore and Coal into Trinium"
RECIPE.item_cost = { trinium_ore = 1, coal = 6}
RECIPE.lvl_reqs = { smithing = 40}
RECIPE.gives_items = { trinium = 1 }
RECIPE.gives_xp = { smithing = 50 }
RECIPE.category = "trinium"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/trin_x5.png"
RECIPE.title = "Trinium x5"
RECIPE.id = "trinium2"
RECIPE.description = "Smelts Trinium Ore and Coal into Trinium"
RECIPE.item_cost = { trinium_ore = 5, coal = 30}
RECIPE.lvl_reqs = { smithing = 40}
RECIPE.gives_items = { trinium = 5 }
RECIPE.gives_xp = { smithing = 230 }
RECIPE.category = "trinium"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/trin_x10.png"
RECIPE.title = "Trinium x10"
RECIPE.id = "trinium3"
RECIPE.description = "Smelts Trinium Ore and Coal into Trinium"
RECIPE.item_cost = { trinium_ore = 10, coal = 60}
RECIPE.lvl_reqs = { smithing = 40}
RECIPE.gives_items = { trinium = 10 }
RECIPE.gives_xp = { smithing = 450 }
RECIPE.category = "trinium"
SGS_RegisterRecipe( "gms_furnace", RECIPE )


//--Naquadah--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/naq_x1.png"
RECIPE.title = "Naquadah"
RECIPE.id = "naquadah1"
RECIPE.description = "Smelts Naquadah Ore and Coal into Naquadah"
RECIPE.item_cost = { naquadah_ore = 1, coal = 8}
RECIPE.lvl_reqs = { smithing = 53}
RECIPE.gives_items = { naquadah = 1 }
RECIPE.gives_xp = { smithing = 110 }
RECIPE.category = "naquadah"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/naq_x5.png"
RECIPE.title = "Naquadah x5"
RECIPE.id = "naquadah2"
RECIPE.description = "Smelts Naquadah Ore and Coal into Naquadah"
RECIPE.item_cost = { naquadah_ore = 5, coal = 40}
RECIPE.lvl_reqs = { smithing = 53}
RECIPE.gives_items = { naquadah = 5 }
RECIPE.gives_xp = { smithing = 460 }
RECIPE.category = "naquadah"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/naq_x10.png"
RECIPE.title = "Naquadah x10"
RECIPE.id = "naquadah3"
RECIPE.description = "Smelts Naquadah Ore and Coal into Naquadah"
RECIPE.item_cost = { naquadah_ore = 10, coal = 80}
RECIPE.lvl_reqs = { smithing = 53}
RECIPE.gives_items = { naquadah = 10 }
RECIPE.gives_xp = { smithing = 850 }
RECIPE.category = "naquadah"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/reinnaq_x1.png"
RECIPE.title = "Reinforced Naquadah"
RECIPE.id = "naquadah4"
RECIPE.description = "Combines Naquadah and Trinium to make\nReinforced Naquadah"
RECIPE.item_cost = { naquadah = 1, trinium = 10}
RECIPE.lvl_reqs = { smithing = 55}
RECIPE.gives_items = { reinforced_naquadah = 1 }
RECIPE.gives_xp = { smithing = 1000 }
RECIPE.category = "naquadah"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

//--Mithril--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/mith_x1.png"
RECIPE.title = "Mithril"
RECIPE.id = "mithril1"
RECIPE.description = "Smelts Mithril Ore and Coal into Mithril"
RECIPE.item_cost = { mithril_ore = 1, coal = 10}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_items = { mithril = 1 }
RECIPE.gives_xp = { smithing = 160 }
RECIPE.category = "mithril"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/mith_x5.png"
RECIPE.title = "Mithril x5"
RECIPE.id = "mithril2"
RECIPE.description = "Smelts Mithril Ore and Coal into Mithril"
RECIPE.item_cost = { mithril_ore = 5, coal = 50}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_items = { mithril = 5 }
RECIPE.gives_xp = { smithing = 700 }
RECIPE.category = "mithril"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/mith_x10.png"
RECIPE.title = "Mithril x10"
RECIPE.id = "mithril3"
RECIPE.description = "Smelts Mithril Ore and Coal into Mithril"
RECIPE.item_cost = { mithril_ore = 10, coal = 100}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_items = { mithril = 10 }
RECIPE.gives_xp = { smithing = 1300 }
RECIPE.category = "mithril"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

//--Gold--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/gold_x1.png"
RECIPE.title = "Gold"
RECIPE.id = "gold1"
RECIPE.description = "Smelts Gold Ore and Coal into Gold"
RECIPE.item_cost = { gold_ore = 1, coal = 2}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_items = { gold = 1 }
RECIPE.gives_xp = { smithing = 160 }
RECIPE.category = "gold"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/gold_x5.png"
RECIPE.title = "Gold x5"
RECIPE.id = "gold2"
RECIPE.description = "Smelts Gold Ore and Coal into Gold"
RECIPE.item_cost = { gold_ore = 5, coal = 10}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_items = { gold = 5 }
RECIPE.gives_xp = { smithing = 700 }
RECIPE.category = "gold"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/gold_x10.png"
RECIPE.title = "Gold x10"
RECIPE.id = "gold3"
RECIPE.description = "Smelts Gold Ore and Coal into Gold"
RECIPE.item_cost = { gold_ore = 10, coal = 20}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_items = { gold = 10 }
RECIPE.gives_xp = { smithing = 1300 }
RECIPE.category = "gold"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

//--Platinum--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/silver_x1.png"
RECIPE.title = "Platinum"
RECIPE.id = "platinum1"
RECIPE.description = "Smelts Platinum Ore and Coal into Platinum"
RECIPE.item_cost = { platinum_ore = 1, coal = 12}
RECIPE.lvl_reqs = { smithing = 71}
RECIPE.gives_items = { platinum = 1 }
RECIPE.gives_xp = { smithing = 210 }
RECIPE.category = "platinum"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/silver_x5.png"
RECIPE.title = "Platinum x5"
RECIPE.id = "platinum2"
RECIPE.description = "Smelts Platinum Ore and Coal into Platinum"
RECIPE.item_cost = { platinum_ore = 5, coal = 60}
RECIPE.lvl_reqs = { smithing = 71}
RECIPE.gives_items = { platinum = 5 }
RECIPE.gives_xp = { smithing = 1000 }
RECIPE.category = "platinum"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/silver_x10.png"
RECIPE.title = "Platinum x10"
RECIPE.id = "platinum3"
RECIPE.description = "Smelts Platinum Ore and Coal into Platinum"
RECIPE.item_cost = { platinum_ore = 10, coal = 120}
RECIPE.lvl_reqs = { smithing = 71}
RECIPE.gives_items = { platinum = 10 }
RECIPE.gives_xp = { smithing = 1800 }
RECIPE.category = "platinum"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

//--Meteoric--//

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/meteoriciron.png"
RECIPE.title = "Meteoric Iron"
RECIPE.id = "meteoriciron1"
RECIPE.description = "Smelts Meteoric Iron Ore and Coal into Meteoric Iron"
RECIPE.item_cost = { meteoric_iron_ore = 1, coal = 30}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_items = { meteoric_iron = 1 }
RECIPE.gives_xp = { smithing = 450 }
RECIPE.category = "meteoric"
SGS_RegisterRecipe( "gms_furnace", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/furnace/new/refinedmeteoriciron.png"
RECIPE.title = "Refined Meteoric Iron"
RECIPE.id = "meteoriciron2"
RECIPE.description = "Refines Meteoric Iron and Enchanted Metal together."
RECIPE.item_cost = { meteoric_iron_ore = 4, enchanted_metal = 2}
RECIPE.lvl_reqs = { smithing = 75}
RECIPE.gives_items = { refined_meteoric_iron = 1 }
RECIPE.gives_xp = { smithing = 1200 }
RECIPE.category = "meteoric"
SGS_RegisterRecipe( "gms_furnace", RECIPE )