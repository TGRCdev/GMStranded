
SGS_BeginRecipeCommit()

---------------------
-------combat-------
---------------------

RECIPE = {}
RECIPE.title = "Wooden Club"
RECIPE.description = "Use with caution!\nRequired Combat Level: 1"
RECIPE.category = "combat"
RECIPE.item_cost = { wood = 15 }
RECIPE.lvl_reqs = { smithing = 1 }
RECIPE.gives_xp = { smithing = 12 }
RECIPE.gives_tools = { weapon_melee1 = 1 }
RECIPE.id = "weapon_melee1"
RECIPE.icon = "vgui/tools/wood_melee.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Iron Rod"
RECIPE.category = "combat"
RECIPE.description = "Use with caution!\nRequired Combat Level: 10"
RECIPE.item_cost = { iron = 10, wood = 10 }
RECIPE.lvl_reqs = { smithing = 10 }
RECIPE.gives_xp = { smithing = 25 }
RECIPE.gives_tools = { weapon_melee2 = 1 }
RECIPE.id = "weapon_melee2"
RECIPE.icon = "vgui/tools/iron_melee.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Steel Rod"
RECIPE.category = "combat"
RECIPE.description = "Use with caution!\nRequired Combat Level: 20"
RECIPE.item_cost = { steel = 10, oak_wood = 10}
RECIPE.lvl_reqs = { smithing = 25 }
RECIPE.gives_xp = { smithing = 40 }
RECIPE.gives_tools = { weapon_melee3 = 1 }
RECIPE.id = "weapon_melee3"
RECIPE.icon = "vgui/tools/steel_melee.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Silver Rod"
RECIPE.category = "combat"
RECIPE.description = "Use with caution!\nRequired Combat Level: 30"
RECIPE.item_cost = { silver = 10, oak_wood = 15}
RECIPE.lvl_reqs = { smithing = 35 }
RECIPE.gives_xp = { smithing = 60 }
RECIPE.gives_tools = { weapon_melee4 = 1 }
RECIPE.id = "weapon_melee4"
RECIPE.icon = "vgui/tools/silver_melee.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Trinium Rod"
RECIPE.category = "combat"
RECIPE.description = "Use with caution!\nRequired Combat Level: 40"
RECIPE.item_cost = { trinium = 10, maple_wood = 10}
RECIPE.lvl_reqs = { smithing = 45 }
RECIPE.gives_xp = { smithing = 90 }
RECIPE.gives_tools = { weapon_melee5 = 1 }
RECIPE.id = "weapon_melee5"
RECIPE.icon = "vgui/tools/trinium_melee.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Naquadah Rod"
RECIPE.category = "combat"
RECIPE.description = "Use with caution!\nRequired Combat Level: 50"
RECIPE.item_cost = { naquadah = 10, yew_wood = 10}
RECIPE.lvl_reqs = { smithing = 58 }
RECIPE.gives_xp = { smithing = 180 }
RECIPE.gives_tools = { weapon_melee6 = 1 }
RECIPE.id = "weapon_melee6"
RECIPE.icon = "vgui/tools/naquadah_melee.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Mithril Rod"
RECIPE.category = "combat"
RECIPE.description = "Use with caution!\nRequired Combat Level: 60"
RECIPE.item_cost = { mithril = 10, buckeye_wood = 10}
RECIPE.lvl_reqs = { smithing = 65 }
RECIPE.gives_xp = { smithing = 250 }
RECIPE.gives_tools = { weapon_melee7 = 1 }
RECIPE.id = "weapon_melee7"
RECIPE.icon = "vgui/tools/mithril_melee.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Platinum Rod"
RECIPE.category = "combat"
RECIPE.description = "Use with caution!\nRequired Combat Level: 70"
RECIPE.item_cost = { platinum = 10, palm_wood = 10}
RECIPE.lvl_reqs = { smithing = 71 }
RECIPE.gives_xp = { smithing = 400 }
RECIPE.gives_tools = { weapon_melee8 = 1 }
RECIPE.id = "weapon_melee8"
RECIPE.icon = "vgui/tools/platinum_melee.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

---------------------
-----woodcutting-----
---------------------

RECIPE = {}
RECIPE.title = "Stone Hatchet"
RECIPE.category = "woodcutting"
RECIPE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
RECIPE.item_cost = { stone = 5, wood = 6}
RECIPE.lvl_reqs = { smithing = 1}
RECIPE.gives_xp = { smithing = 12 }
RECIPE.gives_tools = { gms_hatchet1 = 1 }
RECIPE.id = "gms_hatchet1"
RECIPE.icon = "vgui/tools/stone_hatchet.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Iron Hatchet"
RECIPE.category = "woodcutting"
RECIPE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
RECIPE.item_cost = { iron = 5, wood = 8}
RECIPE.lvl_reqs = { smithing = 10}
RECIPE.gives_xp = { smithing = 25 }
RECIPE.gives_tools = { gms_hatchet2 = 1 }
RECIPE.id = "gms_hatchet2"
RECIPE.icon = "vgui/tools/iron_hatchet.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Steel Hatchet"
RECIPE.category = "woodcutting"
RECIPE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 15"
RECIPE.item_cost = { steel = 5, oak_wood = 10}
RECIPE.lvl_reqs = { smithing = 25}
RECIPE.gives_xp = { smithing = 40 }
RECIPE.gives_tools = { gms_hatchet3 = 1 }
RECIPE.id = "gms_hatchet3"
RECIPE.icon = "vgui/tools/steel_hatchet.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Silver Hatchet"
RECIPE.category = "woodcutting"
RECIPE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 25"
RECIPE.item_cost = { silver = 5, maple_wood = 12}
RECIPE.lvl_reqs = { smithing = 40}
RECIPE.gives_xp = { smithing = 60 }
RECIPE.gives_tools = { gms_hatchet4 = 1 }
RECIPE.id = "gms_hatchet4"
RECIPE.icon = "vgui/tools/silver_hatchet.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Trinium Hatchet"
RECIPE.category = "woodcutting"
RECIPE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 35"
RECIPE.item_cost = { trinium = 5, pine_wood = 14}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 90 }
RECIPE.gives_tools = { gms_hatchet5 = 1 }
RECIPE.id = "gms_hatchet5"
RECIPE.icon = "vgui/tools/trinium_hatchet.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Naquadah Hatchet"
RECIPE.category = "woodcutting"
RECIPE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 45"
RECIPE.item_cost = { naquadah = 5, yew_wood = 12}
RECIPE.lvl_reqs = { smithing = 53}
RECIPE.gives_xp = { smithing = 115 }
RECIPE.gives_tools = { gms_hatchet6 = 1 }
RECIPE.id = "gms_hatchet6"
RECIPE.icon = "vgui/tools/naquadah_hatchet.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Mithril Hatchet"
RECIPE.category = "woodcutting"
RECIPE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 55"
RECIPE.item_cost = { mithril = 5, buckeye_wood = 12}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_xp = { smithing = 230 }
RECIPE.gives_tools = { gms_hatchet7 = 1 }
RECIPE.id = "gms_hatchet7"
RECIPE.icon = "vgui/tools/mithril_hatchet.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Platinum Hatchet"
RECIPE.category = "woodcutting"
RECIPE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 65"
RECIPE.item_cost = { platinum = 5, palm_wood = 12}
RECIPE.lvl_reqs = { smithing = 71}
RECIPE.gives_xp = { smithing = 320 }
RECIPE.gives_tools = { gms_hatchet8 = 1 }
RECIPE.id = "gms_hatchet8"
RECIPE.icon = "vgui/tools/platinum_hatchet.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )



------------------
------mining------
------------------

RECIPE = {}
RECIPE.title = "Stone Pickaxe"
RECIPE.category = "mining"
RECIPE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
RECIPE.item_cost = { stone = 6, wood = 6}
RECIPE.lvl_reqs = { smithing = 1}
RECIPE.gives_xp = { smithing = 12 }
RECIPE.gives_tools = { gms_pickaxe1 = 1 }
RECIPE.id = "gms_pickaxe1"
RECIPE.icon = "vgui/tools/stone_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Iron Pickaxe"
RECIPE.category = "mining"
RECIPE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
RECIPE.item_cost = { iron = 6, oak_wood = 8}
RECIPE.lvl_reqs = { smithing = 15}
RECIPE.gives_xp = { smithing = 32 }
RECIPE.gives_tools = { gms_pickaxe2 = 1 }
RECIPE.id = "gms_pickaxe2"
RECIPE.icon = "vgui/tools/iron_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Steel Pickaxe"
RECIPE.category = "mining"
RECIPE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 15"
RECIPE.item_cost = { steel = 6, maple_wood = 10}
RECIPE.lvl_reqs = { smithing = 30}
RECIPE.gives_xp = { smithing = 46 }
RECIPE.gives_tools = { gms_pickaxe3 = 1 }
RECIPE.id = "gms_pickaxe3"
RECIPE.icon = "vgui/tools/steel_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Silver Pickaxe"
RECIPE.category = "mining"
RECIPE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 25"
RECIPE.item_cost = { silver = 6, pine_wood = 12}
RECIPE.lvl_reqs = { smithing = 45}
RECIPE.gives_xp = { smithing = 75 }
RECIPE.gives_tools = { gms_pickaxe4 = 1 }
RECIPE.id = "gms_pickaxe4"
RECIPE.icon = "vgui/tools/silver_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Trinium Pickaxe"
RECIPE.category = "mining"
RECIPE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 35"
RECIPE.item_cost = { trinium = 6, pine_wood = 14}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 90 }
RECIPE.gives_tools = { gms_pickaxe5 = 1 }
RECIPE.id = "gms_pickaxe5"
RECIPE.icon = "vgui/tools/trinium_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Naquadah Pickaxe"
RECIPE.category = "mining"
RECIPE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 45"
RECIPE.item_cost = { naquadah = 6, yew_wood = 10}
RECIPE.lvl_reqs = { smithing = 55}
RECIPE.gives_xp = { smithing = 150 }
RECIPE.gives_tools = { gms_pickaxe6 = 1 }
RECIPE.id = "gms_pickaxe6"
RECIPE.icon = "vgui/tools/naquadah_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Mithril Pickaxe"
RECIPE.category = "mining"
RECIPE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 55"
RECIPE.item_cost = { mithril = 6, buckeye_wood = 10}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_xp = { smithing = 230 }
RECIPE.gives_tools = { gms_pickaxe7 = 1 }
RECIPE.id = "gms_pickaxe7"
RECIPE.icon = "vgui/tools/mithril_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Platinum Pickaxe"
RECIPE.category = "mining"
RECIPE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 65"
RECIPE.item_cost = { platinum = 6, palm_wood = 10}
RECIPE.lvl_reqs = { smithing = 71}
RECIPE.gives_xp = { smithing = 320 }
RECIPE.gives_tools = { gms_pickaxe8 = 1 }
RECIPE.id = "gms_pickaxe8"
RECIPE.icon = "vgui/tools/platinum_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )




-----------------
-----fishing-----
-----------------

RECIPE = {}
RECIPE.title = "Wooden Fishing Rod"
RECIPE.category = "fishing"
RECIPE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 1"
RECIPE.item_cost = { wood = 12}
RECIPE.lvl_reqs = { smithing = 1}
RECIPE.gives_xp = { smithing = 12 }
RECIPE.gives_tools = { gms_fishingrod1 = 1 }
RECIPE.id = "gms_fishingrod1"
RECIPE.icon = "vgui/tools/wood_rod.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Iron Fishing Rod"
RECIPE.category = "fishing"
RECIPE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 1"
RECIPE.item_cost = { iron = 4, wood = 8}
RECIPE.lvl_reqs = { smithing = 10}
RECIPE.gives_xp = { smithing = 32 }
RECIPE.gives_tools = { gms_fishingrod2 = 1 }
RECIPE.id = "gms_fishingrod2"
RECIPE.icon = "vgui/tools/iron_rod.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Steel Fishing Rod"
RECIPE.category = "fishing"
RECIPE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 15"
RECIPE.item_cost = { steel = 4, oak_wood = 10}
RECIPE.lvl_reqs = { smithing = 25}
RECIPE.gives_xp = { smithing = 46 }
RECIPE.gives_tools = { gms_fishingrod3 = 1 }
RECIPE.id = "gms_fishingrod3"
RECIPE.icon = "vgui/tools/steel_rod.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Silver Fishing Rod"
RECIPE.category = "fishing"
RECIPE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 25"
RECIPE.item_cost = { silver = 4, maple_wood = 12}
RECIPE.lvl_reqs = { smithing = 41}
RECIPE.gives_xp = { smithing = 75 }
RECIPE.gives_tools = { gms_fishingrod4 = 1 }
RECIPE.id = "gms_fishingrod4"
RECIPE.icon = "vgui/tools/silver_rod.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Trinium Fishing Rod"
RECIPE.category = "fishing"
RECIPE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 35"
RECIPE.item_cost = { trinium = 4, pine_wood = 14}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 90 }
RECIPE.gives_tools = { gms_fishingrod5 = 1 }
RECIPE.id = "gms_fishingrod5"
RECIPE.icon = "vgui/tools/trinium_rod.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Naquadah Fishing Rod"
RECIPE.category = "fishing"
RECIPE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 45"
RECIPE.item_cost = { naquadah = 4, yew_wood = 10}
RECIPE.lvl_reqs = { smithing = 58}
RECIPE.gives_xp = { smithing = 180 }
RECIPE.gives_tools = { gms_fishingrod6 = 1 }
RECIPE.id = "gms_fishingrod6"
RECIPE.icon = "vgui/tools/naquadah_rod.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Mithril Fishing Rod"
RECIPE.category = "fishing"
RECIPE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 55"
RECIPE.item_cost = { mithril = 4, buckeye_wood = 10}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_xp = { smithing = 230 }
RECIPE.gives_tools = { gms_fishingrod7 = 1 }
RECIPE.id = "gms_fishingrod7"
RECIPE.icon = "vgui/tools/mithril_rod.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Platinum Fishing Rod"
RECIPE.category = "fishing"
RECIPE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 65"
RECIPE.item_cost = { platinum = 4, palm_wood = 10}
RECIPE.lvl_reqs = { smithing = 71}
RECIPE.gives_xp = { smithing = 320 }
RECIPE.gives_tools = { gms_fishingrod8 = 1 }
RECIPE.id = "gms_fishingrod8"
RECIPE.icon = "vgui/tools/platinum_rod.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Advanced Fishing Rod"
RECIPE.category = "fishing"
RECIPE.description = "For the more advanced fishers!\nPrimary: Fish\nRequired Fishing Lvl: 50"
RECIPE.item_cost = { naquadah = 6, pine_wood = 10}
RECIPE.lvl_reqs = { smithing = 54}
RECIPE.gives_xp = { smithing = 140 }
RECIPE.gives_tools = { gms_afishingrod = 1 }
RECIPE.id = "gms_afishingrod"
RECIPE.icon = "vgui/tools/adv_rod.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )



-------------------
------farming------
-------------------

RECIPE = {}
RECIPE.title = "Stone Hoe"
RECIPE.category = "farming"
RECIPE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 1"
RECIPE.item_cost = { stone = 5, wood = 6}
RECIPE.lvl_reqs = { smithing = 1}
RECIPE.gives_xp = { smithing = 12 }
RECIPE.gives_tools = { gms_hoe1 = 1 }
RECIPE.id = "gms_hoe1"
RECIPE.icon = "vgui/tools/stone_hoe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Iron Hoe"
RECIPE.category = "farming"
RECIPE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 1"
RECIPE.item_cost = { iron = 5, oak_wood = 8}
RECIPE.lvl_reqs = { smithing = 15}
RECIPE.gives_xp = { smithing = 32 }
RECIPE.gives_tools = { gms_hoe2 = 1 }
RECIPE.id = "gms_hoe2"
RECIPE.icon = "vgui/tools/iron_hoe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Steel Hoe"
RECIPE.category = "farming"
RECIPE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 15"
RECIPE.item_cost = { steel = 5, oak_wood = 10}
RECIPE.lvl_reqs = { smithing = 28}
RECIPE.gives_xp = { smithing = 55 }
RECIPE.gives_tools = { gms_hoe3 = 1 }
RECIPE.id = "gms_hoe3"
RECIPE.icon = "vgui/tools/steel_hoe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Silver Hoe"
RECIPE.category = "farming"
RECIPE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 25"
RECIPE.item_cost = { silver = 5, maple_wood = 12}
RECIPE.lvl_reqs = { smithing = 38}
RECIPE.gives_xp = { smithing = 60 }
RECIPE.gives_tools = { gms_hoe4 = 1 }
RECIPE.id = "gms_hoe4"
RECIPE.icon = "vgui/tools/silver_hoe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Trinium Hoe"
RECIPE.category = "farming"
RECIPE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 35"
RECIPE.item_cost = { trinium = 5, pine_wood = 14}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 90 }
RECIPE.gives_tools = { gms_hoe5 = 1 }
RECIPE.id = "gms_hoe5"
RECIPE.icon = "vgui/tools/trinium_hoe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Naquadah Hoe"
RECIPE.category = "farming"
RECIPE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 45"
RECIPE.item_cost = { naquadah = 5, yew_wood = 10}
RECIPE.lvl_reqs = { smithing = 56}
RECIPE.gives_xp = { smithing = 150 }
RECIPE.gives_tools = { gms_hoe6 = 1 }
RECIPE.id = "gms_hoe6"
RECIPE.icon = "vgui/tools/naquadah_hoe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Mithril Hoe"
RECIPE.category = "farming"
RECIPE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 55"
RECIPE.item_cost = { mithril = 5, buckeye_wood = 10}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_xp = { smithing = 230 }
RECIPE.gives_tools = { gms_hoe7 = 1 }
RECIPE.id = "gms_hoe7"
RECIPE.icon = "vgui/tools/mithril_hoe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Platinum Hoe"
RECIPE.category = "farming"
RECIPE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 65"
RECIPE.item_cost = { platinum = 5, palm_wood = 10}
RECIPE.lvl_reqs = { smithing = 71}
RECIPE.gives_xp = { smithing = 320 }
RECIPE.gives_tools = { gms_hoe8 = 1 }
RECIPE.id = "gms_hoe8"
RECIPE.icon = "vgui/tools/platinum_hoe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )


---------------------
-------sifting-------
---------------------

RECIPE = {}
RECIPE.title = "Iron Sifter"
RECIPE.category = "sifting"
RECIPE.description = "Sift the ground to collect sand!\nPrimary: Sift"
RECIPE.item_cost = { iron = 5, stone = 10}
RECIPE.lvl_reqs = { smithing = 5}
RECIPE.gives_xp = { smithing = 25 }
RECIPE.gives_tools = { gms_sifter = 1 }
RECIPE.id = "gms_sifter"
RECIPE.icon = "vgui/tools/iron_sifter.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Steel Sifter"
RECIPE.category = "sifting"
RECIPE.description = "Sift the ground to collect sand!\nPrimary: Sift"
RECIPE.item_cost = { steel = 5, stone = 20}
RECIPE.lvl_reqs = { smithing = 30}
RECIPE.gives_xp = { smithing = 65 }
RECIPE.gives_tools = { gms_sifter2 = 1 }
RECIPE.id = "gms_sifter2"
RECIPE.icon = "vgui/tools/steel_sifter.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Trinium Sifter"
RECIPE.category = "sifting"
RECIPE.description = "Sift the ground to collect sand!\nPrimary: Sift"
RECIPE.item_cost = { trinium = 5, stone = 30}
RECIPE.lvl_reqs = { smithing = 53}
RECIPE.gives_xp = { smithing = 140 }
RECIPE.gives_tools = { gms_sifter3 = 1 }
RECIPE.id = "gms_sifter3"
RECIPE.icon = "vgui/tools/trinium_sifter.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Mithril Sifter"
RECIPE.category = "sifting"
RECIPE.description = "Sift the ground to collect sand!\nPrimary: Sift"
RECIPE.item_cost = { mithril = 5, stone = 30}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_xp = { smithing = 230 }
RECIPE.gives_tools = { gms_sifter4 = 1 }
RECIPE.id = "gms_sifter4"
RECIPE.icon = "vgui/tools/mithril_sifter.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

--------------------
--------misc--------
--------------------

RECIPE = {}
RECIPE.title = "Grinding Stone"
RECIPE.category = "misc"
RECIPE.description = "Used to grind ores into dust!\nPrimary: Open Grinding Menu"
RECIPE.item_cost = { stone = 20 }
RECIPE.lvl_reqs = { smithing = 5}
RECIPE.gives_xp = { smithing = 80 }
RECIPE.gives_tools = { gms_grindingstone = 1 }
RECIPE.id = "gms_grindingstone"
RECIPE.icon = "vgui/tools/grindingstone.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Alchemist's Stone"
RECIPE.category = "misc"
RECIPE.description = "Used for transmutations!\nPrimary: Open Transmutation Menu"
RECIPE.item_cost = { emerald = 1, sapphire = 1, burned_fish = 10}
RECIPE.lvl_reqs = { smithing = 5}
RECIPE.gives_xp = { smithing = 100 }
RECIPE.gives_tools = { gms_alchemystone = 1 }
RECIPE.id = "gms_alchemystone"
RECIPE.icon = "vgui/tools/alchstone.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Frying Pan"
RECIPE.category = "misc"
RECIPE.description = "Equip while cooking for better results!"
RECIPE.item_cost = { iron = 10, oak_wood = 10}
RECIPE.lvl_reqs = { smithing = 12}
RECIPE.gives_xp = { smithing = 140 }
RECIPE.gives_tools = { gms_fryingpan = 1 }
RECIPE.id = "gms_fryingpan"
RECIPE.icon = "vgui/tools/fryingpan.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Handheld Torch"
RECIPE.category = "misc"
RECIPE.description = "Light!\nRight click to place torch."
RECIPE.item_cost = { wood = 20 }
RECIPE.lvl_reqs = { smithing = 1}
RECIPE.gives_xp = { smithing = 20 }
RECIPE.gives_tools = { gms_handtorch = 1 }
RECIPE.id = "gms_handtorch"
RECIPE.icon = "vgui/tools/torch.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Construction Hammer"
RECIPE.category = "misc"
RECIPE.description = "Equip while building for better results!\nLeft Click: Deconstructs a prop, returning a portion of the materials used to make it.\nRight Click: Repairs the damage to a prop or structure."
RECIPE.item_cost = { iron = 12, oak_wood = 8}
RECIPE.lvl_reqs = { smithing = 8}
RECIPE.gives_xp = { smithing = 120 }
RECIPE.gives_tools = { gms_hammer = 1 }
RECIPE.id = "gms_hammer"
RECIPE.icon = "vgui/tools/hammer.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )


-------------------------
--------extractor--------
-------------------------

RECIPE = {}
RECIPE.title = "Iron Seed Extractor"
RECIPE.category = "extractor"
RECIPE.description = "Remove the seeds from a fruit\nThis process destroys the fruit!"
RECIPE.item_cost = { iron = 8, oak_wood = 6}
RECIPE.lvl_reqs = { smithing = 16}
RECIPE.gives_xp = { smithing = 30 }
RECIPE.gives_tools = { gms_seedextractor = 1 }
RECIPE.id = "gms_seedextractor"
RECIPE.icon = "vgui/tools/iron_seedextractor.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Silver Seed Extractor"
RECIPE.category = "extractor"
RECIPE.description = "Remove the seeds from a fruit\nThis process destroys the fruit!"
RECIPE.item_cost = { silver = 8, maple_wood = 6}
RECIPE.lvl_reqs = { smithing = 41}
RECIPE.gives_xp = { smithing = 90 }
RECIPE.gives_tools = { gms_seedextractor2 = 1 }
RECIPE.id = "gms_seedextractor2"
RECIPE.icon = "vgui/tools/silver_seedextractor.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Trinium Seed Extractor"
RECIPE.category = "extractor"
RECIPE.description = "Remove the seeds from a fruit\nThis process destroys the fruit!"
RECIPE.item_cost = { trinium = 8, pine_wood = 6}
RECIPE.lvl_reqs = { smithing = 52}
RECIPE.gives_xp = { smithing = 160 }
RECIPE.gives_tools = { gms_seedextractor3 = 1 }
RECIPE.id = "gms_seedextractor3"
RECIPE.icon = "vgui/tools/trinium_seedextractor.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Mithril Seed Extractor"
RECIPE.category = "extractor"
RECIPE.description = "Remove the seeds from a fruit\nThis process destroys the fruit!"
RECIPE.item_cost = { mithril = 8, buckeye_wood = 6}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_xp = { smithing = 230 }
RECIPE.gives_tools = { gms_seedextractor4 = 1 }
RECIPE.id = "gms_seedextractor4"
RECIPE.icon = "vgui/tools/mithril_seedextractor.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

-------------------
-----enchanted-----
-------------------

RECIPE = {}
RECIPE.title = "Enchanted Hatchet"
RECIPE.category = "enchanted"
RECIPE.description = "Very powerful tree cutting tool!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
RECIPE.item_cost = { enchanted_wood = 12, enchanted_axehead = 1}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 350 }
RECIPE.gives_tools = { gms_ehatchet = 1 }
RECIPE.id = "gms_ehatchet"
RECIPE.icon = "vgui/tools/enchanted_hatchet.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Enchanted Pickaxe"
RECIPE.category = "enchanted"
RECIPE.description = "Very powerful mining tool!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
RECIPE.item_cost = { enchanted_wood = 12, enchanted_pickhead = 1}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 350 }
RECIPE.gives_tools = { gms_epickaxe = 1 }
RECIPE.id = "gms_epickaxe"
RECIPE.icon = "vgui/tools/enchanted_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Enchanted Fishing Rod"
RECIPE.category = "enchanted"
RECIPE.description = "Very powerful fishing rod!\nPrimary: Cast Line\nRequired Fishing Lvl: 1"
RECIPE.item_cost = { enchanted_wood = 12, enchanted_reel = 1}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 350 }
RECIPE.gives_tools = { gms_efishingrod = 1 }
RECIPE.id = "gms_efishingrod"
RECIPE.icon = "vgui/tools/enchanted_rod.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Enchanted Hoe"
RECIPE.category = "enchanted"
RECIPE.description = "Very powerful farming tool!\nPrimary: Forage/Harvest\nRequired Farming Lvl: 1"
RECIPE.item_cost = { enchanted_wood = 12, enchanted_hoe_blade = 1}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 350 }
RECIPE.gives_tools = { gms_ehoe = 1 }
RECIPE.id = "gms_ehoe"
RECIPE.icon = "vgui/tools/enchanted_hoe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

--------------
-----boss-----
--------------

RECIPE = {}
RECIPE.title = "Boss Hatchet"
RECIPE.category = "boss"
RECIPE.description = "Very powerful tree cutting tool!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
RECIPE.item_cost = { boss_hatchet_head = 1, yew_wood = 10}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 1200 }
RECIPE.gives_tools = { gms_bosshatchet = 1 }
RECIPE.id = "gms_bosshatchet"
RECIPE.icon = "vgui/tools/boss_hatchet.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Boss Pickaxe"
RECIPE.category = "boss"
RECIPE.description = "Very powerful mining tool!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
RECIPE.item_cost = { boss_pick_head = 1, yew_wood = 10}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 1200 }
RECIPE.gives_tools = { gms_bosspickaxe = 1 }
RECIPE.id = "gms_bosspickaxe"
RECIPE.icon = "vgui/tools/boss_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Boss Rod"
RECIPE.category = "boss"
RECIPE.description = "Very powerful combat weapon!\nPrimary: Attack\nRequired Combat Lvl: 35"
RECIPE.item_cost = { boss_rod_core = 1, yew_wood = 10}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 1200 }
RECIPE.gives_tools = { weapon_bossmelee = 1 }
RECIPE.id = "weapon_bossmelee"
RECIPE.icon = "vgui/tools/boss_melee.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

--------------
-----Void-----
--------------

RECIPE = {}
RECIPE.title = "Void Hatchet"
RECIPE.category = "void"
RECIPE.description = "Very powerful tree cutting tool!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
RECIPE.item_cost = { void_hatchet_head = 1, buckeye_wood = 50}
RECIPE.lvl_reqs = { smithing = 60}
RECIPE.gives_xp = { smithing = 2400 }
RECIPE.gives_tools = { gms_voidhatchet = 1 }
RECIPE.id = "gms_voidhatchet"
RECIPE.icon = "vgui/tools/void_hatchet.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Void Pickaxe"
RECIPE.category = "void"
RECIPE.description = "Very powerful mining tool!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
RECIPE.item_cost = { void_pickaxe_head = 1, buckeye_wood = 50}
RECIPE.lvl_reqs = { smithing = 60}
RECIPE.gives_xp = { smithing = 2400 }
RECIPE.gives_tools = { gms_voidpickaxe = 1 }
RECIPE.id = "gms_voidpickaxe"
RECIPE.icon = "vgui/tools/void_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Void Fishing Rod"
RECIPE.category = "void"
RECIPE.description = "Very powerful fishing tool!\nPrimary: Fish\nRequired Fishing Lvl: 1"
RECIPE.item_cost = { void_fishing_reel = 1, buckeye_wood = 50}
RECIPE.lvl_reqs = { smithing = 60}
RECIPE.gives_xp = { smithing = 2400 }
RECIPE.gives_tools = { gms_voidfishingrod = 1 }
RECIPE.id = "gms_voidfishingrod"
RECIPE.icon = "vgui/tools/void_rod.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Void Hoe"
RECIPE.category = "void"
RECIPE.description = "Very powerful farming tool!\nPrimary: Forage/Harvest\nRequired Farming Lvl: 1"
RECIPE.item_cost = { void_hoe_blade = 1, buckeye_wood = 50}
RECIPE.lvl_reqs = { smithing = 50}
RECIPE.gives_xp = { smithing = 2400 }
RECIPE.gives_tools = { gms_voidhoe = 1 }
RECIPE.id = "gms_voidhoe"
RECIPE.icon = "vgui/tools/void_hoe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

------------------
-----Meteoric-----
------------------

RECIPE = {}
RECIPE.title = "Meteoric Pickaxe"
RECIPE.category = "meteoric"
RECIPE.description = "Very powerful mining tool!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
RECIPE.item_cost = { meteoric_iron = 5, palm_wood = 50}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_xp = { smithing = 9000 }
RECIPE.gives_tools = { gms_mpickaxe = 1 }
RECIPE.id = "gms_mpickaxe"
RECIPE.icon = "vgui/tools/meteoric_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

RECIPE = {}
RECIPE.title = "Refined Meteoric Pick"
RECIPE.category = "meteoric"
RECIPE.description = "Very powerful mining tool!\nPrimary: Mine Ore\nRequired Mining Lvl: 1\nUnbreakable!"
RECIPE.item_cost = { refined_meteoric_iron = 6, enchanted_wood = 12}
RECIPE.lvl_reqs = { smithing = 65}
RECIPE.gives_xp = { smithing = 9000 }
RECIPE.gives_tools = { gms_rmpickaxe = 1 }
RECIPE.id = "gms_rmpickaxe"
RECIPE.icon = "vgui/tools/meteoric_pickaxe.png"
RECIPE.smithcheck = true
SGS_RegisterRecipe( "gms_workbench", RECIPE )

SGS_EndRecipeCommit()