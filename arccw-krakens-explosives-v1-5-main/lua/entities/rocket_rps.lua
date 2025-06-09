AddCSLuaFile()

ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.PrintName 			= "RPG-7 Round"
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Model = "models/items/ar2_grenade.mdl"
ENT.Ticks = 0
ENT.FuseTime = 4.5

if SERVER then

    function ENT:Initialize()
        local pb_vert = 1
        local pb_hor = 1
        self:SetModel(self.Model)
        self:PhysicsInitBox( Vector(-pb_vert,-pb_hor,-pb_hor), Vector(pb_vert,pb_hor,pb_hor) )
    
        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:EnableGravity(false)
        end
    
        self.SpawnTime = CurTime()
        self.motorsound = CreateSound( self, "kraken/launchers/rps/move_rpapa7_proj_flame_cls.ogg")
        self.motorsound:Play()
    
        timer.Simple(0.1, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
    end
    
    function ENT:Think()
        if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
            self:Detonate()
        end
    end
    
    function ENT:OnRemove()
        self.motorsound:Stop()
    end
    
    end
    
    function ENT:Think()
        if SERVER then
            local phys = self:GetPhysicsObject()
            phys:ApplyForceCenter( self:GetAngles():Forward() * 500 )
    
            if self.SpawnTime + self.FuseTime <= CurTime() then
                self:Detonate()
            end
        else
            if self.Ticks % 5 == 0 then
                local emitter = ParticleEmitter(self:GetPos())
    
                if !self:IsValid() or self:WaterLevel() > 2 then return end
                if !IsValid(emitter) then return end
    
                local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
                smoke:SetVelocity( VectorRand() * 25 )
                smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(-20, -25)) )
                smoke:SetDieTime( math.Rand(1.5, 2.0) )
                smoke:SetStartAlpha( 255 )
                smoke:SetEndAlpha( 0 )
                smoke:SetStartSize( 0 )
                smoke:SetEndSize( 100 )
                smoke:SetRoll( math.Rand(-180, 180) )
                smoke:SetRollDelta( math.Rand(-0.2,0.2) )
                smoke:SetColor( 20, 20, 20 )
                smoke:SetAirResistance( 5 )
                smoke:SetPos( self:GetPos() )
                smoke:SetLighting( false )
                emitter:Finish()
            end
    
            self.Ticks = self.Ticks + 1
        end
    end
    
    function ENT:Detonate()
        if !self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )
    
        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
            self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
        else
            util.Effect( "Explosion", effectdata)
            self:EmitSound("ArcCW_Kraken.Explosives.RocketImpact")
        end
    
        local attacker = self
    
        if self.Owner:IsValid() then
            attacker = self.Owner
        end
    
        util.BlastDamage(self, attacker, self:GetPos(), 550, 110)
    
        self:FireBullets({
            Attacker = attacker,
            Damage = 400,
            Tracer = 0,
            Src = src,
            Dir = dir,
            HullSize = 16,
            Distance = 128,
            IgnoreEntity = self,
            Callback = function(atk, btr, dmginfo)
                if IsValid(btr.Entity) and btr.Entity.LVS then
                    dmginfo:ScaleDamage(5)
                    dmginfo:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST)
                    dmginfo:SetDamageForce(self:GetForward() * 20000)
                end
            end,
        })

        local fx = EffectData()
        fx:SetOrigin(self:GetPos())
        fx:SetStart(self:GetPos() + self:GetUp())
        fx:SetRadius(256)
        fx:SetEntity(self)
        if self:WaterLevel() > 0 then
            util.Effect("WaterSurfaceExplosion", fx)
        else
            util.Effect("cod2019_grenade_explosion", fx)
            self:EmitSound("ArcCW_Kraken.Explosives.RocketImpact")
        end
        
        for i, e in pairs(ents.FindInSphere(self:GetPos(), 32)) do
            if (e:GetClass() == "npc_strider") then
                e:Fire("Explode")
            end 
        end
    
        self:Remove()
    end
    
    function ENT:PhysicsCollide(colData, collider)
        self:Detonate()
    end
    
    function ENT:Draw()
        cam.Start3D() -- Start the 3D function so we can draw onto the screen.
            render.SetMaterial( Material("effects/blueflare1") ) -- Tell render what material we want, in this case the flash from the gravgun
            render.DrawSprite( self:GetPos(), math.random(100, 200), math.random(100, 200), Color(255, 175, 150) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
        cam.End3D()
    end