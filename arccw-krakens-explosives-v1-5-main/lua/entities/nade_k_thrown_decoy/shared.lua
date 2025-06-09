-- Made by Matsilagi

ENT.Type = "anim"
ENT.PrintName			= "Decoy Grenade"
ENT.Author			= ""
ENT.Contact			= ""
ENT.Purpose			= ""
ENT.Instructions			= ""
ENT.DoNotDuplicate = true 
ENT.DisableDuplicator = true
ENT.Zombies = {}
ENT.VJExists = false
ENT.HasShot = false

/*---------------------------------------------------------
OnRemove
---------------------------------------------------------*/
function ENT:OnRemove()
end

/*---------------------------------------------------------
PhysicsUpdate
---------------------------------------------------------*/
function ENT:PhysicsUpdate()
end

/*---------------------------------------------------------
PhysicsCollide
---------------------------------------------------------*/

function ENT:PhysicsCollide(data,phys)
	if data.Speed > 60 then

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

		self.Entity:EmitSound(Sound("kraken/explosives/bounce/bounce" .. math.random(1,16) .. ".wav"))
	
		local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal)*0.25
		phys:ApplyForceCenter(impulse)
	end
	
end
