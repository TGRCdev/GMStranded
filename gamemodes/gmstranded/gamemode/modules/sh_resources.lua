SGS.Resources = {}
function Resource_Register( resource )
	SGS.Resources[resource.id] = resource
end

function SGS_LookupResource( ent )

	if SGS.Resources[ ent ] then
		return SGS.Resources[ ent ]
	end
	return nil

end

RESOURCE = {}
RESOURCE.id = "tree"
RESOURCE.name = "Regular Tree"
RESOURCE.model = "models/props/de_inferno/tree_small.mdl"
RESOURCE.rgives = "wood"
RESOURCE.rname = "Wood"
RESOURCE.rlvl = 1
RESOURCE.amt_min = 10
RESOURCE.amt_max = 20
RESOURCE.respawn_min = 60
RESOURCE.respawn_max = 120
RESOURCE.baselen = 2
RESOURCE.xp = 12
RESOURCE.seedtype = "tree_seed"
RESOURCE.stat = "woodcutting1"
RESOURCE.seed_rarity = 15
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "oak_tree"
RESOURCE.name = "Oak Tree"
RESOURCE.model = "models/props/de_inferno/tree_large.mdl"
RESOURCE.rgives = "oak_wood"
RESOURCE.rname = "Oak Wood"
RESOURCE.rlvl = 15
RESOURCE.amt_min = 15
RESOURCE.amt_max = 25
RESOURCE.respawn_min = 120
RESOURCE.respawn_max = 180
RESOURCE.baselen = 2
RESOURCE.xp = 19
RESOURCE.seedtype = "oak_seed"
RESOURCE.stat = "woodcutting_oak"
RESOURCE.seed_rarity = 30
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "maple_tree"
RESOURCE.name = "Maple Tree"
RESOURCE.model = "models/props/CS_militia/tree_large_militia.mdl"
RESOURCE.rgives = "maple_wood"
RESOURCE.rname = "Maple Wood"
RESOURCE.rlvl = 30
RESOURCE.amt_min = 10
RESOURCE.amt_max = 20
RESOURCE.respawn_min = 180
RESOURCE.respawn_max = 240
RESOURCE.baselen = 3
RESOURCE.xp = 34
RESOURCE.seedtype = "maple_seed"
RESOURCE.stat = "woodcutting_maple"
RESOURCE.seed_rarity = 45
RESOURCE.can_find_enchanted = true
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "pine_tree"
RESOURCE.name = "Pine Tree"
RESOURCE.model = "models/props_foliage/tree_pine04.mdl"
RESOURCE.rgives = "pine_wood"
RESOURCE.rname = "Pine Wood"
RESOURCE.rlvl = 45
RESOURCE.amt_min = 8
RESOURCE.amt_max = 16
RESOURCE.respawn_min = 180
RESOURCE.respawn_max = 300
RESOURCE.baselen = 3
RESOURCE.xp = 50
RESOURCE.seedtype = "pine_seed"
RESOURCE.stat = "woodcutting_pine"
RESOURCE.seed_rarity = 60
RESOURCE.can_find_enchanted = true
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "yew_tree"
RESOURCE.name = "Yew Tree"
RESOURCE.model = "models/props_foliage/tree_deciduous_01a.mdl"
RESOURCE.rgives = "yew_wood"
RESOURCE.rname = "Yew Wood"
RESOURCE.rlvl = 55
RESOURCE.amt_min = 5
RESOURCE.amt_max = 12
RESOURCE.respawn_min = 240
RESOURCE.respawn_max = 330
RESOURCE.baselen = 4
RESOURCE.xp = 75
RESOURCE.seedtype = "yew_seed"
RESOURCE.stat = "woodcutting_yew"
RESOURCE.seed_rarity = 75
RESOURCE.can_find_enchanted = true
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "buckeye_tree"
RESOURCE.name = "Buckeye Tree"
RESOURCE.model = "models/props_foliage/mall_tree_medium01.mdl"
RESOURCE.rgives = "buckeye_wood"
RESOURCE.rname = "Buckeye Wood"
RESOURCE.rlvl = 65
RESOURCE.amt_min = 3
RESOURCE.amt_max = 8
RESOURCE.respawn_min = 240
RESOURCE.respawn_max = 420
RESOURCE.baselen = 5
RESOURCE.xp = 120
RESOURCE.seedtype = "buckeye_seed"
RESOURCE.stat = "woodcutting_buckeye"
RESOURCE.seed_rarity = 90
RESOURCE.can_find_enchanted = true
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "palm_tree"
RESOURCE.name = "Palm Tree"
RESOURCE.model = "models/props_foliage/tree_palm_dust01.mdl"
RESOURCE.rgives = "palm_wood"
RESOURCE.rname = "Palm Wood"
RESOURCE.rlvl = 72
RESOURCE.amt_min = 1
RESOURCE.amt_max = 4
RESOURCE.respawn_min = 360
RESOURCE.respawn_max = 520
RESOURCE.baselen = 6
RESOURCE.xp = 210
RESOURCE.seedtype = "palm_seed"
RESOURCE.stat = "woodcutting_palm"
RESOURCE.seed_rarity = 105
RESOURCE.can_find_enchanted = true
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "stone"
RESOURCE.name = "Stone Deposit"
RESOURCE.rname = "Stone"
RESOURCE.model = "models/ore_nodes/stone_node/stone_node.mdl"
RESOURCE.stat = "mining1"
RESOURCE.rlvl = 1
RESOURCE.amt_min = 50
RESOURCE.amt_max = 90
RESOURCE.respawn_min = 60
RESOURCE.respawn_max = 120
RESOURCE.baselen = 2
RESOURCE.xp = 15
RESOURCE.fail_chance = 30
RESOURCE.rgives = "stone"
RESOURCE.autosmelt_type = "gms_glass"
RESOURCE.depleted_color = Color(40, 40, 40, 200)
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "iron"
RESOURCE.name = "Iron Deposit"
RESOURCE.rname = "Iron Ore"
RESOURCE.rcolor = Color(119, 75, 0, 255)
RESOURCE.model = "models/ore_nodes/iron_node/iron_node.mdl"
RESOURCE.stat = "mining2"
RESOURCE.rlvl = 15
RESOURCE.amt_min = 12
RESOURCE.amt_max = 18
RESOURCE.respawn_min = 90
RESOURCE.respawn_max = 150
RESOURCE.baselen = 3
RESOURCE.xp = 30
RESOURCE.fail_chance = 50
RESOURCE.rgives = "iron_ore"
RESOURCE.gem_chance = 1
RESOURCE.autosmelt_type = "iron"
RESOURCE.depleted_color = Color(80, 80, 80, 180)
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "coal"
RESOURCE.name = "Coal Deposit"
RESOURCE.rname = "Coal"
RESOURCE.rcolor = Color(60, 60, 60, 255)
RESOURCE.model = "models/ore_nodes/coal_node/coal_node.mdl"
RESOURCE.stat = "mining3"
RESOURCE.rlvl = 25
RESOURCE.amt_min = 10
RESOURCE.amt_max = 14
RESOURCE.respawn_min = 90
RESOURCE.respawn_max = 210
RESOURCE.baselen = 3.5
RESOURCE.xp = 40
RESOURCE.fail_chance = 60
RESOURCE.rgives = "coal"
RESOURCE.gem_chance = 2
RESOURCE.autosmelt_type = "charcoal"
RESOURCE.depleted_color = Color(70, 70, 70, 180)
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "silver"
RESOURCE.name = "Silver Ore Vein"
RESOURCE.rname = "Silver Ore"
RESOURCE.rcolor = Color(71, 121, 142, 255)
RESOURCE.model = "models/ore_nodes/gold_node/gold_node.mdl"
RESOURCE.stat = "mining4"
RESOURCE.color = Color(114, 192, 248, 255)
RESOURCE.rlvl = 35
RESOURCE.amt_min = 6
RESOURCE.amt_max = 12
RESOURCE.respawn_min = 150
RESOURCE.respawn_max = 270
RESOURCE.baselen = 4
RESOURCE.xp = 50
RESOURCE.fail_chance = 70
RESOURCE.rgives = "silver_ore"
RESOURCE.gem_chance = 3
RESOURCE.autosmelt_type = "silver"
RESOURCE.depleted_color = Color(0, 0, 0, 180)
RESOURCE.can_find_enchanted = true
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "trinium"
RESOURCE.name = "Trinium Ore Vein"
RESOURCE.rname = "Trinium"
RESOURCE.rcolor = Color(0, 255, 0, 255)
RESOURCE.rmat = "models/flesh"
RESOURCE.model = "models/ore_nodes/trin_node/trin_node.mdl"
RESOURCE.stat = "mining5"
RESOURCE.rlvl = 50
RESOURCE.amt_min = 4
RESOURCE.amt_max = 9
RESOURCE.respawn_min = 210
RESOURCE.respawn_max = 330
RESOURCE.baselen = 4.5
RESOURCE.xp = 65
RESOURCE.fail_chance = 80
RESOURCE.rgives = "trinium_ore"
RESOURCE.gem_chance = 4
RESOURCE.autosmelt_type = "trinium"
RESOURCE.depleted_color = Color(20, 20, 20, 255)
RESOURCE.can_find_enchanted = true
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "naquadah"
RESOURCE.name = "Naquadah Ore Vein"
RESOURCE.rname = "Naquadah"
RESOURCE.rcolor = Color(255, 0, 0, 255)
RESOURCE.rmat = "models/flesh"
RESOURCE.model = "models/ore_nodes/naq_node/naq_node.mdl"
RESOURCE.stat = "mining6"
RESOURCE.rlvl = 55
RESOURCE.amt_min = 2
RESOURCE.amt_max = 5
RESOURCE.respawn_min = 210
RESOURCE.respawn_max = 330
RESOURCE.baselen = 4.5
RESOURCE.xp = 90
RESOURCE.fail_chance = 80
RESOURCE.rgives = "naquadah_ore"
RESOURCE.gem_chance = 5
RESOURCE.autosmelt_type = "naquadah"
RESOURCE.depleted_color = Color(0, 0, 0, 180)
RESOURCE.can_find_enchanted = true
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "gold"
RESOURCE.name = "Gold Deposit"
RESOURCE.rname = "Gold Ore"
RESOURCE.rcolor = Color(239, 255, 0,255)
RESOURCE.model = "models/ore_nodes/gold_node/gold_node.mdl"
RESOURCE.stat = "mining11"
RESOURCE.rlvl = 62
RESOURCE.amt_min = 1
RESOURCE.amt_max = 8
RESOURCE.respawn_min = 210
RESOURCE.respawn_max = 330
RESOURCE.baselen = 5
RESOURCE.xp = 140
RESOURCE.fail_chance = 80
RESOURCE.rgives = "gold_ore"
RESOURCE.gem_chance = 6
RESOURCE.autosmelt_type = "gold"
RESOURCE.depleted_color = Color(0, 0, 0, 255)
RESOURCE.can_find_enchanted = true
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "mithril"
RESOURCE.name = "Mithril Ore Vein"
RESOURCE.rname = "Mithril Ore"
RESOURCE.rcolor = Color(0, 100, 255, 255)
RESOURCE.rmat = "models/flesh"
RESOURCE.model = "models/ore_nodes/mith_node/mith_node.mdl"
RESOURCE.stat = "mining10"
RESOURCE.rlvl = 62
RESOURCE.amt_min = 1
RESOURCE.amt_max = 4
RESOURCE.respawn_min = 210
RESOURCE.respawn_max = 330
RESOURCE.baselen = 5
RESOURCE.xp = 140
RESOURCE.fail_chance = 80
RESOURCE.rgives = "mithril_ore"
RESOURCE.gem_chance = 7
RESOURCE.autosmelt_type = "mithril"
RESOURCE.depleted_color = Color(0, 0, 0, 255)
RESOURCE.can_find_enchanted = true
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "platinum"
RESOURCE.name = "Platinum Ore Vein"
RESOURCE.rname = "Platinum Ore"
RESOURCE.model = "models/ore_nodes/gold_node/gold_node.mdl"
RESOURCE.stat = "mining12"
RESOURCE.color = Color(163, 184, 255, 255)
RESOURCE.rlvl = 72
RESOURCE.amt_min = 1
RESOURCE.amt_max = 4
RESOURCE.respawn_min = 280
RESOURCE.respawn_max = 400
RESOURCE.baselen = 6
RESOURCE.xp = 210
RESOURCE.fail_chance = 80
RESOURCE.rgives = "platinum_ore"
RESOURCE.gem_chance = 8
RESOURCE.autosmelt_type = "platinum"
RESOURCE.depleted_color = Color(0, 0, 0, 255)
RESOURCE.can_find_enchanted = true
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.id = "gms_meteornode"
RESOURCE.name = "Meteorite"
RESOURCE.rlvl = 1
Resource_Register( RESOURCE )