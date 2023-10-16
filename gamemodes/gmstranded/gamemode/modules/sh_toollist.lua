SGS.Tools = {}
function Menu_RegisterTool( tool )
	SGS.Tools[tool.entity] = tool
end

------------
----main----
------------

TOOLTABLE = {}
TOOLTABLE.model = "models/weapons/w_Physics.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Physics Gun"
TOOLTABLE.description = "Used to manipulate objects!"
TOOLTABLE.entity = "weapon_physgun"
TOOLTABLE.color = Vector(0,1,1)
TOOLTABLE.icon = "vgui/tools/physgun.png"
TOOLTABLE.category = "main"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/Weapons/w_physics.mdl"
TOOLTABLE.skin = 2
TOOLTABLE.title = "Gravity Gun"
TOOLTABLE.description = "Throw things!"
TOOLTABLE.entity = "weapon_physcannon"
TOOLTABLE.icon = "vgui/tools/gravitygun.png"
TOOLTABLE.category = "main"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/MaxOfS2D/camera.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Camera"
TOOLTABLE.description = "How touristy!"
TOOLTABLE.entity = "gmod_camera"
TOOLTABLE.icon = "vgui/tools/camera.png"
TOOLTABLE.category = "main"
Menu_RegisterTool( TOOLTABLE )

---------------------
-------combat-------
---------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/woodenrod.mdl"
TOOLTABLE.skin = 0
TOOLTABLE.title = "Wooden Club"
TOOLTABLE.description = "Use with caution!\nRequired Combat Level: 1"
TOOLTABLE.entity = "weapon_melee1"
TOOLTABLE.icon = "vgui/tools/wood_melee.png"
TOOLTABLE.category = "combat"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/ironrod.mdl"
TOOLTABLE.skin = 0
TOOLTABLE.title = "Iron Rod"
TOOLTABLE.description = "Use with caution!\nRequired Combat Level: 10"
TOOLTABLE.entity = "weapon_melee2"
TOOLTABLE.icon = "vgui/tools/iron_melee.png"
TOOLTABLE.category = "combat"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/smallmace.mdl"
TOOLTABLE.skin = 0
TOOLTABLE.title = "Steel Rod"
TOOLTABLE.description = "Use with caution!\nRequired Combat Level: 20"
TOOLTABLE.entity = "weapon_melee3"
TOOLTABLE.icon = "vgui/tools/steel_melee.png"
TOOLTABLE.category = "combat"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/smallmace.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Rod"
TOOLTABLE.description = "Use with caution!\nRequired Combat Level: 30"
TOOLTABLE.entity = "weapon_melee4"
TOOLTABLE.icon = "vgui/tools/silver_melee.png"
TOOLTABLE.category = "combat"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/largemace.mdl"
TOOLTABLE.skin = 0
TOOLTABLE.title = "Trinium Rod"
TOOLTABLE.description = "Use with caution!\nRequired Combat Level: 40"
TOOLTABLE.entity = "weapon_melee5"
TOOLTABLE.icon = "vgui/tools/trinium_melee.png"
TOOLTABLE.color = Vector(.16, .61, .02)
TOOLTABLE.category = "combat"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/largemace.mdl"
TOOLTABLE.skin = 0
TOOLTABLE.title = "Naquadah Rod"
TOOLTABLE.description = "Use with caution!\nRequired Combat Level: 50"
TOOLTABLE.entity = "weapon_melee6"
TOOLTABLE.icon = "vgui/tools/naquadah_melee.png"
TOOLTABLE.color = Vector(1, .12, 0)
TOOLTABLE.category = "combat"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/highendmace.mdl"
TOOLTABLE.skin = 0
TOOLTABLE.title = "Mithril Rod"
TOOLTABLE.description = "Use with caution!\nRequired Combat Level: 60"
TOOLTABLE.entity = "weapon_melee7"
TOOLTABLE.icon = "vgui/tools/mithril_melee.png"
TOOLTABLE.category = "combat"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/highendmace.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Rod"
TOOLTABLE.description = "Use with caution!\nRequired Combat Level: 70"
TOOLTABLE.entity = "weapon_melee8"
TOOLTABLE.icon = "vgui/tools/platinum_melee.png"
TOOLTABLE.category = "combat"
Menu_RegisterTool( TOOLTABLE )

------------------
---construction---
------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/weapons/w_toolgun.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Remover Tool"
TOOLTABLE.description = "Primary: Remove props and items you own!"
TOOLTABLE.entity = "gms_remover"
TOOLTABLE.icon = "vgui/tools/remover.png"
TOOLTABLE.category = "construction"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/weapons/w_toolgun.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Prop Share Tool"
TOOLTABLE.description = "Primary: Disowns an item allowing someone else to own it!\nSecondary: Take control of an ownerless item!\nReload: Allow anyone to use the structure without sharing ownership."
TOOLTABLE.entity = "gms_sppshare"
TOOLTABLE.icon = "vgui/tools/propshare.png"
TOOLTABLE.category = "construction"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/weapons/w_toolgun.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Structure Packager"
TOOLTABLE.description = "Primary: Packs a structure you own for later use or trade!"
TOOLTABLE.entity = "gms_packager"
TOOLTABLE.icon = "vgui/tools/packager.png"
TOOLTABLE.category = "construction"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/weapons/w_toolgun.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Prop Locker"
TOOLTABLE.description = "Primary: Select up to 10 items.\nSecondary: Locks all selected props, making them unmovable\nReload: Unlocks all selected props"
TOOLTABLE.entity = "gms_proplocker"
TOOLTABLE.icon = "vgui/tools/welder.png"
TOOLTABLE.category = "construction"
Menu_RegisterTool( TOOLTABLE )


---------------------
-----woodcutting-----
---------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Stone Hatchet"
TOOLTABLE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_hatchet1"
TOOLTABLE.color = Vector(.6, .6, .6)
TOOLTABLE.icon = "vgui/tools/stone_hatchet.png"
TOOLTABLE.category = "woodcutting"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Hatchet"
TOOLTABLE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_hatchet2"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.icon = "vgui/tools/iron_hatchet.png"
TOOLTABLE.category = "woodcutting"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Hatchet"
TOOLTABLE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 15"
TOOLTABLE.uselevel = { woodcutting = 15}
TOOLTABLE.entity = "gms_hatchet3"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.icon = "vgui/tools/steel_hatchet.png"
TOOLTABLE.category = "woodcutting"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Hatchet"
TOOLTABLE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 25"
TOOLTABLE.uselevel = { woodcutting = 25}
TOOLTABLE.entity = "gms_hatchet4"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.icon = "vgui/tools/silver_hatchet.png"
TOOLTABLE.category = "woodcutting"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Hatchet"
TOOLTABLE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 35"
TOOLTABLE.uselevel = { woodcutting = 35}
TOOLTABLE.entity = "gms_hatchet5"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.icon = "vgui/tools/trinium_hatchet.png"
TOOLTABLE.category = "woodcutting"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Hatchet"
TOOLTABLE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 45"
TOOLTABLE.uselevel = { woodcutting = 45}
TOOLTABLE.entity = "gms_hatchet6"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.icon = "vgui/tools/naquadah_hatchet.png"
TOOLTABLE.category = "woodcutting"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Hatchet"
TOOLTABLE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 55"
TOOLTABLE.uselevel = { woodcutting = 55}
TOOLTABLE.entity = "gms_hatchet7"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.icon = "vgui/tools/mithril_hatchet.png"
TOOLTABLE.category = "woodcutting"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Hatchet"
TOOLTABLE.description = "Makes cutting down trees easy!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 65"
TOOLTABLE.uselevel = { woodcutting = 65}
TOOLTABLE.entity = "gms_hatchet8"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.icon = "vgui/tools/platinum_hatchet.png"
TOOLTABLE.category = "woodcutting"
Menu_RegisterTool( TOOLTABLE )



------------------
------mining------
------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Stone Pickaxe"
TOOLTABLE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_pickaxe1"
TOOLTABLE.color = Vector(.6, .6, .6)
TOOLTABLE.icon = "vgui/tools/stone_pickaxe.png"
TOOLTABLE.category = "mining"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Pickaxe"
TOOLTABLE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_pickaxe2"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.icon = "vgui/tools/iron_pickaxe.png"
TOOLTABLE.category = "mining"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Pickaxe"
TOOLTABLE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 15"
TOOLTABLE.uselevel = { mining = 15}
TOOLTABLE.entity = "gms_pickaxe3"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.icon = "vgui/tools/steel_pickaxe.png"
TOOLTABLE.category = "mining"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Pickaxe"
TOOLTABLE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 25"
TOOLTABLE.uselevel = { mining = 25}
TOOLTABLE.entity = "gms_pickaxe4"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.icon = "vgui/tools/silver_pickaxe.png"
TOOLTABLE.category = "mining"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Pickaxe"
TOOLTABLE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 35"
TOOLTABLE.uselevel = { mining = 35}
TOOLTABLE.entity = "gms_pickaxe5"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.icon = "vgui/tools/trinium_pickaxe.png"
TOOLTABLE.category = "mining"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Pickaxe"
TOOLTABLE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 45"
TOOLTABLE.uselevel = { mining = 45}
TOOLTABLE.entity = "gms_pickaxe6"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.icon = "vgui/tools/naquadah_pickaxe.png"
TOOLTABLE.category = "mining"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Pickaxe"
TOOLTABLE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 55"
TOOLTABLE.uselevel = { mining = 55}
TOOLTABLE.entity = "gms_pickaxe7"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.icon = "vgui/tools/mithril_pickaxe.png"
TOOLTABLE.category = "mining"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Pickaxe"
TOOLTABLE.description = "Makes mining ore easy!\nPrimary: Mine Ore\nRequired Mining Lvl: 65"
TOOLTABLE.uselevel = { mining = 65}
TOOLTABLE.entity = "gms_pickaxe8"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.icon = "vgui/tools/platinum_pickaxe.png"
TOOLTABLE.category = "mining"
Menu_RegisterTool( TOOLTABLE )




-----------------
-----fishing-----
-----------------

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/fishingrod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Wooden Fishing Rod"
TOOLTABLE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 1"
TOOLTABLE.entity = "gms_fishingrod1"
TOOLTABLE.icon = "vgui/tools/wood_rod.png"
TOOLTABLE.color = Vector(.4, .2, .0)
TOOLTABLE.category = "fishing"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/fishingrod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Fishing Rod"
TOOLTABLE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 1"
TOOLTABLE.entity = "gms_fishingrod2"
TOOLTABLE.icon = "vgui/tools/iron_rod.png"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.category = "fishing"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/fishingrod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Fishing Rod"
TOOLTABLE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 15"
TOOLTABLE.entity = "gms_fishingrod3"
TOOLTABLE.icon = "vgui/tools/steel_rod.png"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.category = "fishing"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/fishingrod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Fishing Rod"
TOOLTABLE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 25"
TOOLTABLE.entity = "gms_fishingrod4"
TOOLTABLE.icon = "vgui/tools/silver_rod.png"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.category = "fishing"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/fishingrod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Fishing Rod"
TOOLTABLE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 35"
TOOLTABLE.entity = "gms_fishingrod5"
TOOLTABLE.icon = "vgui/tools/trinium_rod.png"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.category = "fishing"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/fishingrod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Fishing Rod"
TOOLTABLE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 45"
TOOLTABLE.entity = "gms_fishingrod6"
TOOLTABLE.icon = "vgui/tools/naquadah_rod.png"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.category = "fishing"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/fishingrod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Fishing Rod"
TOOLTABLE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 55"
TOOLTABLE.entity = "gms_fishingrod7"
TOOLTABLE.icon = "vgui/tools/mithril_rod.png"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.category = "fishing"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/fishingrod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Fishing Rod"
TOOLTABLE.description = "Makes fishing easy!\nPrimary: Fish\nRequired Fishing Lvl: 65"
TOOLTABLE.entity = "gms_fishingrod8"
TOOLTABLE.icon = "vgui/tools/platinum_rod.png"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.category = "fishing"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/fishingrod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Advanced Fishing Rod"
TOOLTABLE.description = "For the more advanced fishers!\nPrimary: Fish\nRequired Fishing Lvl: 50"
TOOLTABLE.entity = "gms_afishingrod"
TOOLTABLE.icon = "vgui/tools/adv_rod.png"
TOOLTABLE.color = Vector(.1, .1, .8)
TOOLTABLE.category = "fishing"
Menu_RegisterTool( TOOLTABLE )



-------------------
------farming------
-------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/hoe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Stone Hoe"
TOOLTABLE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 1"
TOOLTABLE.entity = "gms_hoe1"
TOOLTABLE.icon = "vgui/tools/stone_hoe.png"
TOOLTABLE.color = Vector(.6, .6, .6)
TOOLTABLE.category = "farming"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/hoe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Hoe"
TOOLTABLE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 1"
TOOLTABLE.entity = "gms_hoe2"
TOOLTABLE.icon = "vgui/tools/iron_hoe.png"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.category = "farming"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/hoe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Hoe"
TOOLTABLE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 15"
TOOLTABLE.entity = "gms_hoe3"
TOOLTABLE.icon = "vgui/tools/steel_hoe.png"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.category = "farming"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/hoe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Hoe"
TOOLTABLE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 25"
TOOLTABLE.entity = "gms_hoe4"
TOOLTABLE.icon = "vgui/tools/silver_hoe.png"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.category = "farming"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/hoe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Hoe"
TOOLTABLE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 35"
TOOLTABLE.entity = "gms_hoe5"
TOOLTABLE.icon = "vgui/tools/trinium_hoe.png"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.category = "farming"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/hoe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Hoe"
TOOLTABLE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 45"
TOOLTABLE.entity = "gms_hoe6"
TOOLTABLE.icon = "vgui/tools/naquadah_hoe.png"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.category = "farming"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/hoe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Hoe"
TOOLTABLE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 55"
TOOLTABLE.entity = "gms_hoe7"
TOOLTABLE.icon = "vgui/tools/mithril_hoe.png"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.category = "farming"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/hoe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Hoe"
TOOLTABLE.description = "Makes farming easy!\nPrimary: Forage\nRequired Farming Lvl: 65"
TOOLTABLE.entity = "gms_hoe8"
TOOLTABLE.icon = "vgui/tools/platinum_hoe.png"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.category = "farming"
Menu_RegisterTool( TOOLTABLE )


---------------------
-------sifting-------
---------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/sifter.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Sifter"
TOOLTABLE.description = "Sift the ground to collect sand!\nPrimary: Sift"
TOOLTABLE.entity = "gms_sifter"
TOOLTABLE.icon = "vgui/tools/iron_sifter.png"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.category = "sifting"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/sifter.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Sifter"
TOOLTABLE.description = "Sift the ground to collect sand!\nPrimary: Sift"
TOOLTABLE.entity = "gms_sifter2"
TOOLTABLE.icon = "vgui/tools/steel_sifter.png"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.category = "sifting"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/sifter.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Sifter"
TOOLTABLE.description = "Sift the ground to collect sand!\nPrimary: Sift"
TOOLTABLE.entity = "gms_sifter3"
TOOLTABLE.icon = "vgui/tools/trinium_sifter.png"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.category = "sifting"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/sifter.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Sifter"
TOOLTABLE.description = "Sift the ground to collect sand!\nPrimary: Sift"
TOOLTABLE.entity = "gms_sifter4"
TOOLTABLE.icon = "vgui/tools/mithril_sifter.png"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.category = "sifting"
Menu_RegisterTool( TOOLTABLE )

--------------------
--------misc--------
--------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/props_foliage/rock_forest01.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Grinding Stone"
TOOLTABLE.description = "Used to grind ores into dust!\nPrimary: Open Grinding Menu"
TOOLTABLE.entity = "gms_grindingstone"
TOOLTABLE.icon = "vgui/tools/grindingstone.png"
TOOLTABLE.scale = 0.216
TOOLTABLE.category = "misc"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/Weapons/w_crowbar.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Alchemist's Stone"
TOOLTABLE.description = "Used for transmutations!\nPrimary: Open Transmutation Menu"
TOOLTABLE.entity = "gms_alchemystone"
TOOLTABLE.icon = "vgui/tools/alchstone.png"
TOOLTABLE.category = "misc"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/props_c17/metalPot002a.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Frying Pan"
TOOLTABLE.description = "Equip while cooking for better results!"
TOOLTABLE.entity = "gms_fryingpan"
TOOLTABLE.icon = "vgui/tools/fryingpan.png"
TOOLTABLE.category = "misc"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/torch.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Handheld Torch"
TOOLTABLE.description = "Light!\nRight click to place torch."
TOOLTABLE.entity = "gms_handtorch"
TOOLTABLE.icon = "vgui/tools/torch.png"
TOOLTABLE.category = "misc"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/hammer.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Construction Hammer"
TOOLTABLE.description = "Equip while building for better results!\nLeft Click: Deconstructs a prop, returning a portion of the materials used to make it.\nRight Click: Repairs the damage to a prop or structure."
TOOLTABLE.entity = "gms_hammer"
TOOLTABLE.icon = "vgui/tools/hammer.png"
TOOLTABLE.category = "misc"
Menu_RegisterTool( TOOLTABLE )


-------------------------
--------extractor--------
-------------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/Weapons/w_crowbar.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Seed Extractor"
TOOLTABLE.description = "Remove the seeds from a fruit\nThis process destroys the fruit!"
TOOLTABLE.entity = "gms_seedextractor"
TOOLTABLE.icon = "vgui/tools/iron_seedextractor.png"
TOOLTABLE.category = "extractor"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/Weapons/w_crowbar.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Seed Extractor"
TOOLTABLE.description = "Remove the seeds from a fruit\nThis process destroys the fruit!"
TOOLTABLE.entity = "gms_seedextractor2"
TOOLTABLE.icon = "vgui/tools/silver_seedextractor.png"
TOOLTABLE.category = "extractor"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/Weapons/w_crowbar.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Seed Extractor"
TOOLTABLE.description = "Remove the seeds from a fruit\nThis process destroys the fruit!"
TOOLTABLE.entity = "gms_seedextractor3"
TOOLTABLE.icon = "vgui/tools/trinium_seedextractor.png"
TOOLTABLE.category = "extractor"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/Weapons/w_crowbar.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Seed Extractor"
TOOLTABLE.description = "Remove the seeds from a fruit\nThis process destroys the fruit!"
TOOLTABLE.entity = "gms_seedextractor4"
TOOLTABLE.icon = "vgui/tools/mithril_seedextractor.png"
TOOLTABLE.category = "extractor"
Menu_RegisterTool( TOOLTABLE )

-------------------
-----enchanted-----
-------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Hatchet"
TOOLTABLE.description = "Very powerful tree cutting tool!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_ehatchet"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.icon = "vgui/tools/enchanted_hatchet.png"
TOOLTABLE.category = "enchanted"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Pickaxe"
TOOLTABLE.description = "Very powerful mining tool!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_epickaxe"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.icon = "vgui/tools/enchanted_pickaxe.png"
TOOLTABLE.category = "enchanted"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/fishingrod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Fishing Rod"
TOOLTABLE.description = "Very powerful fishing rod!\nPrimary: Cast Line\nRequired Fishing Lvl: 1"
TOOLTABLE.uselevel = { fishing = 1}
TOOLTABLE.entity = "gms_efishingrod"
TOOLTABLE.icon = "vgui/tools/enchanted_rod.png"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.category = "enchanted"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/hoe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Hoe"
TOOLTABLE.description = "Very powerful farming tool!\nPrimary: Forage/Harvest\nRequired Farming Lvl: 1"
TOOLTABLE.uselevel = { farming = 1}
TOOLTABLE.entity = "gms_ehoe"
TOOLTABLE.icon = "vgui/tools/enchanted_hoe.png"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.category = "enchanted"
Menu_RegisterTool( TOOLTABLE )


--------------------------------
------woodcutting-sapphire------
--------------------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Stone Hatchet (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_hatchet1s"
TOOLTABLE.color = Vector(.6, .6, .6)
TOOLTABLE.icon = "vgui/tools/stone_hatchet_s.png"
TOOLTABLE.category = "woodcutting-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Hatchet (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_hatchet2s"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.icon = "vgui/tools/iron_hatchet_s.png"
TOOLTABLE.category = "woodcutting-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Hatchet (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 15"
TOOLTABLE.uselevel = { woodcutting = 15}
TOOLTABLE.entity = "gms_hatchet3s"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.icon = "vgui/tools/steel_hatchet_s.png"
TOOLTABLE.category = "woodcutting-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Hatchet (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 25"
TOOLTABLE.uselevel = { woodcutting = 25}
TOOLTABLE.entity = "gms_hatchet4s"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.icon = "vgui/tools/silver_hatchet_s.png"
TOOLTABLE.category = "woodcutting-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Hatchet (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 35"
TOOLTABLE.uselevel = { woodcutting = 35}
TOOLTABLE.entity = "gms_hatchet5s"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.icon = "vgui/tools/trinium_hatchet_s.png"
TOOLTABLE.category = "woodcutting-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Hatchet (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 45"
TOOLTABLE.uselevel = { woodcutting = 45}
TOOLTABLE.entity = "gms_hatchet6s"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.icon = "vgui/tools/naquadah_hatchet_s.png"
TOOLTABLE.category = "woodcutting-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Hatchet (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 55"
TOOLTABLE.uselevel = { woodcutting = 55}
TOOLTABLE.entity = "gms_hatchet7s"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.icon = "vgui/tools/mithril_hatchet_s.png"
TOOLTABLE.category = "woodcutting-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Hatchet (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 65"
TOOLTABLE.uselevel = { woodcutting = 65}
TOOLTABLE.entity = "gms_hatchet8s"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.icon = "vgui/tools/platinum_hatchet_s.png"
TOOLTABLE.category = "woodcutting-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Hatchet (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_ehatchets"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.icon = "vgui/tools/enchanted_hatchet_s.png"
TOOLTABLE.category = "woodcutting-sapphire"
Menu_RegisterTool( TOOLTABLE )


-------------------------------
------woodcutting-emerald------
-------------------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Stone Hatchet (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_hatchet1e"
TOOLTABLE.color = Vector(.6, .6, .6)
TOOLTABLE.icon = "vgui/tools/stone_hatchet_e.png"
TOOLTABLE.category = "woodcutting-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Hatchet (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_hatchet2e"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.icon = "vgui/tools/iron_hatchet_e.png"
TOOLTABLE.category = "woodcutting-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Hatchet (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 15"
TOOLTABLE.uselevel = { woodcutting = 15}
TOOLTABLE.entity = "gms_hatchet3e"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.icon = "vgui/tools/steel_hatchet_e.png"
TOOLTABLE.category = "woodcutting-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Hatchet (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 25"
TOOLTABLE.uselevel = { woodcutting = 25}
TOOLTABLE.entity = "gms_hatchet4e"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.icon = "vgui/tools/silver_hatchet_e.png"
TOOLTABLE.category = "woodcutting-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Hatchet (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 35"
TOOLTABLE.uselevel = { woodcutting = 35}
TOOLTABLE.entity = "gms_hatchet5e"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.icon = "vgui/tools/trinium_hatchet_e.png"
TOOLTABLE.category = "woodcutting-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Hatchet (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 45"
TOOLTABLE.uselevel = { woodcutting = 45}
TOOLTABLE.entity = "gms_hatchet6e"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.icon = "vgui/tools/naquadah_hatchet_e.png"
TOOLTABLE.category = "woodcutting-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Hatchet (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 55"
TOOLTABLE.uselevel = { woodcutting = 55}
TOOLTABLE.entity = "gms_hatchet7e"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.icon = "vgui/tools/mithril_hatchet_e.png"
TOOLTABLE.category = "woodcutting-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Hatchet (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 65"
TOOLTABLE.uselevel = { woodcutting = 65}
TOOLTABLE.entity = "gms_hatchet8e"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.icon = "vgui/tools/platinum_hatchet_e.png"
TOOLTABLE.category = "woodcutting-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Hatchet (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_ehatchete"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.icon = "vgui/tools/enchanted_hatchet_e.png"
TOOLTABLE.category = "woodcutting-emerald"
Menu_RegisterTool( TOOLTABLE )


----------------------------
------woodcutting-ruby------
----------------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Stone Hatchet (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_hatchet1r"
TOOLTABLE.color = Vector(.6, .6, .6)
TOOLTABLE.icon = "vgui/tools/stone_hatchet_r.png"
TOOLTABLE.category = "woodcutting-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Hatchet (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_hatchet2r"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.icon = "vgui/tools/iron_hatchet_r.png"
TOOLTABLE.category = "woodcutting-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Hatchet (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 15"
TOOLTABLE.uselevel = { woodcutting = 15}
TOOLTABLE.entity = "gms_hatchet3r"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.icon = "vgui/tools/steel_hatchet_r.png"
TOOLTABLE.category = "woodcutting-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Hatchet (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 25"
TOOLTABLE.uselevel = { woodcutting = 25}
TOOLTABLE.entity = "gms_hatchet4r"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.icon = "vgui/tools/silver_hatchet_r.png"
TOOLTABLE.category = "woodcutting-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Hatchet (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 35"
TOOLTABLE.uselevel = { woodcutting = 35}
TOOLTABLE.entity = "gms_hatchet5r"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.icon = "vgui/tools/trinium_hatchet_r.png"
TOOLTABLE.category = "woodcutting-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Hatchet (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 45"
TOOLTABLE.uselevel = { woodcutting = 45}
TOOLTABLE.entity = "gms_hatchet6r"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.icon = "vgui/tools/naquadah_hatchet_r.png"
TOOLTABLE.category = "woodcutting-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Hatchet (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 55"
TOOLTABLE.uselevel = { woodcutting = 55}
TOOLTABLE.entity = "gms_hatchet7r"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.icon = "vgui/tools/mithril_hatchet_r.png"
TOOLTABLE.category = "woodcutting-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Hatchet (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 65"
TOOLTABLE.uselevel = { woodcutting = 65}
TOOLTABLE.entity = "gms_hatchet8r"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.icon = "vgui/tools/platinum_hatchet_r.png"
TOOLTABLE.category = "woodcutting-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Hatchet (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_ehatchetr"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.icon = "vgui/tools/enchanted_hatchet_r.png"
TOOLTABLE.category = "woodcutting-ruby"
Menu_RegisterTool( TOOLTABLE )

-------------------------------
------woodcutting-diamond------
-------------------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Stone Hatchet (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_hatchet1d"
TOOLTABLE.color = Vector(.6, .6, .6)
TOOLTABLE.icon = "vgui/tools/stone_hatchet_d.png"
TOOLTABLE.category = "woodcutting-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Hatchet (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_hatchet2d"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.icon = "vgui/tools/iron_hatchet_d.png"
TOOLTABLE.category = "woodcutting-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Hatchet (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 15"
TOOLTABLE.uselevel = { woodcutting = 15}
TOOLTABLE.entity = "gms_hatchet3d"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.icon = "vgui/tools/steel_hatchet_d.png"
TOOLTABLE.category = "woodcutting-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Hatchet (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 25"
TOOLTABLE.uselevel = { woodcutting = 25}
TOOLTABLE.entity = "gms_hatchet4d"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.icon = "vgui/tools/silver_hatchet_d.png"
TOOLTABLE.category = "woodcutting-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Hatchet (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 35"
TOOLTABLE.uselevel = { woodcutting = 35}
TOOLTABLE.entity = "gms_hatchet5d"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.icon = "vgui/tools/trinium_hatchet_d.png"
TOOLTABLE.category = "woodcutting-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Hatchet (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 45"
TOOLTABLE.uselevel = { woodcutting = 45}
TOOLTABLE.entity = "gms_hatchet6d"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.icon = "vgui/tools/naquadah_hatchet_d.png"
TOOLTABLE.category = "woodcutting-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Hatchet (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 55"
TOOLTABLE.uselevel = { woodcutting = 55}
TOOLTABLE.entity = "gms_hatchet7d"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.icon = "vgui/tools/mithril_hatchet_d.png"
TOOLTABLE.category = "woodcutting-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Hatchet (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 65"
TOOLTABLE.uselevel = { woodcutting = 65}
TOOLTABLE.entity = "gms_hatchet8d"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.icon = "vgui/tools/platinum_hatchet_d.png"
TOOLTABLE.category = "woodcutting-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Hatchet (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_ehatchetd"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.icon = "vgui/tools/enchanted_hatchet_d.png"
TOOLTABLE.category = "woodcutting-diamond"
Menu_RegisterTool( TOOLTABLE )




---------------------------
------mining-sapphire------
---------------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Stone Pickaxe (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_pickaxe1s"
TOOLTABLE.color = Vector(.6, .6, .6)
TOOLTABLE.icon = "vgui/tools/stone_pickaxe_s.png"
TOOLTABLE.category = "mining-sapphire"
Menu_RegisterTool( TOOLTABLE )


TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Pickaxe (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_pickaxe2s"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.icon = "vgui/tools/iron_pickaxe_s.png"
TOOLTABLE.category = "mining-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Pickaxe (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Mine Ore\nRequired Mining Lvl: 15"
TOOLTABLE.uselevel = { mining = 15}
TOOLTABLE.entity = "gms_pickaxe3s"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.icon = "vgui/tools/steel_pickaxe_s.png"
TOOLTABLE.category = "mining-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Pickaxe (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Mine Ore\nRequired Mining Lvl: 25"
TOOLTABLE.uselevel = { mining = 25}
TOOLTABLE.entity = "gms_pickaxe4s"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.icon = "vgui/tools/silver_pickaxe_s.png"
TOOLTABLE.category = "mining-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Pickaxe (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Mine Ore\nRequired Mining Lvl: 35"
TOOLTABLE.uselevel = { mining = 35}
TOOLTABLE.entity = "gms_pickaxe5s"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.icon = "vgui/tools/trinium_pickaxe_s.png"
TOOLTABLE.category = "mining-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Pickaxe (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Mine Ore\nRequired Mining Lvl: 45"
TOOLTABLE.uselevel = { mining = 45}
TOOLTABLE.entity = "gms_pickaxe6s"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.icon = "vgui/tools/naquadah_pickaxe_s.png"
TOOLTABLE.category = "mining-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Pickaxe (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Mine Ore\nRequired Mining Lvl: 55"
TOOLTABLE.uselevel = { mining = 55}
TOOLTABLE.entity = "gms_pickaxe7s"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.icon = "vgui/tools/mithril_pickaxe_s.png"
TOOLTABLE.category = "mining-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Pickaxe (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Mine Ore\nRequired Mining Lvl: 65"
TOOLTABLE.uselevel = { mining = 65}
TOOLTABLE.entity = "gms_pickaxe8s"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.icon = "vgui/tools/platinum_pickaxe_s.png"
TOOLTABLE.category = "mining-sapphire"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Pickaxe (s)"
TOOLTABLE.description = "This tool has the sapphire enchantment\nSometimes will earn you more experience\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_epickaxes"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.icon = "vgui/tools/enchanted_pickaxe_s.png"
TOOLTABLE.category = "mining-sapphire"
Menu_RegisterTool( TOOLTABLE )

--------------------------
------mining-emerald------
--------------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Stone Pickaxe (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_pickaxe1e"
TOOLTABLE.color = Vector(.6, .6, .6)
TOOLTABLE.icon = "vgui/tools/stone_pickaxe_e.png"
TOOLTABLE.category = "mining-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Pickaxe (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_pickaxe2e"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.icon = "vgui/tools/iron_pickaxe_e.png"
TOOLTABLE.category = "mining-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Pickaxe (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Mine Ore\nRequired Mining Lvl: 15"
TOOLTABLE.uselevel = { mining = 15}
TOOLTABLE.entity = "gms_pickaxe3e"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.icon = "vgui/tools/steel_pickaxe_e.png"
TOOLTABLE.category = "mining-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Pickaxe (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Mine Ore\nRequired Mining Lvl: 25"
TOOLTABLE.uselevel = { mining = 25}
TOOLTABLE.entity = "gms_pickaxe4e"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.icon = "vgui/tools/silver_pickaxe_e.png"
TOOLTABLE.category = "mining-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Pickaxe (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Mine Ore\nRequired Mining Lvl: 35"
TOOLTABLE.uselevel = { mining = 35}
TOOLTABLE.entity = "gms_pickaxe5e"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.icon = "vgui/tools/trinium_pickaxe_e.png"
TOOLTABLE.category = "mining-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Pickaxe (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Mine Ore\nRequired Mining Lvl: 45"
TOOLTABLE.uselevel = { mining = 45}
TOOLTABLE.entity = "gms_pickaxe6e"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.icon = "vgui/tools/naquadah_pickaxe_e.png"
TOOLTABLE.category = "mining-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Pickaxe (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Mine Ore\nRequired Mining Lvl: 55"
TOOLTABLE.uselevel = { mining = 55}
TOOLTABLE.entity = "gms_pickaxe7e"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.icon = "vgui/tools/mithril_pickaxe_e.png"
TOOLTABLE.category = "mining-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Pickaxe (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Mine Ore\nRequired Mining Lvl: 65"
TOOLTABLE.uselevel = { mining = 65}
TOOLTABLE.entity = "gms_pickaxe8e"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.icon = "vgui/tools/platinum_pickaxe_e.png"
TOOLTABLE.category = "mining-emerald"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Pickaxe (e)"
TOOLTABLE.description = "This tool has the emerald enchantment\nOccasionally will be faster\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_epickaxee"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.icon = "vgui/tools/enchanted_pickaxe_e.png"
TOOLTABLE.category = "mining-emerald"
Menu_RegisterTool( TOOLTABLE )

-----------------------
------mining-ruby------
-----------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Stone Pickaxe (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_pickaxe1r"
TOOLTABLE.color = Vector(.6, .6, .6)
TOOLTABLE.icon = "vgui/tools/stone_pickaxe_r.png"
TOOLTABLE.category = "mining-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Pickaxe (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_pickaxe2r"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.icon = "vgui/tools/iron_pickaxe_r.png"
TOOLTABLE.category = "mining-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Pickaxe (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Mine Ore\nRequired Mining Lvl: 15"
TOOLTABLE.uselevel = { mining = 15}
TOOLTABLE.entity = "gms_pickaxe3r"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.icon = "vgui/tools/steel_pickaxe_r.png"
TOOLTABLE.category = "mining-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Pickaxe (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Mine Ore\nRequired Mining Lvl: 25"
TOOLTABLE.uselevel = { mining = 25}
TOOLTABLE.entity = "gms_pickaxe4r"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.icon = "vgui/tools/silver_pickaxe_r.png"
TOOLTABLE.category = "mining-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Pickaxe (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Mine Ore\nRequired Mining Lvl: 35"
TOOLTABLE.uselevel = { mining = 35}
TOOLTABLE.entity = "gms_pickaxe5r"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.icon = "vgui/tools/trinium_pickaxe_r.png"
TOOLTABLE.category = "mining-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Pickaxe (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Mine Ore\nRequired Mining Lvl: 45"
TOOLTABLE.uselevel = { mining = 45}
TOOLTABLE.entity = "gms_pickaxe6r"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.icon = "vgui/tools/naquadah_pickaxe_r.png"
TOOLTABLE.category = "mining-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Pickaxe (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Mine Ore\nRequired Mining Lvl: 55"
TOOLTABLE.uselevel = { mining = 55}
TOOLTABLE.entity = "gms_pickaxe7r"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.icon = "vgui/tools/mithril_pickaxe_r.png"
TOOLTABLE.category = "mining-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Pickaxe (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Mine Ore\nRequired Mining Lvl: 65"
TOOLTABLE.uselevel = { mining = 65}
TOOLTABLE.entity = "gms_pickaxe8r"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.icon = "vgui/tools/platinum_pickaxe_r.png"
TOOLTABLE.category = "mining-ruby"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Pickaxe (r)"
TOOLTABLE.description = "This tool has the ruby enchantment\nSometimes you'll receive twice the drops\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.entity = "gms_epickaxer"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.icon = "vgui/tools/enchanted_pickaxe_r.png"
TOOLTABLE.category = "mining-ruby"
Menu_RegisterTool( TOOLTABLE )


--------------------------
------mining-diamond------
--------------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Stone Pickaxe (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_pickaxe1d"
TOOLTABLE.color = Vector(.6, .6, .6)
TOOLTABLE.icon = "vgui/tools/stone_pickaxe_d.png"
TOOLTABLE.category = "mining-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Iron Pickaxe (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_pickaxe2d"
TOOLTABLE.color = Vector(.45, .3, .3)
TOOLTABLE.icon = "vgui/tools/iron_pickaxe_d.png"
TOOLTABLE.category = "mining-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Steel Pickaxe (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Mine Ore\nRequired Mining Lvl: 15"
TOOLTABLE.uselevel = { mining = 15}
TOOLTABLE.entity = "gms_pickaxe3d"
TOOLTABLE.color = Vector(.6, .6, .8)
TOOLTABLE.icon = "vgui/tools/steel_pickaxe_d.png"
TOOLTABLE.category = "mining-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Silver Pickaxe (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Mine Ore\nRequired Mining Lvl: 25"
TOOLTABLE.uselevel = { mining = 25}
TOOLTABLE.entity = "gms_pickaxe4d"
TOOLTABLE.color = Vector(1, 1, 1)
TOOLTABLE.icon = "vgui/tools/silver_pickaxe_d.png"
TOOLTABLE.category = "mining-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Trinium Pickaxe (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Mine Ore\nRequired Mining Lvl: 35"
TOOLTABLE.uselevel = { mining = 35}
TOOLTABLE.entity = "gms_pickaxe5d"
TOOLTABLE.color = Vector(.1, .3, .1)
TOOLTABLE.icon = "vgui/tools/trinium_pickaxe_d.png"
TOOLTABLE.category = "mining-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Naquadah Pickaxe (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Mine Ore\nRequired Mining Lvl: 45"
TOOLTABLE.uselevel = { mining = 45}
TOOLTABLE.entity = "gms_pickaxe6d"
TOOLTABLE.color = Vector(.3, .1, .1)
TOOLTABLE.icon = "vgui/tools/naquadah_pickaxe_d.png"
TOOLTABLE.category = "mining-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Mithril Pickaxe (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Mine Ore\nRequired Mining Lvl: 55"
TOOLTABLE.uselevel = { mining = 55}
TOOLTABLE.entity = "gms_pickaxe7d"
TOOLTABLE.color = Vector(.1, .1, .4)
TOOLTABLE.icon = "vgui/tools/mithril_pickaxe_d.png"
TOOLTABLE.category = "mining-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Platinum Pickaxe (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Mine Ore\nRequired Mining Lvl: 65"
TOOLTABLE.uselevel = { mining = 65}
TOOLTABLE.entity = "gms_pickaxe8d"
TOOLTABLE.color = Vector(.8, .8, .8)
TOOLTABLE.icon = "vgui/tools/platinum_pickaxe_d.png"
TOOLTABLE.category = "mining-diamond"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Enchanted Pickaxe (d)"
TOOLTABLE.description = "This tool has the diamond enchantment\nFinding rare items is a little easier!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_epickaxed"
TOOLTABLE.color = Vector(.6, .1, .6)
TOOLTABLE.icon = "vgui/tools/enchanted_pickaxe_d.png"
TOOLTABLE.category = "mining-diamond"
Menu_RegisterTool( TOOLTABLE )



--------------
-----boss-----
--------------

TOOLTABLE = {}
TOOLTABLE.model = "models/world_hatchet/world_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Boss Hatchet"
TOOLTABLE.description = "Very powerful tree cutting tool!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_bosshatchet"
TOOLTABLE.color = Vector(.2, .9, .2)
TOOLTABLE.icon = "vgui/tools/boss_hatchet.png"
TOOLTABLE.category = "boss"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Boss Pickaxe"
TOOLTABLE.description = "Very powerful mining tool!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_bosspickaxe"
TOOLTABLE.color = Vector(.2, .9, .2)
TOOLTABLE.icon = "vgui/tools/boss_pickaxe.png"
TOOLTABLE.category = "boss"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/rods/c_boss_rod/c_boss_rod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Boss Rod"
TOOLTABLE.description = "Very powerful combat weapon!\nPrimary: Attack\nRequired Combat Lvl: 35"
TOOLTABLE.uselevel = { combat = 35}
TOOLTABLE.entity = "weapon_bossmelee"
TOOLTABLE.icon = "vgui/tools/boss_melee.png"
TOOLTABLE.category = "boss"
Menu_RegisterTool( TOOLTABLE )

--------------
-----Void-----
--------------

TOOLTABLE = {}
TOOLTABLE.model = "models/c_void_hatchet/c_void_hatchet.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Void Hatchet"
TOOLTABLE.description = "Very powerful tree cutting tool!\nPrimary: Chop Tree\nRequired Woodcutting Lvl: 1"
TOOLTABLE.uselevel = { woodcutting = 1}
TOOLTABLE.entity = "gms_voidhatchet"
TOOLTABLE.color = Vector(0, 0, 0)
TOOLTABLE.icon = "vgui/tools/void_hatchet.png"
TOOLTABLE.category = "void"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Void Pickaxe"
TOOLTABLE.description = "Very powerful mining tool!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_voidpickaxe"
TOOLTABLE.color = Vector(0, 0, 0)
TOOLTABLE.icon = "vgui/tools/void_pickaxe.png"
TOOLTABLE.category = "void"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/fishingrod.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Void Fishing Rod"
TOOLTABLE.description = "Very powerful fishing tool!\nPrimary: Fish\nRequired Fishing Lvl: 1"
TOOLTABLE.uselevel = { fishing = 1}
TOOLTABLE.entity = "gms_voidfishingrod"
TOOLTABLE.icon = "vgui/tools/void_rod.png"
TOOLTABLE.color = Vector(0, 0, 0)
TOOLTABLE.category = "void"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/devonjones/stranded/hoe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Void Hoe"
TOOLTABLE.description = "Very powerful farming tool!\nPrimary: Forage/Harvest\nRequired Farming Lvl: 1"
TOOLTABLE.uselevel = { farming = 1}
TOOLTABLE.entity = "gms_voidhoe"
TOOLTABLE.icon = "vgui/tools/void_hoe.png"
TOOLTABLE.color = Vector(0, 0, 0)
TOOLTABLE.category = "void"
Menu_RegisterTool( TOOLTABLE )

------------------
-----Meteoric-----
------------------

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Meteoric Pickaxe"
TOOLTABLE.description = "Very powerful mining tool!\nPrimary: Mine Ore\nRequired Mining Lvl: 1"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_mpickaxe"
TOOLTABLE.color = Vector(1, .5, 0)
TOOLTABLE.icon = "vgui/tools/meteoric_pickaxe.png"
TOOLTABLE.category = "meteoric"
Menu_RegisterTool( TOOLTABLE )

TOOLTABLE = {}
TOOLTABLE.model = "models/c_pickaxe/c_pickaxe.mdl"
TOOLTABLE.skin = 1
TOOLTABLE.title = "Refined Meteoric Pick"
TOOLTABLE.description = "Very powerful mining tool!\nPrimary: Mine Ore\nRequired Mining Lvl: 1\nUnbreakable!"
TOOLTABLE.uselevel = { mining = 1}
TOOLTABLE.entity = "gms_rmpickaxe"
TOOLTABLE.color = Vector(0.8, .4, 0)
TOOLTABLE.icon = "vgui/tools/meteoric_pickaxe.png"
TOOLTABLE.category = "meteoric"
Menu_RegisterTool( TOOLTABLE )