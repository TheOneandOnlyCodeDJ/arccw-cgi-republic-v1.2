AddCSLuaFile()

ENT.Base = "arc9_gsr_plantable"
ENT.PrintName = "Sequencer Charge"

ENT.Model = "models/arccw/kraken/sw/explosives/world/w_sequencer_charge.mdl"
ENT.WeaponClass = "arc9_go_nade_landmines"
ENT.Bury = 3
ENT.DetectionRange = 96
ENT.ArmDelay = 3


function ENT:OnPlant()
    self:EmitSound("kraken/shared/beeps2.wav", 75, 100, 1, CHAN_AUTO)
end

function ENT:Think()
    if SERVER and self:GetArmed() then
        for _, i in ipairs(ents.FindInSphere(self:GetPos(), self.DetectionRange)) do
            if IsValid(i) and ((i:IsPlayer() and i:GetVelocity():Length2DSqr() >= 22500) or i:IsNPC() or i:IsNextBot()) then
                self:Detonate()
                break
            end
        end
        
        for k, v in ipairs(ents.FindInSphere(self:GetPos(), self.DetectionRange)) do
            if IsValid(v) and (v.LFS or v.LVS) then
                if v.LFS then
					v:StopEngine()
					v:SetShield(0)
					v:SetHP( v:GetHP()/10 )
                    self:Detonate()
				end
				if v.LVS then
					v:StopEngine()
					v:SetShield(0)
					v:SetHP( v:GetHP()/10 )
                    self:Detonate()
				end
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
            ParticleEffect("zeala_burst", pos, self:GetAngles(), nil)
            local spos = pos

            local trs = util.TraceLine({
                start = spos + Vector(0, 0, 64),
                endpos = spos + Vector(0, 0, -32),
                filter = self
            })

            util.Decal("Scorch", trs.HitPos + trs.HitNormal, trs.HitPos - trs.HitNormal)
            self:EmitSound("kraken/explosives/seismiccharge/close" .. math.random(1,3) .. ".wav", 120, 100, 1, CHAN_AUTO)
        end

        local oldowner = self.Attacker or self:GetOwner()
        if not IsValid(oldowner) then
            oldowner = self
        end

        util.ScreenShake(self:GetPos(), 25, self.DetectionRange * 20, 7, self.DetectionRange * 20)
        self:EmitSound("ArcCW_Kraken.Explosives.Explosion")

        local d = Lerp(self:GetUp():Dot(Vector(0, 0, 1)), 0.25, 1)

        self:SetOwner(NULL)
        util.BlastDamage(oldowner, oldowner, pos, 650, 1200 * d)
        util.BlastDamage(oldowner, oldowner, pos, 225, 356 * d)

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
        local pos = self:GetPos() + self:GetUp() * 5

        if self:GetArmed() and math.sin(CurTime() * 1) >= 0.75 then
            cam.Start3D() -- Start the 3D function so we can draw onto the screen.
            render.SetMaterial(Material("effects/blueflare1")) -- Tell render what material we want, in this case the flash from the gravgun
            render.DrawSprite(pos, 16, 16, Color(255, 0, 0)) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
            self:EmitSound("kraken/shared/beeps1.wav", 75, 100, 1, CHAN_AUTO)
            cam.End3D()
        end
    end
end