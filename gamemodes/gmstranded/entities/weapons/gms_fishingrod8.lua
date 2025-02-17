AddCSLuaFile()
SWEP.Base = "custom_base"
SWEP.HoldType = "melee"
SWEP.ViewModelFOV = 60
SWEP.ViewModelFlip = false
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/c_crowbar.mdl"
SWEP.WorldModel = "models/weapons/c_crowbar.mdl"
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-9.117, -0.71, -2.198), angle = Angle(0, 0, 0) }
}

SWEP.VElements = {
	["rod_model"] = { type = "Model", model = "models/devonjones/stranded/fishingrod.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.969, 1.554, 1.337), angle = Angle(180, -145.528, 0), size = Vector(0.903, 0.903, 0.903), color = Color(255 * 0.8, 255 * 0.8, 255 * 0.8, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["rod_model"] = { type = "Model", model = "models/devonjones/stranded/fishingrod.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.509, 1.241, 1.026), angle = Angle(-173.644, 84.558, 5.593), size = Vector(1.019, 1.019, 1.019), color = Color(255 * 0.8, 255 * 0.8, 255 * 0.8, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

/*---------------------------------------------------------
	PrimaryAttack
---------------------------------------------------------*/
function SWEP:PrimaryAttack()
	self:GetOwner():SetAnimation( PLAYER_ATTACK1 )
	self:SendWeaponAnim( ACT_VM_MISSCENTER )
	if IsFirstTimePredicted() then
		self:GetOwner():SetAnimation( PLAYER_ATTACK1 )
	end
    self:SetNextPrimaryFire(CurTime() + 0.1)
	if CLIENT then return end
	if self:GetOwner():GetLevel("fishing") < 65 then
		self:GetOwner():SendMessage("This tool requires fishing level 65 or higher.", 60, Color(255, 125, 0, 255))
		return
	end

	SGS_Fish_Start( self:GetOwner(), 1.2, 3.8 )
end

function SWEP:SecondaryAttack()
end