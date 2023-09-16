AddCSLuaFile()
SWEP.ViewModelFOV		= 55
SWEP.ViewModelFlip		= false
SWEP.CSMuzzleFlashes	= false
SWEP.UseHands = true
SWEP.ViewModel			= SGS.proplist["pickaxe_v"]
SWEP.WorldModel			= SGS.proplist["pickaxe_w"]

local SwingSound = Sound( "weapons/slam/throw.wav" )

/*---------------------------------------------------------
	Initialize
---------------------------------------------------------*/
SWEP.HoldType = "melee"
function SWEP:Initialize()
	self:SetWeaponHoldType( self.HoldType )
end

/*---------------------------------------------------------
	Deploy
---------------------------------------------------------*/
function SWEP:Deploy()
	self:SendWeaponAnim(ACT_VM_DRAW)
	return true
end


/*---------------------------------------------------------
	PrimaryAttack
---------------------------------------------------------*/
function SWEP:PrimaryAttack()
	local ply = self:GetOwner()
    
	self:GetOwner():SetAnimation( PLAYER_ATTACK1 )
	local anim = "swing"
	local vm = self:GetOwner():GetViewModel()
	vm:SendViewModelMatchingSequence( vm:LookupSequence( anim ) )
	self:EmitSound( SwingSound )
	
	if CLIENT then return end
	
	self.Weapon:SetNextPrimaryFire(CurTime() + 0.5)
	local trace = ply:TraceFromEyes(100)
	if not IsValid(trace.Entity) then
		ply:SendMessage("You need to swing this at a rock!", 60, Color(255, 0, 0, 255))
		self.Weapon:SetNextPrimaryFire(CurTime() + 0.8)
		return
	end
	if not ( table.HasValue(SGS.rocks, trace.Entity:GetClass() ) ) then
		ply:SendMessage("You need to swing this at a rock!", 60, Color(255, 0, 0, 255))
		self.Weapon:SetNextPrimaryFire(CurTime() + 0.8)
		return
	end
	for k, v in pairs( SGS_ReverseToolLookup(self:GetClass() ).uselevel ) do
		if ply:GetLevel( k ) < v then
			ply:SendMessage("This tool requires level " .. tostring(v) .. " " .. Cap(k) .. " to use!", 60, Color(255, 0, 0, 255))
			return
		end
	end
	
	local modi = 1.2
	local timemodi = 0.2

	SGS_Mine( ply, trace.Entity, timemodi, modi, "e", nil )
end

/*---------------------------------------------------------
	SecondaryAttack
---------------------------------------------------------*/
function SWEP:SecondaryAttack()
end