local hatname = "goggleshat"
local hat = {
	model="models/player/items/spy/hwn_spy_misc1.mdl", 
	offsets={
		["models/player/group01/female_01.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/female_02.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/female_03.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/female_04.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/female_05.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/female_06.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/male_01.mdl"] = { pos=Vector(-73.779144,2.328011,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/male_02.mdl"] = { pos=Vector(-74.450340,2.328011,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/male_03.mdl"] = { pos=Vector(-74.090721,2.328011,-0.242083), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/male_04.mdl"] = { pos=Vector(-73.612190,2.328011,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/male_05.mdl"] = { pos=Vector(-74.174637,1.354612,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/male_06.mdl"] = { pos=Vector(-73.526680,2.179886,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/male_07.mdl"] = { pos=Vector(-74.180199,1.222102,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/male_08.mdl"] = { pos=Vector(-74.029648,1.283626,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group01/male_09.mdl"] = { pos=Vector(-73.915482,1.560026,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/female_01.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/female_02.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/female_03.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/female_04.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/female_05.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/female_06.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/male_01.mdl"] = { pos=Vector(-73.779144,2.328011,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/male_02.mdl"] = { pos=Vector(-74.450340,2.328011,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/male_03.mdl"] = { pos=Vector(-74.090721,2.328011,-0.242083), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/male_04.mdl"] = { pos=Vector(-73.612190,2.328011,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/male_05.mdl"] = { pos=Vector(-74.174637,1.354612,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/male_06.mdl"] = { pos=Vector(-73.526680,2.179886,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/male_07.mdl"] = { pos=Vector(-74.180199,1.222102,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/male_08.mdl"] = { pos=Vector(-74.029648,1.283626,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03/male_09.mdl"] = { pos=Vector(-73.915482,1.560026,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/female_01.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/female_02.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/female_03.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/female_04.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/female_05.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/female_06.mdl"] = { pos=Vector(-75.361244,2.103799,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/male_01.mdl"] = { pos=Vector(-73.779144,2.328011,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/male_02.mdl"] = { pos=Vector(-74.450340,2.328011,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/male_03.mdl"] = { pos=Vector(-74.090721,2.328011,-0.242083), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/male_04.mdl"] = { pos=Vector(-73.612190,2.328011,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/male_05.mdl"] = { pos=Vector(-74.174637,1.354612,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/male_06.mdl"] = { pos=Vector(-73.526680,2.179886,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/male_07.mdl"] = { pos=Vector(-74.180199,1.222102,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/male_08.mdl"] = { pos=Vector(-74.029648,1.283626,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/group03m/male_09.mdl"] = { pos=Vector(-73.915482,1.560026,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/hostage/hostage_01.mdl"] = { pos=Vector(-73.915482,1.560026,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/hostage/hostage_02.mdl"] = { pos=Vector(-73.806335,2.103858,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/hostage/hostage_03.mdl"] = { pos=Vector(-74.116798,1.566770,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/hostage/hostage_04.mdl"] = { pos=Vector(-74.083893,1.914821,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/alyx.mdl"] = { pos=Vector(-74.913208,1.534959,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/barney.mdl"] = { pos=Vector(-74.444748,2.043017,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/breen.mdl"] = { pos=Vector(-74.649658,1.436656,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/eli.mdl"] = { pos=Vector(-74.327805,1.436656,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/gman_high.mdl"] = { pos=Vector(-73.364517,1.543444,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/kleiner.mdl"] = { pos=Vector(-74.209946,1.543444,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/monk.mdl"] = { pos=Vector(-73.764030,1.329081,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/mossman.mdl"] = { pos=Vector(-74.910721,1.644271,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/mossman_arctic.mdl"] = { pos=Vector(-74.910721,1.644271,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/arctic.mdl"] = { pos=Vector(-72.984390,2.271996,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/guerilla.mdl"] = { pos=Vector(-72.984390,2.271996,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/leet.mdl"] = { pos=Vector(-72.614052,2.385491,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/phoenix.mdl"] = { pos=Vector(-73.020691,2.950513,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/combine_soldier.mdl"] = { pos=Vector(-73.547531,2.012628,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/combine_soldier_prisonguard.mdl"] = { pos=Vector(-73.547531,2.012628,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/combine_super_soldier.mdl"] = { pos=Vector(-72.937828,2.012628,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/police.mdl"] = { pos=Vector(-74.644775,4.229500,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/police_fem.mdl"] = { pos=Vector(-75.099091,2.874073,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/gasmask.mdl"] = { pos=Vector(-72.711349,3.631023,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/riot.mdl"] = { pos=Vector(-73.295708,2.924269,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/swat.mdl"] = { pos=Vector(-73.295708,3.034109,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
		["models/player/urban.mdl"] = { pos=Vector(-73.295708,2.835265,0.000000), ang=Angle(-90.000000,0.000000,-90.000000), scale=Vector(1.000000,1.000000,1.000000), bone="ValveBiped.Bip01_Head1" },
	}
}

RegisterHatSetting( hatname, hat )