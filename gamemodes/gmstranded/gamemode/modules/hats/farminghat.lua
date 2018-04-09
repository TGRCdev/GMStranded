local hatname = "farminghat"
local hat = {
	model="models/workshop/player/items/all_class/fall2013_hong_kong_cone/fall2013_hong_kong_cone_demo.mdl", 
	offsets={
["models/player/group01/female_01.mdl"] = { pos=Vector(0.419668,-0.122521,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/female_02.mdl"] = { pos=Vector(0.730778,-0.122521,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/female_03.mdl"] = { pos=Vector(0.730778,-0.122521,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/female_04.mdl"] = { pos=Vector(0.409221,0.240671,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/female_05.mdl"] = { pos=Vector(0.887255,0.240671,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/female_06.mdl"] = { pos=Vector(0.249876,0.240671,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/male_01.mdl"] = { pos=Vector(1.533313,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/male_02.mdl"] = { pos=Vector(0.882364,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/male_03.mdl"] = { pos=Vector(1.537236,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/male_04.mdl"] = { pos=Vector(1.537236,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/male_05.mdl"] = { pos=Vector(1.040629,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/male_06.mdl"] = { pos=Vector(1.505013,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/male_07.mdl"] = { pos=Vector(1.182406,0.358786,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/male_08.mdl"] = { pos=Vector(1.182406,0.358786,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group01/male_09.mdl"] = { pos=Vector(1.506977,0.358786,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/female_01.mdl"] = { pos=Vector(0.419668,-0.122521,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/female_02.mdl"] = { pos=Vector(0.730778,-0.122521,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/female_03.mdl"] = { pos=Vector(0.730778,-0.122521,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/female_04.mdl"] = { pos=Vector(0.409221,0.240671,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/female_05.mdl"] = { pos=Vector(0.887255,0.240671,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/female_06.mdl"] = { pos=Vector(0.249876,0.240671,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/male_01.mdl"] = { pos=Vector(1.533313,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/male_02.mdl"] = { pos=Vector(0.882364,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/male_03.mdl"] = { pos=Vector(1.537236,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/male_04.mdl"] = { pos=Vector(1.537236,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/male_05.mdl"] = { pos=Vector(1.040629,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/male_06.mdl"] = { pos=Vector(1.505013,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/male_07.mdl"] = { pos=Vector(1.182406,0.358786,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/male_08.mdl"] = { pos=Vector(1.182406,0.358786,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03/male_09.mdl"] = { pos=Vector(1.506977,0.358786,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/female_01.mdl"] = { pos=Vector(0.419668,-0.122521,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/female_02.mdl"] = { pos=Vector(0.730778,-0.122521,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/female_03.mdl"] = { pos=Vector(0.730778,-0.122521,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/female_04.mdl"] = { pos=Vector(0.409221,0.240671,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/female_05.mdl"] = { pos=Vector(0.887255,0.240671,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/female_06.mdl"] = { pos=Vector(0.249876,0.240671,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/male_01.mdl"] = { pos=Vector(1.533313,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/male_02.mdl"] = { pos=Vector(0.882364,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/male_03.mdl"] = { pos=Vector(1.537236,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/male_04.mdl"] = { pos=Vector(1.537236,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/male_05.mdl"] = { pos=Vector(1.040629,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/male_06.mdl"] = { pos=Vector(1.505013,0.724927,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/male_07.mdl"] = { pos=Vector(1.182406,0.358786,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/male_08.mdl"] = { pos=Vector(1.182406,0.358786,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/group03m/male_09.mdl"] = { pos=Vector(1.506977,0.358786,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/hostage/hostage_01.mdl"] = { pos=Vector(1.510955,0.358786,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/hostage/hostage_02.mdl"] = { pos=Vector(1.344725,0.599487,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/hostage/hostage_03.mdl"] = { pos=Vector(1.343721,-0.108406,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/hostage/hostage_04.mdl"] = { pos=Vector(0.507551,0.125210,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/alyx.mdl"] = { pos=Vector(0.842019,-1.033308,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/breen.mdl"] = { pos=Vector(0.842019,-1.033308,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/eli.mdl"] = { pos=Vector(1.173489,-0.460969,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/gman_high.mdl"] = { pos=Vector(2.537833,-0.460969,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/kleiner.mdl"] = { pos=Vector(1.314670,-0.230097,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/monk.mdl"] = { pos=Vector(1.314670,-0.230097,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/mossman.mdl"] = { pos=Vector(0.927221,-0.693956,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/mossman_arctic.mdl"] = { pos=Vector(1.097933,-0.693956,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/arctic.mdl"] = { pos=Vector(2.417231,0.459154,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/guerilla.mdl"] = { pos=Vector(2.417231,0.105089,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/leet.mdl"] = { pos=Vector(3.171706,0.222640,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/phoenix.mdl"] = { pos=Vector(2.596663,0.457004,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
["models/player/combine_soldier.mdl"] = { pos=Vector(-1.677786,-1.706430,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.500000,1.500000,1.500000), bone="ValveBiped.Bip01_Head1" },
["models/player/combine_soldier_prisonguard.mdl"] = { pos=Vector(-1.677786,-1.706430,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.500000,1.500000,1.500000), bone="ValveBiped.Bip01_Head1" },
["models/player/combine_super_soldier.mdl"] = { pos=Vector(-1.677786,-1.706430,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.500000,1.500000,1.500000), bone="ValveBiped.Bip01_Head1" },
["models/player/police.mdl"] = { pos=Vector(-3.407033,-0.641783,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.500000,1.500000,1.500000), bone="ValveBiped.Bip01_Head1" },
["models/player/police_fem.mdl"] = { pos=Vector(-3.407033,-0.641783,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.500000,1.500000,1.500000), bone="ValveBiped.Bip01_Head1" },
["models/player/gasmask.mdl"] = { pos=Vector(-0.337215,-0.159994,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.500000,1.500000,1.500000), bone="ValveBiped.Bip01_Head1" },
["models/player/riot.mdl"] = { pos=Vector(-0.337215,-0.159994,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.500000,1.500000,1.500000), bone="ValveBiped.Bip01_Head1" },
["models/player/swat.mdl"] = { pos=Vector(-0.337215,-0.159994,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.500000,1.500000,1.500000), bone="ValveBiped.Bip01_Head1" },
["models/player/urban.mdl"] = { pos=Vector(-0.337215,-0.159994,0.000000), ang=Angle(-83.746384,0.000000,-90.000000), scale=Vector(1.500000,1.500000,1.500000), bone="ValveBiped.Bip01_Head1" },
["models/crow.mdl"] = { pos=Vector(0.685696,-0.362715,0.000000), ang=Angle(20.856714,0.000000,-90.000000), scale=Vector(0.200000,0.200000,0.200000), bone="Crow.Head" },
["models/vortigaunt.mdl"] = { pos=Vector(1.070377,-1.928045,0.000000), ang=Angle(-16.633694,0.000000,90.000000), scale=Vector(1.200000,1.200000,1.200000), bone="ValveBiped.head" },
	}
}

RegisterHatSetting( hatname, hat )