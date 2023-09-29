GM.Events = GM.Events or {}
GM.Events.Sailors = GM.Events.Sailors or {}
GM.Events.Sailors.Stock = GM.Events.Stock or {}
local Stock = GM.Events.Sailors.Stock

function Sailors_RegisterShopItem(category, item)
    if not Stock[category] then Stock[category] = {} end
    Stock[category][item.uid] = item
end

-- TODO: Actually set up loot tables and distributions and whatnot
-- This chance system is embarassing

-- Possible item stocks

-- RELICS --

ITEM = {}
ITEM.title = "Mining Relic Lv. 3"
ITEM.uid = "relic1"
ITEM.description = "Gives Mining Experience"
ITEM.cost = 325
ITEM.gives = { mining_relic_3 = 1}
ITEM.material = "vgui/relic_png.png"
ITEM.maxstock = 3
ITEM.chance = 40
Sailors_RegisterShopItem( "relics", ITEM )

ITEM = {}
ITEM.title = "Woodcutting Relic Lv. 3"
ITEM.uid = "relic2"
ITEM.description = "Gives Woodcutting Experience"
ITEM.cost = 325
ITEM.gives = { woodcutting_relic_3 = 1}
ITEM.material = "vgui/relic_png.png"
ITEM.maxstock = 3
ITEM.chance = 40
Sailors_RegisterShopItem( "relics", ITEM )

ITEM = {}
ITEM.title = "Fishing Relic Lv. 3"
ITEM.uid = "relic3"
ITEM.description = "Gives Fishing Experience"
ITEM.cost = 325
ITEM.gives = { fishing_relic_3 = 1}
ITEM.material = "vgui/relic_png.png"
ITEM.maxstock = 3
ITEM.chance = 40
Sailors_RegisterShopItem( "relics", ITEM )

ITEM = {}
ITEM.title = "Farming Relic Lv. 3"
ITEM.uid = "relic4"
ITEM.description = "Gives Farming Experience"
ITEM.cost = 325
ITEM.gives = { farming_relic_3 = 1}
ITEM.material = "vgui/relic_png.png"
ITEM.maxstock = 3
ITEM.chance = 40
Sailors_RegisterShopItem( "relics", ITEM )

ITEM = {}
ITEM.title = "Construction Relic Lv. 3"
ITEM.uid = "relic5"
ITEM.description = "Gives Construction Experience"
ITEM.cost = 325
ITEM.gives = { construction_relic_3 = 1}
ITEM.material = "vgui/relic_png.png"
ITEM.maxstock = 3
ITEM.chance = 40
Sailors_RegisterShopItem( "relics", ITEM )

ITEM = {}
ITEM.title = "Smithing Relic Lv. 3"
ITEM.uid = "relic6"
ITEM.description = "Gives Smithing Experience"
ITEM.cost = 325
ITEM.gives = { smithing_relic_3 = 1}
ITEM.material = "vgui/relic_png.png"
ITEM.maxstock = 3
ITEM.chance = 40
Sailors_RegisterShopItem( "relics", ITEM )

ITEM = {}
ITEM.title = "Cooking Relic Lv. 3"
ITEM.uid = "relic7"
ITEM.description = "Gives Cooking Experience"
ITEM.cost = 325
ITEM.gives = { cooking_relic_3 = 1}
ITEM.material = "vgui/relic_png.png"
ITEM.maxstock = 3
ITEM.chance = 40
Sailors_RegisterShopItem( "relics", ITEM )

ITEM = {}
ITEM.title = "Alchemy Relic Lv. 3"
ITEM.uid = "relic8"
ITEM.description = "Gives Alchemy Experience"
ITEM.cost = 325
ITEM.gives = { alchemy_relic_3 = 1}
ITEM.material = "vgui/relic_png.png"
ITEM.maxstock = 3
ITEM.chance = 40
Sailors_RegisterShopItem( "relics", ITEM )

ITEM = {}
ITEM.title = "Combat Relic Lv. 3"
ITEM.uid = "relic9"
ITEM.description = "Gives Combat Experience"
ITEM.cost = 325
ITEM.gives = { combat_relic_3 = 1}
ITEM.material = "vgui/relic_png.png"
ITEM.maxstock = 3
ITEM.chance = 40
Sailors_RegisterShopItem( "relics", ITEM )

-- RESOURCES

ITEM = {}
ITEM.title = "Enchanted Metal"
ITEM.uid = "enchanted_metal"
ITEM.description = "It shines with unbridled potential."
ITEM.cost = 125
ITEM.gives = { enchanted_metal = 1 }
ITEM.material = "vgui/SGS/test1.vmt"
ITEM.maxstock = 7
Sailors_RegisterShopItem( "resources", ITEM )

ITEM = {}
ITEM.title = "Enchanted Wood"
ITEM.uid = "enchanted_wood"
ITEM.description = "It glows with unbridled potential."
ITEM.cost = 125
ITEM.gives = { enchanted_wood = 1 }
ITEM.material = "vgui/SGS/test1.vmt"
ITEM.maxstock = 7
Sailors_RegisterShopItem( "resources", ITEM )