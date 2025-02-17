SGS.Brewing = {}
function Menu_RegisterBrewing( category, recipe )
	if not SGS.Brewing[category] then SGS.Brewing[category] = {} end
	
	SGS.Brewing[category][#SGS.Brewing[category] + 1] = recipe
end

//-=Healing Potions--//

RECIPE = {}
RECIPE.material = "vgui/potions/new/heal_minor.png"
RECIPE.title = "Minor Healing Potion"
RECIPE.uid = "healing1"
RECIPE.description = "Heals 40hp"
RECIPE.mname = "minor_healing_potion"
RECIPE.ptype = "healing"
RECIPE.value = 40
RECIPE.salvage = "vial"
Menu_RegisterBrewing( "healing", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/heal.png"
RECIPE.title = "Healing Potion"
RECIPE.uid = "healing2"
RECIPE.description = "Heals 80hp"
RECIPE.mname = "healing_potion"
RECIPE.ptype = "healing"
RECIPE.value = 80
RECIPE.salvage = "vial"
Menu_RegisterBrewing( "healing", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/heal_major.png"
RECIPE.title = "Major Healing Potion"
RECIPE.uid = "healing3"
RECIPE.description = "Heals 120hp"
RECIPE.mname = "major_healing_potion"
RECIPE.ptype = "healing"
RECIPE.value = 120
RECIPE.salvage = "flask"
Menu_RegisterBrewing( "healing", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/heal_superior.png"
RECIPE.title = "Super Healing Potion"
RECIPE.uid = "healing4"
RECIPE.description = "Heals 180hp"
RECIPE.mname = "super_healing_potion"
RECIPE.ptype = "healing"
RECIPE.value = 160
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "healing", RECIPE )

//-=Curing Potions--//

RECIPE = {}
RECIPE.material = "vgui/potions/new/thecure.png"
RECIPE.title = "The Cure"
RECIPE.uid = "curing1"
RECIPE.description = "Cures Food Bourne Illness"
RECIPE.mname = "the_cure"
RECIPE.ptype = "curing"
RECIPE.value = "illness"
RECIPE.salvage = "vial"
Menu_RegisterBrewing( "curing", RECIPE )

//-=EXP Elixirs--//

RECIPE = {}
RECIPE.material = "vgui/potions/new/farming.png"
RECIPE.title = "Minor Farming Elixir"
RECIPE.description = "Boost Farming Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.mname = "minor_farming_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "farming"
RECIPE.time = 240
RECIPE.level = 1
RECIPE.mod = 1.25
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/farming_major.png"
RECIPE.title = "Major Farming Elixir"
RECIPE.description = "Boost Farming Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.mname = "farming_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "farming"
RECIPE.time = 240
RECIPE.level = 2
RECIPE.mod = 1.75
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/woodcutting.png"
RECIPE.title = "Minor Woodcutting Elixir"
RECIPE.description = "Boost Woodcutting Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.mname = "minor_woodcutting_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "woodcutting"
RECIPE.time = 240
RECIPE.level = 1
RECIPE.mod = 1.25
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/woodcutting_major.png"
RECIPE.title = "Major Woodcutting Elixir"
RECIPE.description = "Boost Woodcutting Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.mname = "woodcutting_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "woodcutting"
RECIPE.time = 240
RECIPE.level = 2
RECIPE.mod = 1.75
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/fishing.png"
RECIPE.title = "Minor Fishing Elixir"
RECIPE.description = "Boost Fishing Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.mname = "minor_fishing_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "fishing"
RECIPE.time = 240
RECIPE.level = 1
RECIPE.mod = 1.25
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/fishing_major.png"
RECIPE.title = "Major Fishing Elixir"
RECIPE.description = "Boost Fishing Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.mname = "fishing_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "fishing"
RECIPE.time = 240
RECIPE.level = 2
RECIPE.mod = 1.75
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/mining.png"
RECIPE.title = "Minor Mining Elixir"
RECIPE.description = "Boost Mining Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.mname = "minor_mining_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "mining"
RECIPE.time = 240
RECIPE.level = 1
RECIPE.mod = 1.25
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/mining_major.png"
RECIPE.title = "Major Mining Elixir"
RECIPE.description = "Boost Mining Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.mname = "mining_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "mining"
RECIPE.time = 240
RECIPE.level = 2
RECIPE.mod = 1.75
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/cooking.png"
RECIPE.title = "Minor Cooking Elixir"
RECIPE.description = "Boost Cooking Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.mname = "minor_cooking_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "cooking"
RECIPE.time = 240
RECIPE.level = 1
RECIPE.mod = 1.25
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/cooking_major.png"
RECIPE.title = "Major Cooking Elixir"
RECIPE.description = "Boost Cooking Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.mname = "cooking_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "cooking"
RECIPE.time = 240
RECIPE.level = 2
RECIPE.mod = 1.75
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/smithing.png"
RECIPE.title = "Minor Smithing Elixir"
RECIPE.description = "Boost Smithing Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.mname = "minor_smithing_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "smithing"
RECIPE.time = 240
RECIPE.level = 1
RECIPE.mod = 1.25
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/smithing_major.png"
RECIPE.title = "Major Smithing Elixir"
RECIPE.description = "Boost Smithing Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.mname = "smithing_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "smithing"
RECIPE.time = 240
RECIPE.level = 2
RECIPE.mod = 1.75
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "elixir", RECIPE )


RECIPE = {}
RECIPE.material = "vgui/potions/new/construction.png"
RECIPE.title = "Minor Construction Elixir"
RECIPE.description = "Boost Construction Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.mname = "minor_construction_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "construction"
RECIPE.time = 240
RECIPE.level = 1
RECIPE.mod = 1.25
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/construction_major.png"
RECIPE.title = "Major Construction Elixir"
RECIPE.description = "Boost Construction Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.mname = "construction_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "construction"
RECIPE.time = 240
RECIPE.level = 2
RECIPE.mod = 1.75
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "elixir", RECIPE )


RECIPE = {}
RECIPE.material = "vgui/potions/new/alchemy.png"
RECIPE.title = "Minor Alchemy Elixir"
RECIPE.description = "Boost Alchemy Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.mname = "minor_alchemy_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "alchemy"
RECIPE.time = 240
RECIPE.level = 1
RECIPE.mod = 1.25
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/alchemy_major.png"
RECIPE.title = "Major Alchemy Elixir"
RECIPE.description = "Boost Alchemy Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.mname = "alchemy_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "alchemy"
RECIPE.time = 240
RECIPE.level = 2
RECIPE.mod = 1.75
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/combat.png"
RECIPE.title = "Minor Combat Elixir"
RECIPE.description = "Boost Combat Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.mname = "minor_combat_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "combat"
RECIPE.time = 240
RECIPE.level = 1
RECIPE.mod = 1.25
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/combat_major.png"
RECIPE.title = "Major Combat Elixir"
RECIPE.description = "Boost Combat Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.mname = "combat_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "combat"
RECIPE.time = 240
RECIPE.level = 2
RECIPE.mod = 1.75
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/arcane.png"
RECIPE.title = "Minor Arcane Elixir"
RECIPE.description = "Boost Arcane Experience by 25%\nEffect Lasts: 4 minutes"
RECIPE.mname = "minor_arcane_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "arcane"
RECIPE.time = 240
RECIPE.level = 1
RECIPE.mod = 1.25
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/arcane_major.png"
RECIPE.title = "Major Arcane Elixir"
RECIPE.description = "Boost Arcane Experience by 75%\nEffect Lasts: 4 minutes"
RECIPE.mname = "arcane_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "arcane"
RECIPE.time = 240
RECIPE.level = 2
RECIPE.mod = 1.75
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/misc_diarrhea_brown.png"
RECIPE.title = "Minor Leveling Elixir"
RECIPE.description = "Boost All Experience by 15%\nEffect Lasts: 10 minutes"
RECIPE.mname = "minor_exp_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "all"
RECIPE.time = 600
RECIPE.level = 1
RECIPE.mod = 1.15
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/misc_diarrhea_brown_major.png"
RECIPE.title = "Major Leveling Elixir"
RECIPE.description = "Boost All Experience by 30%\nEffect Lasts: 10 minutes"
RECIPE.mname = "exp_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "all"
RECIPE.time = 600
RECIPE.level = 2
RECIPE.mod = 1.3
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "elixir", RECIPE )


//-=Strong Elixirs--//

RECIPE = {}
RECIPE.material = "vgui/potions/new/farming_major.png"
RECIPE.title = "Strong Farming Elixir"
RECIPE.description = "Boost Farming Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.mname = "strong_farming_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "farming"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 2
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "strong-elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/woodcutting_major.png"
RECIPE.title = "Strong Woodcutting Elixir"
RECIPE.description = "Boost Woodcutting Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.mname = "strong_woodcutting_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "woodcutting"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 2
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "strong-elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/fishing_major.png"
RECIPE.title = "Strong Fishing Elixir"
RECIPE.description = "Boost Fishing Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.mname = "strong_fishing_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "fishing"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 2
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "strong-elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/mining_major.png"
RECIPE.title = "Strong Mining Elixir"
RECIPE.description = "Boost Mining Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.mname = "strong_mining_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "mining"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 2
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "strong-elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/cooking_major.png"
RECIPE.title = "Strong Cooking Elixir"
RECIPE.description = "Boost Cooking Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.mname = "strong_cooking_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "cooking"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 2
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "strong-elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/smithing_major.png"
RECIPE.title = "Strong Smithing Elixir"
RECIPE.description = "Boost Smithing Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.mname = "strong_smithing_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "smithing"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 2
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "strong-elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/construction_major.png"
RECIPE.title = "Strong Construction Elixir"
RECIPE.description = "Boost Construction Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.mname = "strong_construction_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "construction"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 2
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "strong-elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/alchemy_major.png"
RECIPE.title = "Strong Alchemy Elixir"
RECIPE.description = "Boost Alchemy Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.mname = "strong_alchemy_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "alchemy"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 2
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "strong-elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/combat_major.png"
RECIPE.title = "Strong Combat Elixir"
RECIPE.description = "Boost Combat Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.mname = "strong_combat_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "combat"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 2
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "strong-elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/arcane_major.png"
RECIPE.title = "Strong Arcane Elixir"
RECIPE.description = "Boost Arcane Experience by 100%\nEffect Lasts: 6 minutes"
RECIPE.mname = "strong_arcane_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "arcane"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 2
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "strong-elixir", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/misc_diarrhea_brown_major.png"
RECIPE.title = "Strong Leveling Elixir"
RECIPE.description = "Boost All Experience by 50%\nEffect Lasts: 6 minutes"
RECIPE.mname = "strong_exp_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "all"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 1.5
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "strong-elixir", RECIPE )


//-=Special Effects Potions--//

RECIPE = {}
RECIPE.material = "vgui/potions/new/misc_diarrhea_brown.png"
RECIPE.title = "Speed Potion"
RECIPE.description = "Run 30% faster!\nEffect Lasts: 6 minutes"
RECIPE.mname = "speed_potion"
RECIPE.ptype = "elixir"
RECIPE.value = "speed"
RECIPE.time = 360
RECIPE.level = 1
RECIPE.mod = 1.3
RECIPE.salvage = "flask"
Menu_RegisterBrewing( "special_potions", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/misc_diarrhea_brown_major.png"
RECIPE.title = "Quick Speed Potion"
RECIPE.description = "Run 50% faster!\nEffect Lasts: 6 minutes"
RECIPE.mname = "quick_speed_potion"
RECIPE.ptype = "elixir"
RECIPE.value = "speed"
RECIPE.time = 360
RECIPE.level = 2
RECIPE.mod = 1.5
RECIPE.salvage = "heavy_flask"
Menu_RegisterBrewing( "special_potions", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/misc_diarrhea_brown.png"
RECIPE.title = "Water Breathing Potion"
RECIPE.description = "Breathe Underwater!\nEffect Lasts: 10 minutes"
RECIPE.mname = "water_breathing_potion"
RECIPE.ptype = "elixir"
RECIPE.value = "waterbreathing"
RECIPE.time = 600
RECIPE.level = 2
RECIPE.mod = 1.6
RECIPE.salvage = "flask"
Menu_RegisterBrewing( "special_potions", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/arcane.png"
RECIPE.title = "Luck Potion"
RECIPE.description = "Finding things just got easier!\nIncreases Luck by: 50%\nEffect Lasts: 10 minutes"
RECIPE.mname = "luck_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "luck"
RECIPE.time = 600
RECIPE.level = 2
RECIPE.mod = 0.5
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "special_potions", RECIPE )

RECIPE = {}
RECIPE.material = "vgui/potions/new/arcane_major.png"
RECIPE.title = "Strong Luck Potion"
RECIPE.description = "Finding things just got even easier!\nIncreases Luck by: 100%\nEffect Lasts: 10 minutes"
RECIPE.mname = "strong_luck_elixir"
RECIPE.ptype = "elixir"
RECIPE.value = "luck"
RECIPE.time = 600
RECIPE.level = 3
RECIPE.mod = 1
RECIPE.salvage = "imbued_flask"
Menu_RegisterBrewing( "special_potions", RECIPE )

//-=Achievement Elixir--//

RECIPE = {}
RECIPE.title = "Inventory Increasement 1"
RECIPE.material = "vgui/error.png"
RECIPE.ptype = "achievement"
RECIPE.uid = "inventory1"
RECIPE.mname = "max_inventory_buff_1"
RECIPE.description = "Permanently Increases Max Inventory by 50"
RECIPE.achievement = "inventory1"
RECIPE.alttext = "Unlocking Achievement..."
Menu_RegisterBrewing( "achievement", RECIPE )

RECIPE = {}
RECIPE.title = "Inventory Increasement 2"
RECIPE.material = "vgui/error.png"
RECIPE.ptype = "achievement"
RECIPE.uid = "inventory2"
RECIPE.mname = "max_inventory_buff_2"
RECIPE.description = "Permanently Increases Max Inventory by 100"
RECIPE.achievement = "inventory2"
RECIPE.alttext = "Unlocking Achievement..."
Menu_RegisterBrewing( "achievement", RECIPE )

RECIPE = {}
RECIPE.title = "Member Upgrade Token"
RECIPE.material = "vgui/error.png"
RECIPE.ptype = "upgrade"
RECIPE.uid = "mut"
RECIPE.mname = "member_upgrade_token"
RECIPE.description = "Makes you a donator for 1 month"
RECIPE.alttext = "Unlocking Achievement..."
Menu_RegisterBrewing( "achievement", RECIPE )

RECIPE = {}
RECIPE.title = "Max Plant Increasement 1"
RECIPE.material = "vgui/error.png"
RECIPE.ptype = "achievement"
RECIPE.uid = "planting1"
RECIPE.mname = "max_plant_buff_1"
RECIPE.description = "Permanently Increases Max Plants by 3"
RECIPE.achievement = "planting1"
RECIPE.alttext = "Unlocking Achievement..."
Menu_RegisterBrewing( "achievement", RECIPE )

RECIPE = {}
RECIPE.title = "Max Plant Increasement 2"
RECIPE.material = "vgui/error.png"
RECIPE.ptype = "achievement"
RECIPE.uid = "planting2"
RECIPE.mname = "max_plant_buff_2"
RECIPE.description = "Permanently Increases Max Plants by 6"
RECIPE.achievement = "planting2"
RECIPE.alttext = "Unlocking Achievement..."
Menu_RegisterBrewing( "achievement", RECIPE )

RECIPE = {}
RECIPE.title = "Pet House Upgrade 1"
RECIPE.material = "vgui/error.png"
RECIPE.ptype = "achievement"
RECIPE.uid = "maxpets1"
RECIPE.mname = "pethouse_upgrade_1"
RECIPE.description = "Permanently increases max pet storage by 5."
RECIPE.achievement = "maxpets1"
RECIPE.alttext = "Unlocking Achievement..."
Menu_RegisterBrewing( "achievement", RECIPE )

RECIPE = {}
RECIPE.title = "Pet House Upgrade 2"
RECIPE.material = "vgui/error.png"
RECIPE.ptype = "achievement"
RECIPE.uid = "maxpets2"
RECIPE.mname = "pethouse_upgrade_2"
RECIPE.description = "Permanently increases max pet storage by 5."
RECIPE.achievement = "maxpets2"
RECIPE.alttext = "Unlocking Achievement..."
Menu_RegisterBrewing( "achievement", RECIPE )

RECIPE = {}
RECIPE.title = "Persistent Tribe Upgrade"
RECIPE.material = "vgui/error.png"
RECIPE.ptype = "upgrade"
RECIPE.uid = "tribe_upgrade"
RECIPE.mname = "tribe_upgrade"
RECIPE.description = "Upgrades your tribe to be persistent and take advantage of tribe perks."
RECIPE.alttext = "Upgrading Tribe..."
Menu_RegisterBrewing( "achievement", RECIPE )

//-=First Aid--//

RECIPE = {}
RECIPE.title = "Aid Pack"
RECIPE.material = "vgui/firstaid/health_lg.png"
RECIPE.ptype = "firstaid"
RECIPE.uid = "aid1"
RECIPE.mname = "aid_pack"
RECIPE.description = "Heals 20% HP"
RECIPE.alttext = "Applying Kit..."
Menu_RegisterBrewing( "firstaid", RECIPE )

RECIPE = {}
RECIPE.title = "Large Aid Pack"
RECIPE.material = "vgui/firstaid/health_sm.png"
RECIPE.ptype = "firstaid"
RECIPE.uid = "aid2"
RECIPE.mname = "large_aid_pack"
RECIPE.description = "Heals 50% HP"
RECIPE.alttext = "Applying Kit..."
Menu_RegisterBrewing( "firstaid", RECIPE )

RECIPE = {}
RECIPE.title = "Tourniquet"
RECIPE.material = "vgui/firstaid/tourniquet.png"
RECIPE.ptype = "firstaid"
RECIPE.uid = "aid3"
RECIPE.mname = "tourniquet"
RECIPE.description = "Stops Bleeding"
RECIPE.alttext = "Applying Tourniquet..."
Menu_RegisterBrewing( "firstaid", RECIPE )

RECIPE = {}
RECIPE.title = "Wooden Splint"
RECIPE.material = "vgui/firstaid/splint.png"
RECIPE.ptype = "firstaid"
RECIPE.uid = "aid4"
RECIPE.mname = "wooden_splint"
RECIPE.description = "Heals Broken Bones"
RECIPE.alttext = "Applying Splint..."
Menu_RegisterBrewing( "firstaid", RECIPE )