AddCSLuaFile()

ENT.Base = "arc9_gsr_plantable"
ENT.PrintName = "Sequencer Charge"

ENT.Model = "models/arccw/kraken/sw/explosives/world/w_detonite.mdl"
ENT.WeaponClass = "arc9_go_nade_landmines"
ENT.Bury = 2
ENT.DetectionRange = 70
ENT.ArmDelay = 3


function ENT:OnPlant()
    self:EmitSound("kraken/shared/beeps3.wav", 75, 100, 1, CHAN_AUTO)
end

function ENT:Think()
    if SERVER and self:GetArmed() then
        for _, i in ipairs(ents.FindInSphere(self:GetPos(), self.DetectionRange)) do
            if IsValid(i) and ((i:IsPlayer() and i:GetVelocity():Length2DSqr() >= 22500) or i:IsNPC() or i:IsNextBot()) then
                self:Detonate()
                break
            end
        end

        self:NextThink(CurTime() + 0.15)
        return true
    end
end

function ENT:Detonate()
    if SERVER then
        if not self:IsValid() then return end
        local pos = self:GetPos() + self:GetUp() * 6
        local effectdata = EffectData()
        effectdata:SetOrigin(pos)

        if self:WaterLevel() >= 1 then
            util.Effect("WaterSurfaceExplosion", effectdata)
            self:EmitSound("weapons/underwater_explode3.wav", 120, 100, 1, CHAN_AUTO)
        else
            ParticleEffect("explosion_grenade", pos, self:GetAngles(), nil)
            local spos = pos

            local trs = util.TraceLine({
                start = spos + Vector(0, 0, 64),
                endpos = spos + Vector(0, 0, -32),
                filter = self
            })

            util.Decal("Scorch", trs.HitPos + trs.HitNormal, trs.HitPos - trs.HitNormal)
            self:EmitSound("ArcCW_Kraken.Explosives.Explosion", 120, 100, 1, CHAN_AUTO)
        end

        local oldowner = self.Attacker or self:GetOwner()
        if not IsValid(oldowner) then
            oldowner = self
        end

        local d = Lerp(self:GetUp():Dot(Vector(0, 0, 1)), 0.25, 1)

        self:SetOwner(NULL)
        util.BlastDamage(oldowner, oldowner, pos, 128, 300 * d)
        util.BlastDamage(oldowner, oldowner, pos, 256, 150 * d)

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
        local pos = self:GetPos() + self:GetUp() * 3

        if self:GetArmed() and math.sin(CurTime() * 1) >= 0.75 then
            cam.Start3D() -- Start the 3D function so we can draw onto the screen.
            render.SetMaterial(Material("effects/blueflare1")) -- Tell render what material we want, in this case the flash from the gravgun
            render.DrawSprite(pos, 16, 16, Color(0, 183, 255)) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
            self:EmitSound("kraken/shared/click3.wav", 75, 100, 1, CHAN_AUTO)
            cam.End3D()
        end
    end
end