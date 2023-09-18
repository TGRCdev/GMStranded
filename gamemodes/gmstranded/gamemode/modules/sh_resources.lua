SGS.Resources = {}
function Resource_Register( resource )
	if resource.id then
		SGS.Resources[resource.id] = resource
	else
		SGS.Resources[resource.entity] = resource
	end
end

function SGS_LookupResource( ent )

	if SGS.Resources[ ent ] then
		return SGS.Resources[ ent ]
	end
	return nil

end

RESOURCE = {}
RESOURCE.entity = "gms_tree"
RESOURCE.name = "Regular Tree"
RESOURCE.rlvl = 1
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.entity = "gms_tree2"
RESOURCE.name = "Oak Tree"
RESOURCE.rlvl = 15
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.entity = "gms_tree3"
RESOURCE.name = "Maple Tree"
RESOURCE.rlvl = 30
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.entity = "gms_tree4"
RESOURCE.name = "Pine Tree"
RESOURCE.rlvl = 45
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.entity = "gms_tree5"
RESOURCE.name = "Yew Tree"
RESOURCE.rlvl = 55
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.entity = "gms_tree6"
RESOURCE.name = "Buckeye Tree"
RESOURCE.rlvl = 65
Resource_Register( RESOURCE )

RESOURCE = {}
RESOURCE.entity = "gms_tree7"
RESOURCE.name = "Palm Tree"
RESOURCE.rlvl = 72
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
RESOURCE.entity = "gms_meteornode"
RESOURCE.name = "Meteorite"
RESOURCE.rlvl = 1
Resource_Register( RESOURCE )