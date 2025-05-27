AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.CanFireUnderwater = true
SWEP.Spawnable = false

SWEP.Slot = 3

SWEP.Category = "[ArcCW] CN Republic Weapons"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "Buck Scarab Gun"
SWEP.Trivia_Class = "Blaster, Handblaster"
SWEP.Trivia_Desc = "We wuz kangz, and we shit!"
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Laser Bolt"
SWEP.Trivia_Mechanism = "Condensed Tibanna-Gas"
SWEP.Trivia_Country = "Galactic Republic"
SWEP.IconOverride = "entities/arccw/kraken/cgi/dr20.png"

-- Base
SWEP.DefaultBodygroups = "000000000000"
SWEP.MirrorVMWM = true
SWEP.UseHands = true
SWEP.ViewModel = "models/kraken/cgi/v_cgi_dr20.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"
SWEP.ShootWhileSprint = true

SWEP.ViewModelFOV = 65

SWEP.WorldModelOffset = {
    pos = Vector(-18, 6.7, -5.75),
    ang = Angle(0, 0, -180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

-- Damage & Tracer
SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1.1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}

SWEP.Damage = 300
SWEP.DamageMin = 300
SWEP.RangeMin = 0
SWEP.Range = 1000
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 2000

SWEP.TracerNum = 1
SWEP.TracerCol = Color(183, 0, 250)
SWEP.TracerWidth = 1
SWEP.Tracer = "nio_tracer"
SWEP.HullSize = 1

SWEP.AmmoPerShot = 1
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 1000

SWEP.Recoil = 0.01
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 0.2

SWEP.Delay = 60 / 1000
SWEP.Num = 1
SWEP.Firemode = 2
SWEP.Firemodes = {
    {
		Mode = 2,
    },
	{
		Mode = 0,
   	}
}

-- local s = "ArcCW_Kraken.OverheatWarn"
-- local p = {
--     [5] = 70,
--     [4] = 70,
--     [3] = 70,
--     [2] = 80,
--     [1] = 90,
--     [0] = 100,
-- }
-- SWEP.Hook_AddShootSound = function(wep, data)
--     local pitch = p[wep:Clip1()]
--     if pitch then
--         wep:MyEmitSound(s, 100, pitch, 0.5, CHAN_AUTO)
--     end
-- end

SWEP.AccuracyMOA = 0.2
SWEP.HipDispersion = 40
SWEP.MoveDispersion = 150 
SWEP.JumpDispersion = 200

-- Speed Mult
SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.9

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "ar2"
SWEP.ShootVol = 100
SWEP.ShootPitch = 120
SWEP.ShootPitchVariation = 0.2

-- SWEP.FirstShootSound = "kraken/cgi/x8/x8_4.wav"
-- SWEP.ShootSound = "kraken/cgi/x8/x8_2.wav"
SWEP.FirstShootSound = "kraken/cgi/dc17m/sniper.wav"
SWEP.ShootSound = "kraken/cgi/dc17m/sniper.wav"
-- SWEP.DistantShootSound = "ArcCW_Kraken.HeavyCorebass"
SWEP.ShootSoundSilenced = "kraken/cgi/dc19/dc19.wav"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_purple"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(183, 0, 250)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(-5.03, -11.296, -0.15),
    Ang = Angle(0,0,0),
     Magnification = 1.5,
     SwitchToSound = "arccw/kraken/interaction/zoom-in.wav",
     SwitchFromSound = "arccw/kraken/interaction/zoom-out.wav",
     ViewModelFOV = 50,
}

-- Holdtype
SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"
SWEP.HoltypeCustomize = "slam"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.SprintPos = Vector(4.019, -5.226, -2)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10, -10, 0)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

SWEP.CrouchPos = Vector(-4.5, -6, -2)
SWEP.CrouchAng = Angle(1.569, 0.88, -50.458)

SWEP.ActivePos = Vector(0, -2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.HolsterPos = Vector(4, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

-- Attachments
SWEP.DefaultElements = {}
SWEP.AttachmentElements = {}

SWEP.Attachments = {     
    -- {
    --     PrintName = "Sight", 
    --     DefaultAttName = "None",
    --     Slot = "optic",
    --     Bone = "DC-15SA",
    --     VMScale = Vector(0.8, 0.8, 0.8),
    --     WMScale = Vector(0.8, 0.8, 0.8),
    --     Offset = {
    --         vpos = Vector(0.01, -3.5, 1),
    --         vang = Angle(90, 0, -90),
    --     },
    --     CorrectivePos = Vector(0, 0, 0),
    --     CorrectiveAng = Angle(0, 0, 0),
    -- },
    -- {
    --     PrintName = "Muzzle",
    --     DefaultAttName = "None",
    --     Slot = {"muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle"},
    --     Bone = "DC-15SA",
    --     Offset = {
    --         vpos = Vector(0.030, -1.9, 9),
    --         vang = Angle(90, 0, -90),
    --     },
    -- },  
    -- {
    --     PrintName = "Tactical",
    --     DefaultAttName = "None",
    --     Slot = {"tactical", "tac_pistol"},
    --     Bone = "DC-15SA",
    --     VMScale = Vector(0.7, 0.7, 0.7),
    --     WMScale = Vector(0.7, 0.7, 0.7),
    --     Offset = {
    --         vpos = Vector(0, -0.2, 7),
    --         vang = Angle(90, 0, -90),
    --     },
    -- },
    {
        PrintName = "Energization",
        DefaultAttName = "Standard",
        Slot = {"ammo", "sw_ammo"}
    }
    -- {
    --     PrintName = "Mode",
    --     DefaultAttName = "None",
    --     Slot = {"sw_mode", "sw_mode_pistol"},
    -- }  
    -- {
    --     PrintName = "Perk",
    --     DefaultAttName = "None",
    --     Slot = "perk",
    -- },
    -- {
    --     PrintName = "Internal Modifications",
    --     DefaultAttName = "None",
    --     Slot = {"uc_fg"},
    -- },    
    -- {
    --     PrintName = "Charm",
    --     DefaultAttName = "None",
    --     Slot = "charm",
    --     VMScale = Vector(0.5, 0.5, 0.5),
    --     WMScale = Vector(0.5, 0.5, 0.5),
    --     Bone = "DC-15SA",
    --     Offset = {
    --         vpos = Vector(0.8, -0.9, 2),
    --         vang = Angle(90, 0, -90),
    --     },
    -- },    
    -- {
    --     PrintName = "Killcounter",
    --     DefaultAttName = "None",
    --     Slot = "killcounter",
    --     VMScale = Vector(0.9, 0.9, 0.9),
    --     WMScale = Vector(0.9, 0.9, 0.9),
    --     Bone = "DC-15SA",
    --     Offset = {
    --         vpos = Vector(0.8, -0.9, 5),
    --         vang = Angle(90, 0, -90),
    --     },
    -- },   
}

-- Don't touch this unless you know what you're doing
SWEP.Animations = {
    ["idle"] = {
        Source = false,
    },
    ["idle_iron"] = {
        Source = false,
    },
	["fire"] = {
        Source = {"fire"},
    },
    ["fire_iron"] = {
        Source = false,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        SoundTable = {
            {s = "ArcCW_Kraken.Overheat", t = 1 / 30},
            {s = "ArcCW_Kraken.OverheatReplenished", t = 45 / 30},
        },
    },
    ["draw"] = {
        Source = "draw",
        SoundTable = {
            {
                s = "arccw/kraken/empire/draw_pistol.wav",
                p = 100,
                v = 100,
                t = 0.1,
                c = CHAN_ITEM,
            },
        }
    },
    ["holster"] = {
        Source = "holster",
        SoundTable = {
            {
                s = "arccw/kraken/empire/draw_pistol.wav",
                p = 100,
                v = 100,
                t = 0.1,
                c = CHAN_ITEM,
            },
        }
    },
}
SWEP.Hook_BulletHit = function(wep, data)
    local effectdata = EffectData()
    effectdata:SetOrigin(data.tr.HitPos)
    util.Effect("Explosion", effectdata)

    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 100, 50) -- Radius and damage
end