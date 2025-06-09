AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "arc9_nade_base"
ENT.PrintName = "Stun Grenade"
ENT.Spawnable = false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE
ENT.Model = "models/arccw/kraken/sw/explosives/world/w_grenade_base.mdl"
ENT.PhysBoxSize = false
ENT.SphereSize = true
ENT.PhysMat = "grenade"
ENT.LifeTime = 1.5
ENT.Radius = 250
ENT.SmokeTrail = true

local BLUR_DURATION = 15
local FREEZE_DURATION = 7 -- freeze for 7 seconds
local BaseClass = baseclass.Get(ENT.Base)

local function isCowerSupportedForNPC(npc)
    for _, a in pairs(npc:GetSequenceList()) do
        if (npc:GetSequenceActivity(npc:LookupSequence(a)) == ACT_COWER) then
            return true
        end
    end

    return false
end

local lethalToNpcs = {
"npc_barnacle","npc_crow","npc_pigeon","npc_seagull","npc_zombie","npc_fastzombie","npc_zombie_torso","npc_zombine","npc_headcrab","npc_headcrab_black","npc_headcrab_fast","npc_headcrab_fast","npc_lambdaplayer",}

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )
		
        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        util.PrecacheSound("kraken/explosives/shock/beep.wav")
        self:EmitSound("kraken/explosives/shock/beep.wav", 90, 100, 1, CHAN_AUTO)

        self.SpawnTime = CurTime()

        timer.Simple(0, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
		sound.EmitHint(SOUND_DANGER, self:GetPos(), 200, 8, nil) --make shit run away (nil owner so even rebels run)
    end
	ParticleEffectAttach("grenadetrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

function ENT:PhysicsCollide(data)
   if data.Speed > 100 then
      local tgt = data.HitEntity

      if IsValid(tgt) and (self.NextHit or 0) < CurTime() then
         self.NextHit = CurTime() + 0.1
         local dmginfo = DamageInfo()
         dmginfo:SetDamageType(DMG_CLUB)
         dmginfo:SetDamage(5)
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
end
		
if data.Speed > 100 then
    self:EmitSound(Sound("kraken/explosives/bounce/bounce" .. math.random(1,16) .. ".wav"), 75, 100, 0.6, CHAN_AUTO)
    elseif data.Speed > 75 then
        self:EmitSound(Sound("kraken/explosives/bounce/bounce" .. math.random(1,16) .. ".wav"), 75, 100, 0.6, CHAN_AUTO)
    elseif data.Speed > 50 then
        self:EmitSound(Sound("kraken/explosives/bounce/bounce" .. math.random(1,16) .. ".wav"), 75, 100, 0.6, CHAN_AUTO)
end

end

function ENT:Detonate()
    if not self:IsValid() then return end
    if self.Defused then return end
    if self:WaterLevel() > 0 then
        local tr = util.TraceLine({
            start = self:GetPos(),
            endpos = self:GetPos() + Vector(0, 0, 1) * 1024,
            filter = self,
        })
        local tr2 = util.TraceLine({
            start = tr.HitPos,
            endpos = self:GetPos(),
            filter = self,
            mask = MASK_WATER
        })
        ParticleEffect("explosion_water", tr2.HitPos + Vector(0, 0, 8), Angle(0, 0, 0), nil)

        self:EmitSound("weapons/underwater_explode3.wav", 100)
    else
        ParticleEffect("Generic_explo_flash", self:GetPos(), Angle(0, 0, 0), nil)
        self:EmitSound("ArcCW_Kraken.Explosives.Explosion", 120, 100, 1, CHAN_AUTO)
    end
	
    util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), self.Radius, 4)
    util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
    local owner = self:GetOwner()

    for _, e in pairs(ents.FindInSphere(self:GetPos(), self.Radius)) do
        if ((e:IsPlayer() || e:IsNPC()) && !e:IsLineOfSightClear(self:GetPos())) then
            continue
        end
        if (e:IsNPC()) then
            e:StartEngineTask(89, 0) --task_sound_pain

            if (isCowerSupportedForNPC(e)) then
                e:SetSchedule(SCHED_COWER)
            else
                if (table.HasValue(lethalToNpcs, e:GetClass())) then
                    e:TakeDamage(e:Health(), self:GetOwner(), self || nil)
                end
            end
            continue
        end
    end
	
    for _, ply in pairs(ents.FindInSphere(self:GetPos(), self.Radius)) do
        if (ply:IsPlayer()) then
            self:ApplyBlurEffect(ply)
        end
    end
	
    if SERVER then
        local dir = self.HitVelocity or self:GetVelocity()

        if self.Boost <= 0 then
            dir = Vector(0, 0, -1)
        end

        self:FireBullets({
            Attacker = self,
            Damage = 0,
            Tracer = 0,
            Distance = 256,
            Dir = dir,
            Src = self:GetPos(),
            Callback = function(att, tr, dmg)
                if self.Scorch then
                    util.Decal("Scorch", tr.StartPos, tr.HitPos - (tr.HitNormal * 16), self)
                end
            end
        })
    end

    sound.EmitHint(SOUND_DANGER, self:GetPos(), self.Radius, 6, nil) --needed for task (make them blinded for a little longer)
    self:Remove()
end

function ENT:ApplyBlurEffect(ply)
    if SERVER then
        if ply:IsPlayer() and not ply.StunFrozen then
            ply:SetMoveType(MOVETYPE_NONE)
            ply.StunFrozen = true

            -- Lock view angles
            local frozenAngles = ply:EyeAngles()
            ply.StunFrozenAngles = frozenAngles

            -- Prevent looking and shooting
            hook.Add("StartCommand", "StunLockView_" .. ply:EntIndex(), function(p, cmd)
                if p == ply and ply.StunFrozen then
                    cmd:SetViewAngles(ply.StunFrozenAngles)
                    cmd:RemoveKey(IN_ATTACK)
                    cmd:RemoveKey(IN_ATTACK2)
                    cmd:ClearMovement() -- Prevent any movement input
                end
            end)

            timer.Simple(FREEZE_DURATION, function()
                if IsValid(ply) then
                    ply:SetMoveType(MOVETYPE_WALK)
                    ply.StunFrozen = false
                end
                hook.Remove("StartCommand", "StunLockView_" .. ply:EntIndex())
            end)
        end

        -- Disorient for the full blur duration
        net.Start("BlurEffect")
        net.WriteFloat(BLUR_DURATION)
        net.Send(ply)
    end
end

if CLIENT then

    local colorModify = {
        ["$pp_colour_addr"] = 0,
        ["$pp_colour_addg"] = 0,
        ["$pp_colour_addb"] = 0,
        ["$pp_colour_brightness"] = 0,
        ["$pp_colour_contrast"] = 1,
        ["$pp_colour_colour"] = 1,
        ["$pp_colour_mulr"] = 0,
        ["$pp_colour_mulg"] = 0,
        ["$pp_colour_mulb"] = 0
    }

    net.Receive("BlurEffect", function()
        local duration = net.ReadFloat()
        local endTime = CurTime() + duration
        
        hook.Add("RenderScreenspaceEffects", "BlurEffect", function()
            local timeLeft = endTime - CurTime()
            if timeLeft <= 0 then
                hook.Remove("RenderScreenspaceEffects", "BlurEffect")
                return
            end
            
            local fraction = timeLeft / duration
            DrawMotionBlur(0.4, fraction, 0.05)
            -- Apply color modify
            local colorFraction = fraction * 1 -- Adjust this multiplier to control color intensity
            colorModify["$pp_colour_brightness"] = -colorFraction * 0.5 -- Darken the screen
            colorModify["$pp_colour_colour"] = 1 - colorFraction * 0.1 -- Reduce color saturation
            DrawColorModify(colorModify)
			
            -- Apply bloom effect
            local bloomParams = {
                darken = 0.5 * fraction,
                multiply = 0.5 * fraction,
                sizex = 4,
                sizey = 4,
                passes = 2,
                colour = 2 * fraction,
            }
            DrawBloom(bloomParams.darken, bloomParams.multiply, bloomParams.sizex, bloomParams.sizey, bloomParams.passes, bloomParams.colour, 1, 1, 1)
        end)
    end)
end

if SERVER then
    util.AddNetworkString("BlurEffect")
end