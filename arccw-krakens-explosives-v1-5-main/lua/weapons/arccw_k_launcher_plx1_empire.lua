AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true

SWEP.Slot = 3

SWEP.Category = "[ArcCW] CN Heavy Weapons"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "Empire PLX-1"
SWEP.Trivia_Class = "Rocket Launcher"
SWEP.Trivia_Desc = "The Merr-Sonn PLX, or Plex, was a powerful missile launcher that was in service almost from the beginning of the Clone Wars and continued to be used in different militaries well after the conclusion of that cataclysmic conflict."
SWEP.Trivia_Manufacturer = "Merr-Sonn Munitions, Inc."
SWEP.Trivia_Calibre = "Rocket"
SWEP.Trivia_Country = "Galactic Republic"
SWEP.IconOverride = "entities/kraken/explosives/plx1_imperio.png"

-- Base
SWEP.DefaultBodygroups = "0010000000000000000"

SWEP.MirrorVMWM = true
SWEP.UseHands = true

SWEP.NoHideLeftHandInCustomization = false
SWEP.ViewModel = "models/arccw/kraken/sw/explosives/v_plx1_empire.mdl"
SWEP.MirrorWorldModel = "models/arccw/kraken/sw/explosives/v_plx1_empire_mirror.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 65

SWEP.WorldModelOffset = {
    pos = Vector(-3, 1.3, -6),
    ang = Angle(0, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

-- Damage & Tracer
SWEP.ShootEntity = "rocket_plx1"
SWEP.MuzzleVelocity = 12000

SWEP.Recoil = 4.3
SWEP.RecoilSide = 0.550
SWEP.RecoilRise = 2
SWEP.RecoilPunch = 2.5
SWEP.RecoilVMShake = 1.5
SWEP.VisualRecoilMult = 0.7

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 1

SWEP.Delay = 60 / 60
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 1,
    },
}

SWEP.AccuracyMOA = 0.5
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 500

-- Speed Mult
SWEP.SpeedMult = 0.65
SWEP.SightedSpeedMult = 0.64
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.62

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "RPG_Round"
SWEP.ShootVol = 120
SWEP.ShootPitch = 95
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "kraken/explosives/heat_ignite.ogg"
SWEP.ShootSound = "kraken/explosives/heat_ignite.ogg"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "muzzleflash_m79"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(250, 192, 0)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(3, -6, 4),
    Ang = Angle(8, 0, 19),
     Magnification = 1.5,
     SwitchToSound = "arccw/kraken/interaction/zoom-in.wav",
     SwitchFromSound = "arccw/kraken/interaction/zoom-out.wav",
     ViewModelFOV = 55,
}

-- Holdtype
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "rpg"
SWEP.HoldtypeSights = "rpg"
SWEP.HoltypeCustomize = "slam"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(3, -2, 4)
SWEP.ActiveAng = Angle(8, 0, 19)

SWEP.SprintPos = Vector(0, 3, -0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(6, 4, 0)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

-- Attachments
-- SWEP.Attachments = {
    -- {
    --     PrintName = "Tactical",
    --     DefaultAttName = "None",
    --     Slot = {"tactical", "tac_pistol"},
    --     Bone = "tag_launcher_offset",
    --     VMScale = Vector(1, 1, 1),
    --     WMScale = Vector(1, 1, 1),
    --     Offset = {
    --         vpos = Vector(14, -4.5, -1),
    --         vang = Angle(0, 0, 90),
    --     },
    -- },
    -- {
    --     PrintName = "Ammunition",
    --     DefaultAttName = "Rocket",
    --     Slot = {"k_rocket_ammo"}
    -- }
    -- {
    --     PrintName = "Perk",
    --     DefaultAttName = "None",
    --     Slot = "perk",
    -- },
    -- {
    --     PrintName = "Charm",
    --     DefaultAttName = "None",
    --     Slot = {"charm"},
    --     Bone = "tag_launcher_offset",
    --     VMScale = Vector(0.7, 0.7, 0.7),
    --     WMScale = Vector(0.7, 0.7, 0.7),
    --     Offset = {
    --         vpos = Vector(5, -4.5, -1),
    --         vang = Angle(0, 0, 0),
    --     },
    -- },
-- }


---- LOCK-IN FUNCTIONS
SWEP.Hook_GetShootEntData = function(self, data)
    local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 1)

    if tracktime >= 1 and self.TargetEntity and IsValid(self.TargetEntity) then
        data.Target = self.TargetEntity
    end
end

SWEP.Hook_DrawHUD = function(self)
local TrackingIndicator = Material("VGUI/lockon.png")
    if self:GetNWState() == ArcCW.STATE_SIGHTS and self:Clip1() > 0 then
        if self.TargetEntity and IsValid(self.TargetEntity) and self:Clip1() > 0 then
             local toscreen = self.TargetEntity:WorldSpaceCenter():ToScreen()
             local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 2)
             
             if tracktime >= 1 then
                surface.SetMaterial(TrackingIndicator)
                surface.SetDrawColor(0,250,0,200)
                surface.DrawTexturedRect(toscreen.x - 30, toscreen.y - 30, 60, 60) 
             else
                surface.SetMaterial(TrackingIndicator)
                surface.SetDrawColor(255,0,0,200)
                surface.DrawTexturedRect(toscreen.x - 30, toscreen.y - 30, 60, 60) 
             end
        end
    end
end


SWEP.NextBeepTime = 0
SWEP.TargetEntity = nil
SWEP.StartTrackTime = 0
SWEP.LockTime = 2

SWEP.Hook_Think = function(self)

    if self:Clip1() > 0 and self:GetNWState() == ArcCW.STATE_SIGHTS then

        if self.NextBeepTime > CurTime() then return end

        local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 2)

        -- if CLIENT then
        if tracktime >= 1 and self.TargetEntity then
            if CLIENT then
                self:EmitSound("kraken/explosives/reticle_locked2.ogg", 75, 100)
            end
            self.NextBeepTime = CurTime() + 0.15
        elseif tracktime >= 0 and self.TargetEntity then
            if CLIENT then
                self:EmitSound("kraken/explosives/reticle_tracking2.ogg", 75, 100)
            end
            self.NextBeepTime = CurTime() + 0.4
        else
            if CLIENT then
                self:EmitSound("", 75, 100)
            end
            self.NextBeepTime = CurTime() + 0.4
        end
        -- end
        
        local Radius = 14000
        local closest = Radius 

        local targets = ents.FindInSphere(self:GetPos(), Radius)

        local best = nil
        local targetscore = 0

        for _, ent in ipairs(targets) do
            if ent:IsWorld() then continue end
            if ent == self:GetOwner() then continue end
            if ent.IsProjectile then continue end
            if ent.UnTrackable then continue end
            if ent:GetClass():find("prop_") then continue end
			
            local aa, bb = ent:GetRotatedAABB(ent:OBBMins(), ent:OBBMaxs())
            local vol = math.abs(bb.x - aa.x) * math.abs(bb.y - aa.y) * math.abs(bb.z - aa.z)
			if vol <= 20000 then continue end

            local dot = (ent:GetPos() - self:GetShootPos()):GetNormalized():Dot(self:GetShootDir():Forward())
            local entscore = 1
            if ent:IsPlayer() then entscore = entscore + 5 end
            if ent:IsNPC() or ent:IsNextBot() then entscore = entscore + 2 end
            if ent:IsVehicle() or ent.LVS then entscore = entscore + 10 end
            if ent:Health() > 0 then entscore = entscore + 5 end

            entscore = entscore + dot * 5

            entscore = entscore + (ent.ARC9TrackingScore or 0)

            if entscore > targetscore then
                local tr = util.TraceLine({
                    start = self:GetShootPos(),
                    endpos = ent:WorldSpaceCenter(),
                    filter = self:GetOwner(),
                    mask = MASK_SHOT
                })
                if tr.Entity == ent then
                best = ent
                bestang = dot
                targetscore = entscore
                end
            end
        end

        if !best then self.TargetEntity = nil return end

        if !self.TargetEntity then
            self.StartTrackTime = CurTime()
        end

        self.TargetEntity = best
    else
        self.TargetEntity = nil
    end
end

-- Animations!
local path = "kraken/launchers/plx1/"

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["dryfire"] = {
        Source = "firemode",
		MinProgress = 0.01,
		FireASAP = true,
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.95,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
			{s = path .. "wfoly_plr_la_gromeo_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_rotate.ogg", t = 22/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_rockettip_01.ogg", t = 38/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_grabrocket.ogg", t = 78/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_load_01.ogg", t = 82/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_flipup.ogg", t = 102/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_arm.ogg", t = 128/30},
			{s = path .. "wfoly_plr_la_gromeo_reload_end.ogg", t = 152/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        SoundTable = {
            {s = path .. "wfoly_plr_la_gromeo_raise_first_up.ogg", t = 3/30},
			{s = path .. "wfoly_plr_la_gromeo_raise_first_settle.ogg", t = 18/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.4,
        SoundTable = {
            {s = path .. "wfoly_plr_la_gromeo_raise_up.ogg", t = 7/30},
			{s = path .. "wfoly_plr_la_gromeo_raise_settle.ogg", t = 22/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        SoundTable = {
            {s = path .. "wfoly_plr_la_gromeo_drop.ogg", t = 0/30},
            {s = path .. "wfoly_plr_la_gromeo_drop_mech.ogg", t = 5/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["bash"] = {
        Source = "melee_miss",
    },
}