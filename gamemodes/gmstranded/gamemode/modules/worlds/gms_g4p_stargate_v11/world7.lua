local world = {}
world.Name		= "Island World"
world.SkyPos 	= 3325
world.Bounds	= {
	[1] = {
		Min = Vector( 1860, 1895, 1400 ),
		Max = Vector( 16353, 16358, 3600 )
	},
}
world.Gravity		= 1.0
world.ZombieSpawns	= true
world.Entities	= {
}
world.Gates = {
	islands = {
		Position = Vector ( 2910.052734, 10751.789063, 2008.031250 )
	}
}
world.Events = {
	sailors = {
		boat = {
			pos = Vector ( 3465.018311, 13636.764648, 1863.747803 ),
			angles = Angle ( 0, -90, 0 )
		},
		sailor = {
			name = "Patchy",
			pos = Vector ( 3468.070557, 13602.458984, 1850.060669 ),
			angles = Angle ( 0, -90, 0 )
		}
	}
}
world.SkyObjects = {
	{
		ClassName = "CPlanet", --Class name, this one is a planet
		BodyName = "Moon1", --Name of the planet
		SurfaceTexture = "planets/moon_1", --Texture of the planet surface
		Radius = 0.5, --Radius of the planet
		Color = Color( 255, 255, 255, 255 ), --Color of the object
		AxisTilt = Angle( 22.5, -90, 0 ),
		AngleOverride = Angle( 0, 90, 0 ), --Force planet to a static angle

		--Clouds & Atmo
		CloudTexture = "gamey/planets/planet_clouds01", --Texture of the cloud layer
		HasAtmosphere = false, --Draws the glow effect (cheap atmo)
		AtmoColor = Color( 255, 255, 255, 255 ), --Color of the atmo glow
		AtmoScale = 2.5, --Scale of the glow effect

		HasClouds = false, --Draws the cloud layer
		CloudScale = 1.005, --Scale of the cloud layer
		CloudColor = Color( 255, 255, 255, 255 ), --Color of the cloud layer
		CloudRotation = Angle( 0, 0, 0 ), --Rotation speed of the cloud layer

		Orbit = { --Table of data about the planet's orbit in the sky
			Radius = 10, --Distance from the planet to the world center
			Inclination = -1.746, --Tilt of the orbit in the sky : radians
			RotationR = 245, -- : angles
			RotationY = 0, -- : angles
			ParentName = nil, --String of the parent body name to orbit around, nil for 0 0 0
		},
		--Day = { --Table of data about the planet's day cycle (rotation)
		--	Duration = 1440 *0.5,
		--	RetrogradeRotation = false, --Does the planet spin backwards?
		--},
		Lighting = { --Table of data about the lighting the planet has
			Origin = Vector( 0 ), --Where the light is in the sky
			ParentIsLight = false, --Should the light origin be the parent pos?
			Color = Color( 240, 220, 110, 255 ),  --The color of the light cast on the planet
		},
	},
}

--[[ World Weather ]]--
world.Weather = {
	Current = nil,
	RandWeatherTime = { min = 120, max = 420 },
	WeatherChangeChance = 10,

	Types = { 1, 1, 1, 3, 3 },
}

function world:Think()
	if SERVER then
		if not self.Weather.StopTime then
			self.Weather.StopTime = CurTime() +math.random( self.Weather.RandWeatherTime.min, self.Weather.RandWeatherTime.max )
		end

		if CurTime() > self.Weather.StopTime then --weather status update
			if self.Weather.Current ~= nil then --stop this status
				self.Weather.Current = nil
			elseif math.random( 1, self.Weather.WeatherChangeChance ) == 1 then --pick a type and start it
				self.Weather.Current = table.Random( self.Weather.Types )
			end

			self.Weather.StartTime = CurTime()
			self.Weather.Duration = math.random( self.Weather.RandWeatherTime.min, self.Weather.RandWeatherTime.max )
			self.Weather.StopTime = self.Weather.StartTime +self.Weather.Duration

			GAMEMODE.Worlds:BroadcastWeatherStatus( nil, self.Name, self.Weather.Current, self.Weather.StartTime, self.Weather.StopTime )
			hook.Call( "SGS_WorldWeatherChanged", GAMEMODE, self, self.Weather.Current )
		end
	end
end

GM.Worlds:RegisterWorld( world )