AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Dioxis Grenade"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/arccw/kraken/sw/explosives/world/w_grenade_dioxis.mdl"
ENT.FuseTime = 2

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

        timer.Simple(self.FuseTime, function()
           if IsValid(self) then
              self:Detonate()
           end
        end)

        util.PrecacheSound("kraken/explosives/dioxis/beep.wav")
        self:EmitSound("kraken/explosives/dioxis/beep.wav")

        timer.Simple(0.1, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
        end)
    end
	ParticleEffectAttach("grenadetrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
			self:EmitSound(Sound("kraken/explosives/bounce/bounce" .. math.random(1,16) .. ".wav"), 75, 100, 0.3, CHAN_AUTO )
        elseif data.Speed > 45 then
			self:EmitSound(Sound("kraken/explosives/bounce/bounce" .. math.random(1,16) .. ".wav"), 75, 100, 0.3, CHAN_AUTO )
        end
    end
	self:StopParticles()
end

function ENT:Think()
    if SERVER then
        local phys = self:GetPhysicsObject()
        phys:ApplyForceCenter(self:GetAngles():Forward() * 500)
    end
end

function ENT:Detonate()
   if (self:WaterLevel() >= 1 or self:WaterLevel() >= 2) then
    SafeRemoveEntityDelayed(self, 0)
    self:Remove()
    self:EmitSound(Sound("kraken/explosives/dioxis/start" .. math.random(1,4) .. ".wav"), 75, 100, 0.3, CHAN_AUTO )
    else
    self:DoDetonate()
   end
end
  
function ENT:DoDetonate()
    if self:WaterLevel() > 0 then self:Remove() return end
    local attacker = self.Attacker or self:GetOwner() or self
        local cloud = ents.Create("dioxis_spawned")
        if IsValid(cloud) then
            cloud:SetPos(self:GetPos())
            cloud:SetAngles(self:GetAngles())
            cloud:SetOwner(attacker)
            cloud:Spawn()
            cloud:EmitSound(Sound("kraken/explosives/dioxis/start" .. math.random(1,4) .. ".wav"), 120, 100, 0.3, CHAN_AUTO )
            cloud:SetParent(self)
            cloud.NoIgnite = self
        end
        self:EmitSound(Sound("kraken/explosives/dioxis/start" .. math.random(1,4) .. ".wav"), 120, 100, 0.3, CHAN_AUTO )
	ParticleEffectAttach("AC_nade_gas_ejection", PATTACH_POINT_FOLLOW, self, 0)
    
    timer.Simple(18, function()
        if IsValid(self) then
            self:Remove()
        end
    end)
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end