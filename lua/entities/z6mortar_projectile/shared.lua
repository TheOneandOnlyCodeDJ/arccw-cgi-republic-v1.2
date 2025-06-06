ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Fuel Rod Projectile"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/items/ar2_grenade.mdl"
ENT.FuseTime = 7
ENT.ArmTime = 0
ENT.ImpactFuse = false

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
		ParticleEffectAttach( "astw2_halo_ce_fuel_rod_trail", PATTACH_POINT_FOLLOW, self, 0 )
		-- util.SpriteTrail( self, 0, Color(255,255,255,200), false, 16, 4, 0.3, 0.01, "effects/halo_ce/shadow_beam_contrail" )
		-- util.SpriteTrail( self, 0, Color(125,255,45,200), false, 24, 4, 0.16, 0.01, "effects/halo_ce/c_gun_turret_contrail" )
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
		phys:SetMass(1)
            phys:SetBuoyancyRatio(0)
        end

        self.kt = CurTime() + self.FuseTime
        self.at = CurTime() + self.ArmTime
			self.bt = CurTime() + 1
	self.motorsound = CreateSound( self, "halo/combat_evolved/weapons/plasma_grenade_plasma_projectile_plas_grenlp1.wav")

    end
	if CLIENT then
	ParticleEffectAttach( "astw2_halo_ce_fuel_rod_trail", PATTACH_POINT_FOLLOW, self, 0 )
	end
end

function ENT:OnRemove()
    if SERVER then
        if self.motorsound:IsPlaying() then self.motorsound:Stop() end
    end
end

function ENT:Arm()
    if SERVER then
        self.motorsound:Play()
    end
end

function ENT:PhysicsCollide(data, physobj)
if SERVER then
		if data.Speed > 25 then
           self:Detonate()
		end
		end
	if self.at <= CurTime() and self.ImpactFuse then
            self:Detonate()


        end
		local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )
        util.Effect( "StunstickImpact", effectdata)
end


function ENT:ClientThink()
	
	do --Projectile Simulating Inclination Angles
		self:SetAngles( self:GetVelocity():Angle() + Angle(90,0,-90) )	
	end
	
     
    return 0.3
end

function ENT:Think()
    if SERVER then self:NextThink( self:ServerThink() or 0.3 ) end
    if CLIENT then self:SetNextClientThink( self:ClientThink() or 0.3 ) end
    return true
end


function ENT:ServerThink()

        if CurTime() >= self.at then
            local targets = ents.FindInSphere(self:GetPos(), 16)
            for _, k in pairs(targets) do
                if k:IsPlayer() or k:IsNPC() then
                    if self:Visible( k ) and k:Health() > 0 then
                        self:Detonate()
                    end
                elseif (k:IsValid() and scripted_ents.IsBasedOn( k:GetClass(), "base_nextbot" )) then
                    self:Detonate()
                end
            end
        end

        if CurTime() >= self.kt then
            self:Detonate()
        end
    return 0.2
end


function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
          ParticleEffect( "astw2_halo_2_fuel_rod_explosion", self:GetPos(), self:GetAngles() )
	self:EmitSound( "halo/combat_evolved/weapons/fuelrod_expl_" .. math.random(1,3) .. ".ogg", 100, 100, 1, CHAN_WEAPON )
	util.ScreenShake(self:GetPos(),5000,100,0.5,1024)
        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

        util.BlastDamage(self, attacker, self:GetPos(), 250, 125)

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        -- self:DrawModel()


    end
end