-- Made by Matsilagi

AddCSLuaFile()
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Spawnable = false

function ENT:Draw()
self:DrawModel()
end

function ENT:Initialize()
	if SERVER then
		self:SetModel( "models/arccw/kraken/sw/explosives/world/w_thermalimploder.mdl" )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetCollisionGroup( COLLISION_GROUP_NONE )
		self:DrawShadow( false )
	end
	self:EmitSound("kraken/explosives/incgrenade/beep.wav")
	self.ActiveTimer = CurTime() + 1.5
	self.IgniteEnd = 0
	self.IgniteEndTimer = CurTime()
	self.IgniteStage = 0
	self.IgniteStageTimer = CurTime()
	ParticleEffectAttach("incgrenade_thrown_trail",PATTACH_POINT_FOLLOW,self,1)
	self:PhysicsInitSphere( 8 )
end

function ENT:PhysicsCollide( data,phys )
	if SERVER and self.ActiveTimer > CurTime() || data.Speed >= 150 then
		self:EmitSound(Sound("kraken/explosives/bounce/bounce" .. math.random(1,16) .. ".wav"))
	end
	local ang = data.HitNormal:Angle()
	ang.p = math.abs( ang.p )
	ang.y = math.abs( ang.y )
	ang.r = math.abs( ang.r )
	
	if ang.p > 90 or ang.p < 60 then
		self:EmitSound(Sound("kraken/explosives/bounce/bounce" .. math.random(1,16) .. ".wav"))

		local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal)*0.25
		phys:ApplyForceCenter(impulse)
	else
		if SERVER then
			local molotovfire = ents.Create( "fire_spawned2" )
			molotovfire:SetPos( self:GetPos() )
			molotovfire:SetOwner( self.Owner )
			molotovfire:Spawn()
			SafeRemoveEntityDelayed(molotovfire, 8)
			
			local molotovfire = ents.Create( "fire_spawned1" )
			local pos = self:GetPos()
			molotovfire:SetPos( self:GetPos() )
			molotovfire:SetOwner( self.Owner )
			molotovfire:SetCreator( self )
			molotovfire:Spawn()
			SafeRemoveEntityDelayed(molotovfire, 8)
			
			self:SetMoveType( MOVETYPE_NONE )
			self:SetSolid( SOLID_NONE )
			self:PhysicsInit( SOLID_NONE )
			self:SetCollisionGroup( COLLISION_GROUP_NONE )
			self:SetRenderMode( RENDERMODE_TRANSALPHA )
			self:SetColor( Color( 255, 255, 255, 0 ) )
			self:DrawShadow( false )
			self:StopParticles()
		end
		self:EmitSound("ArcCW_Kraken.Explosives.IncendiaryExpl")
		self.IgniteEnd = 1
		self.IgniteEndTimer = CurTime() + 7
		self.IgniteStage = 1
		self.IgniteStageTimer = CurTime() + 0.1
	end
	SafeRemoveEntityDelayed(self, 8)
end