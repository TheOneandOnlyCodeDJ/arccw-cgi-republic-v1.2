AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "arc9_nade_base"
ENT.PrintName = "C14 Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.CollisionGroup = COLLISION_GROUP_DEBRIS

ENT.Model = "models/arccw/kraken/sw/explosives/world/w_c14.mdl"
ENT.Armed = false

ENT.BlastDamage = {
    [0] = 60,
    [1] = 140,
    [2] = 70,
}

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
        self:SetPhysicsAttacker(self:GetOwner(), 5)
    end
    
    util.PrecacheSound("kraken/shared/beeps4.wav")
    self:EmitSound("kraken/shared/beeps4.wav")
    
end

function ENT:PhysicsCollide(data, physobj)
    local tgt = data.HitEntity
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
    else
        self:Detonate(data.HitEntity)
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
            explode:SetKeyValue( "effect_name", "grenade_final" )
            explode:SetOwner( self.Owner )
            explode:SetPos( self:GetPos() )
            explode:Spawn()
            explode:Activate()
            explode:Fire( "start", "", 0 )
            explode:Fire( "kill", "", 30 )
            --util.Effect("Explosion", effectdata)
            --util.Effect("hl2mmod_explosion_grenade", effectdata)
            self:EmitSound("ArcCW_Kraken.Explosives.Explosion", 120, 100, 1, CHAN_AUTO)
        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

        local hit = false
        
    
        local pos = self:GetPos()

        for _, ent in pairs(ents.FindInSphere(pos, 400)) do
           
            local distSqr = ent:GetPos():DistToSqr(pos)
            local f = 1
            if distSqr > 9216 then -- 96 * 96
                f = Lerp((distSqr - 9216) / (122500 - 9216), 1, 0.25)
            end
            local dmginfo = DamageInfo()
            dmginfo:SetDamageType(DMG_BLAST)
            dmginfo:SetAttacker(attacker)
            dmginfo:SetDamage(125 * f)
            dmginfo:SetDamageForce((ent:WorldSpaceCenter() - pos):GetNormalized() * 9001 * f)
            dmginfo:SetInflictor(self)
            ent:TakeDamageInfo(dmginfo)
        end

        for k, v in pairs(ents.FindInSphere(pos, 400)) do
            if IsValid(v) and (v.LFS or v.LVS) then
                if v.LFS then
					v:StopEngine()
					v:SetShield(0)
					v:SetHP( v:GetHP()/ 4 )
				end
				if v.LVS then
					v:StopEngine()
					v:SetShield(0)
					v:SetHP( v:GetHP()/ 4 )
				end
            end
        end

        self:Remove()
        util.Decal("Scorch", pos, pos - Vector(0, 0, 16))
        util.ScreenShake(self:GetPos(), 25, 4, 1, self.Radius * 4)
    end
end

function ENT:DrawTranslucent()
    self:Draw()
end

function ENT:Draw()
    self:DrawModel()
end