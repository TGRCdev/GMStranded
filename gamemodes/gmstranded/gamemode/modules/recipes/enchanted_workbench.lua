SGS_BeginRecipeCommit()

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
SGS_RegisterRecipe( "gms_workbench2", RECIPE )

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
SGS_RegisterRecipe( "gms_workbench2", RECIPE )

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
SGS_RegisterRecipe( "gms_workbench2", RECIPE )

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
SGS_RegisterRecipe( "gms_workbench2", RECIPE )

SGS_EndRecipeCommit()