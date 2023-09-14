hook.Add("Initialize", "SpawnGateEntsOnInit", function()
	SGS.Gates = SGS.Gates or {}
	for _, world in pairs(GAMEMODE.Worlds.tblWorlds) do
		if not world.Gates then continue end

		for id, info in pairs(world.Gates) do
			SGS.Gates[id] = info
			SGS.Gates[id].World = world
			SGS.Gates[id].Name = SGS.Gates[id].Name or world.Name

			if SERVER then
				SGS.Gates:SpawnGate(id, world, info)
			end
		end
	end
end )