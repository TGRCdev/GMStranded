//-=Healing Potions--//

RECIPE = {}
RECIPE.icon = "vgui/potions/new/heal_minor.png"
RECIPE.title = "Minor Healing Potion"
RECIPE.id = "healing1"
RECIPE.description = "Heals 40hp"
RECIPE.item_cost = { vial = 1, liferoot = 3}
RECIPE.lvl_reqs = { alchemy = 1}
RECIPE.gives_items = { minor_healing_potion = 1}
RECIPE.gives_xp = { alchemy = 10 }
RECIPE.category = "healing"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/heal.png"
RECIPE.title = "Healing Potion"
RECIPE.id = "healing2"
RECIPE.description = "Heals 80hp"
RECIPE.item_cost = { vial = 1, liferoot = 5}
RECIPE.lvl_reqs = { alchemy = 12}
RECIPE.gives_items = { healing_potion = 1}
RECIPE.gives_xp = { alchemy = 60 }
RECIPE.category = "healing"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/heal_major.png"
RECIPE.title = "Major Healing Potion"
RECIPE.id = "healing3"
RECIPE.description = "Heals 120hp"
RECIPE.item_cost = { flask = 1, liferoot = 7}
RECIPE.lvl_reqs = { alchemy = 24}
RECIPE.gives_items = { major_healing_potion = 1}
RECIPE.gives_xp = { alchemy = 120 }
RECIPE.category = "healing"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/heal_superior.png"
RECIPE.title = "Super Healing Potion"
RECIPE.id = "healing4"
RECIPE.description = "Heals 180hp"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 8}
RECIPE.lvl_reqs = { alchemy = 32}
RECIPE.gives_items = { super_healing_potion = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "healing"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

//-=Curing Potions--//

RECIPE = {}
RECIPE.icon = "vgui/potions/new/thecure.png"
RECIPE.title = "The Cure"
RECIPE.id = "curing1"
RECIPE.description = "Cures Food Bourne Illness"
RECIPE.item_cost = { vial = 1, liferoot = 3, pypa_seed = 5}
RECIPE.lvl_reqs = { alchemy = 1}
RECIPE.gives_items = { the_cure = 1}
RECIPE.gives_xp = { alchemy = 15 }
RECIPE.category = "curing"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

//-=EXP Elixirs--//

RECIPE = {}
RECIPE.icon = "vgui/potions/new/farming.png"
RECIPE.title = "Minor Farming Elixir"
RECIPE.id = "minor_farming_elixir"
RECIPE.description = "Boost Farming Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 5, guacca_seed = 10}
RECIPE.lvl_reqs = { alchemy = 30}
RECIPE.gives_items = { minor_farming_elixir = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/farming_major.png"
RECIPE.title = "Major Farming Elixir"
RECIPE.id = "major_farming_elixir"
RECIPE.description = "Boost Farming Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 8, liechi_seed = 10}
RECIPE.lvl_reqs = { alchemy = 40}
RECIPE.gives_items = { farming_elixir = 1}
RECIPE.gives_xp = { alchemy = 300 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/woodcutting.png"
RECIPE.title = "Minor Woodcutting Elixir"
RECIPE.id = "minor_woodcutting_elixir"
RECIPE.description = "Boost Woodcutting Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 5, tree_seed = 2}
RECIPE.lvl_reqs = { alchemy = 30}
RECIPE.gives_items = { minor_woodcutting_elixir = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/woodcutting_major.png"
RECIPE.title = "Major Woodcutting Elixir"
RECIPE.id = "major_woodcutting_elixir"
RECIPE.description = "Boost Woodcutting Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 8, maple_seed = 2}
RECIPE.lvl_reqs = { alchemy = 40}
RECIPE.gives_items = { woodcutting_elixir = 1}
RECIPE.gives_xp = { alchemy = 300 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/fishing.png"
RECIPE.title = "Minor Fishing Elixir"
RECIPE.id = "minor_fishing_elixir"
RECIPE.description = "Boost Fishing Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 5, salmon = 5}
RECIPE.lvl_reqs = { alchemy = 30}
RECIPE.gives_items = { minor_fishing_elixir = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/fishing_major.png"
RECIPE.title = "Major Fishing Elixir"
RECIPE.id = "major_fishing_elixir"
RECIPE.description = "Boost Fishing Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 8, bass = 5}
RECIPE.lvl_reqs = { alchemy = 40}
RECIPE.gives_items = { fishing_elixir = 1}
RECIPE.gives_xp = { alchemy = 300 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/mining.png"
RECIPE.title = "Minor Mining Elixir"
RECIPE.id = "minor_mining_elixir"
RECIPE.description = "Boost Mining Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 5, iron_ore = 5}
RECIPE.lvl_reqs = { alchemy = 30}
RECIPE.gives_items = { minor_mining_elixir = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/mining_major.png"
RECIPE.title = "Major Mining Elixir"
RECIPE.id = "major_mining_elixir"
RECIPE.description = "Boost Mining Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 8, silver_ore = 5}
RECIPE.lvl_reqs = { alchemy = 40}
RECIPE.gives_items = { mining_elixir = 1}
RECIPE.gives_xp = { alchemy = 300 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/cooking.png"
RECIPE.title = "Minor Cooking Elixir"
RECIPE.id = "minor_cooking_elixir"
RECIPE.description = "Boost Cooking Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 5, guacca_pie = 5}
RECIPE.lvl_reqs = { alchemy = 30}
RECIPE.gives_items = { minor_cooking_elixir = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/cooking_major.png"
RECIPE.title = "Major Cooking Elixir"
RECIPE.id = "major_cooking_elixir"
RECIPE.description = "Boost Cooking Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 8, lum_pie = 3}
RECIPE.lvl_reqs = { alchemy = 40}
RECIPE.gives_items = { cooking_elixir = 1}
RECIPE.gives_xp = { alchemy = 300 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/smithing.png"
RECIPE.title = "Minor Smithing Elixir"
RECIPE.id = "minor_smithing_elixir"
RECIPE.description = "Boost Smithing Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 5, steel = 5}
RECIPE.lvl_reqs = { alchemy = 30}
RECIPE.gives_items = { minor_smithing_elixir = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/smithing_major.png"
RECIPE.title = "Major Smithing Elixir"
RECIPE.id = "major_smithing_elixir"
RECIPE.description = "Boost Smithing Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 8, silver = 5}
RECIPE.lvl_reqs = { alchemy = 40}
RECIPE.gives_items = { smithing_elixir = 1}
RECIPE.gives_xp = { alchemy = 300 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )


RECIPE = {}
RECIPE.icon = "vgui/potions/new/construction.png"
RECIPE.title = "Minor Construction Elixir"
RECIPE.id = "minor_construction_elixir"
RECIPE.description = "Boost Construction Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 5, oak_wood = 5}
RECIPE.lvl_reqs = { alchemy = 30}
RECIPE.gives_items = { minor_construction_elixir = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/construction_major.png"
RECIPE.title = "Major Construction Elixir"
RECIPE.id = "major_construction_elixir"
RECIPE.description = "Boost Construction Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 8, pine_wood = 5}
RECIPE.lvl_reqs = { alchemy = 40}
RECIPE.gives_items = { construction_elixir = 1}
RECIPE.gives_xp = { alchemy = 300 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )


RECIPE = {}
RECIPE.icon = "vgui/potions/new/alchemy.png"
RECIPE.title = "Minor Alchemy Elixir"
RECIPE.id = "minor_alchemy_elixir"
RECIPE.description = "Boost Alchemy Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 5, oak_wood = 5}
RECIPE.lvl_reqs = { alchemy = 30}
RECIPE.gives_items = { minor_alchemy_elixir = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/alchemy_major.png"
RECIPE.title = "Major Alchemy Elixir"
RECIPE.id = "major_alchemy_elixir"
RECIPE.description = "Boost Alchemy Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 8, pine_wood = 5}
RECIPE.lvl_reqs = { alchemy = 40}
RECIPE.gives_items = { alchemy_elixir = 1}
RECIPE.gives_xp = { alchemy = 300 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/combat.png"
RECIPE.title = "Minor Combat Elixir"
RECIPE.id = "minor_combat_elixir"
RECIPE.description = "Boost Combat Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 5, antlion_meat = 5}
RECIPE.lvl_reqs = { alchemy = 30}
RECIPE.gives_items = { minor_combat_elixir = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/combat_major.png"
RECIPE.title = "Major Combat Elixir"
RECIPE.id = "major_combat_elixir"
RECIPE.description = "Boost Combat Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 8, antlion_meat = 10}
RECIPE.lvl_reqs = { alchemy = 40}
RECIPE.gives_items = { combat_elixir = 1}
RECIPE.gives_xp = { alchemy = 300 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/arcane.png"
RECIPE.title = "Minor Arcane Elixir"
RECIPE.id = "minor_arcane_elixir"
RECIPE.description = "Boost Arcane Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 5, inert_stone = 5}
RECIPE.lvl_reqs = { alchemy = 30}
RECIPE.gives_items = { minor_arcane_elixir = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/arcane_major.png"
RECIPE.title = "Major Arcane Elixir"
RECIPE.id = "major_arcane_elixir"
RECIPE.description = "Boost Arcane Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 8, inert_stone = 10}
RECIPE.lvl_reqs = { alchemy = 40}
RECIPE.gives_items = { arcane_elixir = 1}
RECIPE.gives_xp = { alchemy = 300 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/misc_diarrhea_brown.png"
RECIPE.title = "Minor Leveling Elixir"
RECIPE.id = "minor_leveling_elixir"
RECIPE.description = "Boost All Experience by 15%\nEffect Lasts: 10 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 15, sapphire = 1}
RECIPE.lvl_reqs = { alchemy = 30}
RECIPE.gives_items = { minor_exp_elixir = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/misc_diarrhea_brown_major.png"
RECIPE.title = "Major Leveling Elixir"
RECIPE.id = "major_leveling_elixir"
RECIPE.description = "Boost All Experience by 30%\nEffect Lasts: 10 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 30, ruby = 1}
RECIPE.lvl_reqs = { alchemy = 40}
RECIPE.gives_items = { exp_elixir = 1}
RECIPE.gives_xp = { alchemy = 300 }
RECIPE.category = "elixir"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )


//-=Strong Elixirs--//

RECIPE = {}
RECIPE.icon = "vgui/potions/new/farming_major.png"
RECIPE.title = "Strong Farming Elixir"
RECIPE.id = "strong_farming_elixir"
RECIPE.description = "Boost Farming Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 16, liechi_seed = 20}
RECIPE.lvl_reqs = { alchemy = 60}
RECIPE.gives_items = { strong_farming_elixir = 1}
RECIPE.gives_xp = { alchemy = 600 }
RECIPE.category = "strong elixirs"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/woodcutting_major.png"
RECIPE.title = "Strong Woodcutting Elixir"
RECIPE.id = "strong_woodcutting_elixir"
RECIPE.description = "Boost Woodcutting Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 16, maple_seed = 5}
RECIPE.lvl_reqs = { alchemy = 60}
RECIPE.gives_items = { strong_woodcutting_elixir = 1}
RECIPE.gives_xp = { alchemy = 600 }
RECIPE.category = "strong elixirs"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/fishing_major.png"
RECIPE.title = "Strong Fishing Elixir"
RECIPE.id = "strong_fishing_elixir"
RECIPE.description = "Boost Fishing Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 16, swordfish = 5}
RECIPE.lvl_reqs = { alchemy = 60}
RECIPE.gives_items = { strong_fishing_elixir = 1}
RECIPE.gives_xp = { alchemy = 600 }
RECIPE.category = "strong elixirs"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/mining_major.png"
RECIPE.title = "Strong Mining Elixir"
RECIPE.id = "strong_mining_elixir"
RECIPE.description = "Boost Mining Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 16, trinium_ore = 10}
RECIPE.lvl_reqs = { alchemy = 60}
RECIPE.gives_items = { strong_mining_elixir = 1}
RECIPE.gives_xp = { alchemy = 600 }
RECIPE.category = "strong elixirs"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/cooking_major.png"
RECIPE.title = "Strong Cooking Elixir"
RECIPE.id = "strong_cooking_elixir"
RECIPE.description = "Boost Cooking Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 16, lum_pie = 6}
RECIPE.lvl_reqs = { alchemy = 60}
RECIPE.gives_items = { strong_cooking_elixir = 1}
RECIPE.gives_xp = { alchemy = 600 }
RECIPE.category = "strong elixirs"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/smithing_major.png"
RECIPE.title = "Strong Smithing Elixir"
RECIPE.id = "strong_smithing_elixir"
RECIPE.description = "Boost Smithing Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 16, trinium = 10}
RECIPE.lvl_reqs = { alchemy = 60}
RECIPE.gives_items = { strong_smithing_elixir = 1}
RECIPE.gives_xp = { alchemy = 600 }
RECIPE.category = "strong elixirs"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/construction_major.png"
RECIPE.title = "Strong Construction Elixir"
RECIPE.id = "strong_construction_elixir"
RECIPE.description = "Boost Construction Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 16, yew_wood = 10}
RECIPE.lvl_reqs = { alchemy = 60}
RECIPE.gives_items = { strong_construction_elixir = 1}
RECIPE.gives_xp = { alchemy = 600 }
RECIPE.category = "strong elixirs"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/alchemy_major.png"
RECIPE.title = "Strong Alchemy Elixir"
RECIPE.id = "strong_alchemy_elixir"
RECIPE.description = "Boost Alchemy Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 16, burned_fish = 10}
RECIPE.lvl_reqs = { alchemy = 60}
RECIPE.gives_items = { strong_alchemy_elixir = 1}
RECIPE.gives_xp = { alchemy = 600 }
RECIPE.category = "strong elixirs"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/combat_major.png"
RECIPE.title = "Strong Combat Elixir"
RECIPE.id = "strong_combat_elixir"
RECIPE.description = "Boost Combat Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 16, antlion_head = 10}
RECIPE.lvl_reqs = { alchemy = 60}
RECIPE.gives_items = { strong_combat_elixir = 1}
RECIPE.gives_xp = { alchemy = 600 }
RECIPE.category = "strong elixirs"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/arcane_major.png"
RECIPE.title = "Strong Arcane Elixir"
RECIPE.id = "strong_arcane_elixir"
RECIPE.description = "Boost Arcane Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 16, inert_stone = 10}
RECIPE.lvl_reqs = { alchemy = 60}
RECIPE.gives_items = { strong_arcane_elixir = 1}
RECIPE.gives_xp = { alchemy = 600 }
RECIPE.category = "strong elixirs"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/misc_diarrhea_brown_major.png"
RECIPE.title = "Strong Leveling Elixir"
RECIPE.id = "strong_leveling_elixir"
RECIPE.description = "Boost All Experience by 50%\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 30, diamond = 1}
RECIPE.lvl_reqs = { alchemy = 65}
RECIPE.gives_items = { strong_exp_elixir = 1}
RECIPE.gives_xp = { alchemy = 600 }
RECIPE.category = "strong elixirs"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )


//-=Special Effects Potions--//

RECIPE = {}
RECIPE.icon = "vgui/potions/new/misc_diarrhea_brown.png"
RECIPE.title = "Speed Potion"
RECIPE.id = "speed_potion"
RECIPE.description = "Run 30% faster!\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { flask = 1, liferoot = 5, tuna = 5}
RECIPE.lvl_reqs = { alchemy = 20}
RECIPE.gives_items = { speed_potion = 1}
RECIPE.gives_xp = { alchemy = 120 }
RECIPE.category = "special potions"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/misc_diarrhea_brown_major.png"
RECIPE.title = "Quick Speed Potion"
RECIPE.id = "quick_speed_potion"
RECIPE.description = "Run 50% faster!\nEffect Lasts: 6 minutes"
RECIPE.item_cost = { heavy_flask = 1, liferoot = 8, lobster = 5}
RECIPE.lvl_reqs = { alchemy = 35}
RECIPE.gives_items = { quick_speed_potion = 1}
RECIPE.gives_xp = { alchemy = 180 }
RECIPE.category = "special potions"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/misc_diarrhea_brown.png"
RECIPE.title = "Water Breathing Potion"
RECIPE.id = "water_breathing_potion"
RECIPE.description = "Breathe Underwater!\nEffect Lasts: 10 minutes"
RECIPE.item_cost = { flask = 1, liferoot = 8, cod = 5}
RECIPE.lvl_reqs = { alchemy = 15}
RECIPE.gives_items = { water_breathing_potion = 1}
RECIPE.gives_xp = { alchemy = 80 }
RECIPE.category = "special potions"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/arcane.png"
RECIPE.title = "Luck Potion"
RECIPE.id = "luck_potion"
RECIPE.description = "Finding things just got easier!\nIncreases Luck by: 50%\nEffect Lasts: 10 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 30, gold_powder = 20}
RECIPE.lvl_reqs = { alchemy = 60}
RECIPE.gives_items = { luck_elixir = 1}
RECIPE.gives_xp = { alchemy = 580 }
RECIPE.category = "special potions"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )

RECIPE = {}
RECIPE.icon = "vgui/potions/new/arcane_major.png"
RECIPE.title = "Strong Luck Potion"
RECIPE.id = "strong_luck_potion"
RECIPE.description = "Finding things just got even easier!\nIncreases Luck by: 100%\nEffect Lasts: 10 minutes"
RECIPE.item_cost = { imbued_flask = 1, liferoot = 50, platinum_powder = 20}
RECIPE.lvl_reqs = { alchemy = 70}
RECIPE.gives_items = { strong_luck_elixir = 1}
RECIPE.gives_xp = { alchemy = 720 }
RECIPE.category = "special potions"
RECIPE.stats = { alchemy1 = 1 }
SGS_RegisterRecipe( "gms_alchlab", RECIPE )