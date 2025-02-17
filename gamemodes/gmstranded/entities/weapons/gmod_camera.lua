AddCSLuaFile()

-- Variables that are used on both client and server

SWEP.Author			= ""
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModel		= "models/weapons/v_pistol.mdl"
SWEP.WorldModel		= "models/MaxOfS2D/camera.mdl"

util.PrecacheModel( SWEP.ViewModel )
util.PrecacheModel( SWEP.WorldModel )

SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= true
SWEP.Secondary.Ammo			= "none"

SWEP.ShootSound				= "NPC_CScanner.TakePhoto"

SWEP.PrintName			= "#GMOD_Camera"			
SWEP.Slot				= 5
SWEP.SlotPos			= 1
SWEP.DrawAmmo			= false
SWEP.DrawCrosshair		= false
SWEP.Spawnable			= false
SWEP.AdminSpawnable		= false

if ( SERVER ) then

	SWEP.Weight				= 5
	SWEP.AutoSwitchTo		= false
	SWEP.AutoSwitchFrom		= false

end

if ( CLIENT ) then

	SWEP.WepSelectIcon		= surface.GetTextureID( "vgui/gmod_camera" )

end

--
-- Network/Data Tables
--
function SWEP:SetupDataTables()

	self:NetworkVar( "Float", 0, "Zoom" );
	self:NetworkVar( "Float", 1, "Roll" );

	if ( SERVER ) then
		self:SetZoom( 70 )
		self:SetRoll( 0 )
	end

end



--[[---------------------------------------------------------
   Initialize Stuff
-----------------------------------------------------------]]
function SWEP:Initialize()

	self:SetWeaponHoldType( "camera" )
	
	if CLIENT then
		if SGS.mpanel then SGS.mpanel:Remove() end
	end

end

--[[---------------------------------------------------------
   Remove Stuff
-----------------------------------------------------------]]
function SWEP:OnRemove()

	if CLIENT then
		RunConsoleCommand("sgs_refreshmodelpanel")
	end

end

--[[---------------------------------------------------------
   Precache Stuff
-----------------------------------------------------------]]
function SWEP:Precache()

	util.PrecacheSound( self.ShootSound )

end

--[[---------------------------------------------------------
	Reload does nothing
-----------------------------------------------------------]]
function SWEP:Reload()
	self:SetZoom( self:GetOwner():GetInfoNum( "fov_desired", 70 ) )
	self:SetRoll( 0 )
		
end


--[[---------------------------------------------------------
   The effect when a weapon is fired successfully
-----------------------------------------------------------]]
function SWEP:DoShootEffect()

	self.Weapon:EmitSound( self.ShootSound )
	self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
	self:GetOwner():SetAnimation( PLAYER_ATTACK1 )

	if ( SERVER && !game.SinglePlayer() ) then

		--
		-- Note that the flash effect is only 
		-- shown to other players!
		--

		local vPos = self:GetOwner():GetShootPos()
		local vForward = self:GetOwner():GetAimVector()

		local trace = {}
			trace.start = vPos
			trace.endpos = vPos + vForward * 256
			trace.filter = self:GetOwner()

		tr = util.TraceLine( trace )

		local effectdata = EffectData()
			effectdata:SetOrigin( tr.HitPos )
		util.Effect( "camera_flash", effectdata, true )

	end
	
end

--[[---------------------------------------------------------
	PrimaryAttack
-----------------------------------------------------------]]
function SWEP:PrimaryAttack()

	self:DoShootEffect()
	
	-- If we're multiplayer this can be done totally clientside
	if ( !game.SinglePlayer() && SERVER ) then return end
	if ( CLIENT && !IsFirstTimePredicted() ) then return end
	
	self:GetOwner():ConCommand( "jpeg" )
	
end

--[[---------------------------------------------------------
	SecondaryAttack
-----------------------------------------------------------]]
function SWEP:SecondaryAttack()

	-- Nothing. See Think for zooming.
	
end

--[[---------------------------------------------------------
   
-----------------------------------------------------------]]
function SWEP:Tick()

	local cmd = self:GetOwner():GetCurrentCommand()
	
	local fDelta = 0.05

	self:DoZoomThink( cmd, fDelta )
	self:DoRotateThink( cmd, fDelta )

end

--[[---------------------------------------------------------
   
-----------------------------------------------------------]]
function SWEP:DoZoomThink( cmd, fDelta )

	-- Right held down
	if ( !cmd:KeyDown( IN_ATTACK2 ) ) then return end
	
	self:SetZoom( math.Clamp( self:GetZoom() + cmd:GetMouseY() * 2 * fDelta, 0.1, 175 ) )

end

if ( CLIENT ) then

	-- Don't draw the weapon info on the weapon selection thing
	function SWEP:DrawHUD() end
	function SWEP:PrintWeaponInfo( x, y, alpha ) end

	function SWEP:HUDShouldDraw( name )

		-- So we can change weapons
		if ( name == "CHudWeaponSelection" ) then return true end
		if ( name == "CHudChat" ) then return true end
	
		return false;
	
	end
	
	function SWEP:FreezeMovement()

		-- Don't aim if we're holding the right mouse button
		if ( self:GetOwner():KeyDown( IN_ATTACK2 ) || self:GetOwner():KeyReleased( IN_ATTACK2 ) ) then 
			return true 
		end

		return false
	
	end

	function SWEP:CalcView( ply, origin, angles, fov )

		if ( self:GetRoll() != 0 ) then
			angles.Roll = self:GetRoll()
		end

		return origin, angles, fov
	
	end
	
	function SWEP:AdjustMouseSensitivity()

		if ( self:GetOwner():KeyDown( IN_ATTACK2 )  ) then return 1 end

		return 1 * ( self:GetZoom() / 80 )
	
	end
	
end




--
-- Rotate Think
--
function SWEP:DoRotateThink( cmd, fDelta )

	if ( cmd:KeyDown( IN_ATTACK2 ) ) then

		self:SetRoll( self:GetRoll() + cmd:GetMouseX() * 0.5 * fDelta )
		
	end

end

--
-- TranslateFOV
--
function SWEP:TranslateFOV( current_fov )
	
	return self:GetZoom()

end

--
-- Turn off viewmodel drawing
--
function SWEP:Deploy()

	self:GetOwner():DrawViewModel( false )

end


function SWEP:ShouldDropOnDie() return false end
