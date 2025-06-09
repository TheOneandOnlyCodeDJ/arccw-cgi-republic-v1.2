AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "arc9_nade_base"
ENT.PrintName = "Bacta Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.CollisionGroup = COLLISION_GROUP_DEBRIS

ENT.Model = "models/arccw/kraken/sw/explosives/world/w_grenade_bacta.mdl"

AddCSLuaFile()

local regenInterval = 0.050
local regenDuration = 30
local playersInRegenRange = {}

local function RegenerateHealth(ply)
    if IsValid(ply) and ply:Alive() then
        local maxHealth = ply:GetMaxHealth()
        local currentHealth = ply:Health()
        local regenAmount = maxHealth * 0.05

        if currentHealth < maxHealth then
            ply:SetHealth(math.min(currentHealth + regenAmount, maxHealth))
        end
    end
end

-- Hook to start player health regeneration
local function StartRegenTimer(ply)
    if IsValid(ply) and ply:Alive() then
        if not playersInRegenRange[ply] then
            playersInRegenRange[ply] = true
            ply.regenStartTime = CurTime()

            timer.Create("HealthRegen_" .. ply:EntIndex(), regenInterval, regenDuration / regenInterval, function()
                if IsValid(ply) and ply:Alive() and playersInRegenRange[ply] then
                    RegenerateHealth(ply)
                else
                    timer.Remove("HealthRegen_" .. ply:EntIndex())
                    playersInRegenRange[ply] = nil
                end
            end)
        end
    end
end

-- Hook to detect players entering and leaving regeneration range
local function StopRegenTimer(ply)
    if playersInRegenRange[ply] then
        playersInRegenRange[ply] = nil
        timer.Remove("HealthRegen_" .. ply:EntIndex())
    end
end

hook.Add("PlayerEnteredRegenRadius", "PlayerEnteredRegenRadius", function(ply)
    StartRegenTimer(ply)
end)

hook.Add("PlayerLeftRegenRadius", "PlayerLeftRegenRadius", function(ply)
    StopRegenTimer(ply)
end)

local function IsPlayerInRegenArea(ply, grenadePos, radius)
    return IsValid(ply) and ply:GetPos():DistToSqr(grenadePos) <= radius * radius
end

function ENT:Initialize()
    if SERVER then
        self:SetModel(self.Model)
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
        self:SetSkin(self.Skin or 0)
        
        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end
        
		self.Delay = CurTime() + 2.5
		self.NextParticle = 0
		self.ParticleCount = 0
		self.First = true
		self.IsDetonated = false
        
    end

    util.PrecacheSound("kraken/explosives/bactagrenade/bacta_beep.wav")
    self:EmitSound("kraken/explosives/bactagrenade/bacta_beep.wav")
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
        elseif data.Speed < 5 then
            self:SetMoveType(MOVETYPE_NONE)
        end
    end
end

function ENT:Think()
    if SERVER then    
        if CurTime() > self.Delay then
            if not self.IsDetonated then
                self:Detonate(self:GetPos())
                self.IsDetonated = true
                
                for _, v in pairs(ents.FindInSphere(self:GetPos(), 300)) do
                    if v:IsPlayer() then
                        hook.Call("PlayerEnteredRegenRadius", nil, v)
                    end
                end
            else
                for ply, _ in pairs(playersInRegenRange) do
                    if not IsPlayerInRegenArea(ply, self:GetPos(), 300) then
                        hook.Call("PlayerLeftRegenRadius", nil, ply)
                    end
                end
            end
        end
    end
end

function ENT:DrawTranslucent()
    self:Draw()
end

function ENT:Draw()
    self:DrawModel()
end

function ENT:Detonate(pos)
    if SERVER then
        if not self:IsValid() then return end
        self:SetNWBool("IsDetonated", true)
        self:EmitSound("kraken/explosives/bactagrenade/bacta_grenade.mp3", 120, 100, 1, CHAN_AUTO)
        
        local gas = EffectData()
        gas:SetOrigin(pos)
        gas:SetEntity(self.Owner)
        util.Effect("bactanade", gas)
    end
    
    self:SetMoveType(MOVETYPE_NONE)
    
    if SERVER then
        SafeRemoveEntityDelayed(self, 0.5)
    end
end