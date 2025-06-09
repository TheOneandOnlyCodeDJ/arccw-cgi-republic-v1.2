AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "arc9_nade_base"
ENT.PrintName = "C-25 Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.CollisionGroup = COLLISION_GROUP_DEBRIS

ENT.Model = "models/arccw/kraken/sw/explosives/world/w_c25.mdl"
ENT.FuseTime = 0.1
ENT.TrailColor = Color(35, 202, 228)
ENT.TrailTexture = "sprites/bluelaser1"

ENT.BlastDamage = {
    [0] = 100,
    [1] = 300,
    [2] = 100,
}

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel(self.Model)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetSkin(self.Skin or 0)

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.SpawnTime = CurTime()
        self:SetPhysicsAttacker(self:GetOwner(), 10)

        util.PrecacheSound("kraken/explosives/thermalimploder/beeps.wav")
        self:EmitSound("kraken/explosives/thermalimploder/beeps.wav", 90, 100, 1, CHAN_AUTO)
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("kraken/explosives/bounce/bounce" .. math.random(1,16) .. ".wav"))

            local tgt = data.HitEntity
            if IsValid(tgt) and not tgt:IsWorld() and (self.NextHit or 0) < CurTime() then
                self.NextHit = CurTime() + 0.1
                local dmginfo = DamageInfo()
                dmginfo:SetDamageType(DMG_GENERIC)
                dmginfo:SetDamage(10)
                dmginfo:SetAttacker(self:GetOwner())
                dmginfo:SetInflictor(self)
                dmginfo:SetDamageForce(data.OurOldVelocity * 0.5)
                tgt:TakeDamageInfo(dmginfo)
                if (IsValid(tgt) and (tgt:IsNPC() or tgt:IsPlayer() or tgt:IsNextBot()) and tgt:Health() <= 0) or (not tgt:IsWorld() and not IsValid(tgt)) or string.find(tgt:GetClass(), "breakable") then
                    local pos, ang, vel = self:GetPos(), self:GetAngles(), data.OurOldVelocity
                    timer.Simple(0, function()
                        if IsValid(self) then
                            self:SetAngles(ang)
                            self:SetPos(pos)
                            self:GetPhysicsObject():SetVelocityInstantaneous(vel)
                        end
                    end)
                end
            end
        elseif data.Speed > 25 then
            self:EmitSound(Sound("kraken/explosives/bounce/bounce" .. math.random(1,16) .. ".wav"))
        end
        if data.Speed < 15 then
            self:SetMoveType(MOVETYPE_NONE)
            self:EmitSound(Sound("kraken/shared/therm_gren_charge.wav"))
        end
    end
end

function ENT:Think()
    if SERVER and CurTime() - self.SpawnTime >= self.FuseTime then
        self:Detonate()
    end
end

function ENT:Detonate()
    if SERVER then
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect("WaterSurfaceExplosion", effectdata)
            self:EmitSound("weapons/underwater_explode3.wav", 120, 100, 1, CHAN_AUTO)
        else
            local explode = ents.Create( "info_particle_system" )
            explode:SetKeyValue( "effect_name", "vpr_nade_blast" )
            explode:SetOwner( self.Owner )
            explode:SetPos( self:GetPos() )
            explode:Spawn()
            explode:Activate()
            explode:Fire( "start", "", 0 )
            explode:Fire( "kill", "", 30 )
            --util.Effect("Explosion", effectdata)
            --util.Effect("hl2mmod_explosion_grenade", effectdata)
            self:EmitSound("kraken/explosives/shared/beeps2.wav", 90, 100, 1, CHAN_AUTO)
            self:EmitSound("ArcCW_Kraken.Explosives.Explosion", 120, 100, 1, CHAN_AUTO)
        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

        local hit = false
        
        local pos = self:GetPos()

        for _, ent in pairs(ents.FindInSphere(pos, 450)) do
           
            local distSqr = ent:GetPos():DistToSqr(pos)
            local f = 1
            if distSqr > 9216 then -- 96 * 96
                f = Lerp((distSqr - 9216) / (122500 - 9216), 1, 0.25)
            end
            local dmginfo = DamageInfo()
            dmginfo:SetDamageType(DMG_BLAST)
            dmginfo:SetAttacker(attacker)
            dmginfo:SetDamage(190 * f)
            dmginfo:SetDamageForce((ent:WorldSpaceCenter() - pos):GetNormalized() * 9001 * f)
            dmginfo:SetInflictor(self)
            ent:TakeDamageInfo(dmginfo)
        end
        self:Remove()
        util.Decal("Scorch", pos, pos - Vector(0, 0, 30))
    end
end

function ENT:DrawTranslucent()
    self:Draw()
end

function ENT:Draw()
    self:DrawModel()
end