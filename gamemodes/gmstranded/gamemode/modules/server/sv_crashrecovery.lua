SGS.CrashRecovery = SGS.CrashRecovery or {}
local hostport = GetConVar("hostport")
function SGS_CrashGenerateReport()

	local entities = ents.GetAll()
	SGS.CrashRecovery = {}

	for _, ent in ipairs(entities) do
		local spp_data = SPropProtection.Props[ent:EntIndex()]
		if spp_data and spp_data.SteamID64 then
			SGS.CrashRecovery[spp_data.SteamID64] = SGS.CrashRecovery[spp_data.SteamID64] or {name = spp_data.Name, props = {}, structures = {}}

			local class = ent:GetClass()

			local ent_table = {
				uid = ent.uid,
				pos = ent:GetPos(),
				ang = ent:GetAngles(),
				steamid = spp_data.SteamID,
				steamid64 = spp_data.SteamID64,
				data = ent.CrashSaveData and ent:CrashSaveData() or nil
			}

			if class == 'gms_prop' then
				table.insert( SGS.CrashRecovery[spp_data.SteamID64]['props'], ent_table )
			elseif table.HasValue(SGS.AllowedPackage, class) or ent.CrashSaveData then
				ent_table.shared = ent:GetNWBool("shared", false)
				ent_table.tribeshared = ent:GetNWBool("tribeshared", false)
				ent_table.class = class
				table.insert( SGS.CrashRecovery[spp_data.SteamID64]['structures'], ent_table )
			end
		end
	end

	file.Write( 'sgstranded/crashrecovery/' .. hostport:GetString() .. '_recoverydata_'..game.GetMap()..'.txt', util.TableToJSON( SGS.CrashRecovery, true ) )
	print("DEBUG: Crash File Generated and Wrote")

end
concommand.Add("sgs_savecrashreport", function(ply, cmd, args)
	if not IsValid( ply ) or ply:IsAdmin() then
		if IsValid( ply ) then
			ply:SendMessage('Generating crash report...',3,Color(255,255,255,255))
		else
			print('Generating crash report...')
		end
		SGS_CrashGenerateReport()
	end
end)

function SGS_LoadCrashFile()
	if file.Exists('sgstranded/crashrecovery/' .. hostport:GetString() .. '_recoverydata_'..game.GetMap()..'.txt', 'DATA') then
		local todecode = file.Read('sgstranded/crashrecovery/' .. hostport:GetString() .. '_recoverydata_'..game.GetMap()..'.txt', 'DATA')
		local tbl = util.JSONToTable( todecode )
		
		SGS.CrashRecovery = tbl
		SGS.CrashRecovery_Loaded = true

		print("DEBUG: Crash File Loaded")
	else
		-- No crash file - start timer
		timer.Create( 'Crash Recovery Time', 300, 0, SGS_CrashGenerateReport )

		print("DEBUG: Crash File NOT Loaded")
	end
end

function SGS_CrashRecoveryInitialSpawn()
	if SGS.CrashRecovery_Loaded then
		-- Crash file existed
		if not SGS.CrashRecovery_Spawned then
			SGS.CrashRecovery_Spawned = true
			timer.Create( 'Crash Recovery Time', 300, 0, SGS_CrashGenerateReport )

			-- Respawn EVERYTHING
			for steamid64, data in pairs(SGS.CrashRecovery) do
				for _, item in pairs(data['props']) do
					local success, err_ent = pcall( SGS_ForcePropSpawn, item.steamid64, item.uid, item.pos, item.ang )
					if not success then
						print('DEBUG: Crash recovery prop spawn failed - ' .. tostring(err_ent))
					else
						SPropProtection.Props[err_ent:EntIndex()] = {
							Ent = err_ent,
							Owner = NULL,
							SteamID = item.steamid,
							SteamID64 = item.steamid64,
							Name = data.name
						}
						err_ent:SetNWString("Owner", data.name)
						err_ent:SetNWEntity("OwnerObj", NULL)
						gamemode.Call("CPPIAssignOwnership", NULL, err_ent)

						if err_ent.OnCrashRecovery then
							err_ent:OnCrashRecovery( item.data )
						end
					end
				end
				
				for _, item in pairs(data['structures']) do
					local success, err_ent = pcall( SGS_ForceStructureSpawn, item.steamid64, item.class, item.pos, item.ang )
					if not success then
						print('DEBUG: Crash recovery structure spawn failed - ' .. tostring(err_ent))
					else
						SPropProtection.Props[err_ent:EntIndex()] = {
							Ent = err_ent,
							Owner = NULL,
							SteamID = item.steamid,
							SteamID64 = item.steamid64,
							Name = data.name
						}
						err_ent:SetNWString("Owner", data.name)
						err_ent:SetNWEntity("OwnerObj", NULL)

						err_ent:SetNWBool("shared", item.shared)

						if item.tribeshared then
							local tribe = GAMEMODE.Tribes:GetSteamIDTribe(item.steamid)
							if tribe then
								err_ent.sharedtribe = tribe
								err_ent:SetNWBool("tribeshared", true)
							else
								print("WARN: " .. data.name .. "'s prop was tribe-shared, but they are not in a tribe?")
								err_ent:SetNWBool("tribeshared", false)
							end
						end

						gamemode.Call("CPPIAssignOwnership", NULL, err_ent)

						if err_ent.OnCrashRecovery then
							err_ent:OnCrashRecovery( item.data )
						end
					end
				end
			end

			timer.Simple( 5, SGS_SendAllDrops )
			print("DEBUG: Crash File Spawned")
		end
	end
end
hook.Add("PlayerInitialSpawn", "SGS_CrashRecoveryInitialSpawn", SGS_CrashRecoveryInitialSpawn )

function SGS_CreateStressTest( ply )

	for i=1, 1000 do
		SGS_ForcePropSpawn( ply, "wood1", ply:GetPos() + Vector(math.random(-50,50),math.random(-50,50),math.random(-50,50)), ply:GetAngles() )
	end
	
end