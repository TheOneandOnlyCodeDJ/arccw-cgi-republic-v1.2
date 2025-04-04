AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true

SWEP.Slot = 3

SWEP.Category = "[ArcCW] Kraken's CGI Essentials - Republic"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "DC-17 Extended"
SWEP.Trivia_Class = "Blaster, Handblaster"
SWEP.Trivia_Desc = "The DC-17 repeater hand blaster, also known more simply as a DC-17 hand blaster, was a model of heavy blaster pistol and the Grand Army of the Republic's standard-issue sidearm. Produced by BlasTech Industries, the DC-17 was usually given to weapon teams, the crews of vehicles, and officers. The weapon was one of the most reliable and toughest models of blaster pistols created, as well as having remarkable stopping power in its small design. The weapon was also well balanced, possessed a respectable rate of fire, and lightweight."
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Laser Bolt"
SWEP.Trivia_Mechanism = "Condensed Tibanna-Gas"
SWEP.Trivia_Country = "Galactic Republic"
SWEP.IconOverride = "entities/arccw/kraken/cgi/17_ext.png"

-- Base
SWEP.DefaultBodygroups = "000000000000"
SWEP.MirrorVMWM = true
SWEP.UseHands = true
SWEP.ViewModel = "models/kraken/cgi/v_cgi_dc17ext.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

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

SWEP.Damage = 38
SWEP.DamageMin = 20
SWEP.RangeMin = 0
SWEP.Range = 250
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 2000

SWEP.TracerNum = 1
SWEP.TracerCol = Color(0, 0, 250)
SWEP.TracerWidth = 1
SWEP.Tracer = "tracer_blue"
SWEP.HullSize = 1

SWEP.AmmoPerShot = 1
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 18

SWEP.RecoilSide = 0
SWEP.RecoilRise = 0
SWEP.Recoil = 0.1

SWEP.Delay = 60 / 220
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 1,
    },
    -- {
    --     Mode = -3,
    --     PostBurstDelay = 0.1,
    --     RunawayBurst = false,
    --     Mult_RPM = 2,
    -- },
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

SWEP.AccuracyMOA = 0
SWEP.HipDispersion = 100
SWEP.MoveDispersion = 50
SWEP.JumpDispersion = 250

-- Speed Mult
SWEP.SpeedMult = 0.955
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.9

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "ar2"
SWEP.ShootVol = 100
SWEP.ShootPitch = 90
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "kraken/cgi/dc17/dc17ext_1.wav"
SWEP.ShootSound = "kraken/cgi/dc17/dc17ext_2.wav"
SWEP.DistantShootSound = "ArcCW_Kraken.HeavyCorebass"
SWEP.ShootSoundSilenced = "kraken/cgi/dc19/dc19.wav"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_blue"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(0, 0, 250)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(-5.02, -11.296, 0.2),
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

SWEP.CrouchPos = Vector(-4.5, -6, -4)
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

-- SWEP.Attachments = {     
--     {
--         PrintName = "Sight", 
--         DefaultAttName = "None",
--         Slot = "optic",
--         Bone = "DC-15SA",
--         VMScale = Vector(0.8, 0.8, 0.8),
--         WMScale = Vector(0.8, 0.8, 0.8),
--         Offset = {
--             vpos = Vector(0.01, -3.2, -1),
--             vang = Angle(90, 0, -90),
--         },
--         CorrectivePos = Vector(0, 0, 0),
--         CorrectiveAng = Angle(0, 0, 0),
--     },
--     {
--         PrintName = "Muzzle",
--         DefaultAttName = "None",
--         Slot = {"muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle"},
--         Bone = "DC-15SA",
--         VMScale = Vector(1.1, 1.1, 1.1),
--         WMScale = Vector(1.1, 1.1, 1.1),
--         Offset = {
--             vpos = Vector(0, -1.25, 5.9),
--             vang = Angle(90, 0, -90),
--         },
--     },  
--     {
--         PrintName = "Tactical",
--         DefaultAttName = "None",
--         Slot = {"tactical", "tac_pistol"},
--         Bone = "DC-15SA",
--         VMScale = Vector(0.7, 0.7, 0.7),
--         WMScale = Vector(0.7, 0.7, 0.7),
--         Offset = {
--             vpos = Vector(0, 0, 2),
--             vang = Angle(90, 0, -90),
--         },
--     },
--     {
--         PrintName = "Energization",
--         DefaultAttName = "None",
--         Slot = {"ammo"},
--     },
--     {
--         PrintName = "Mode",
--         DefaultAttName = "None",
--         Slot = {"sw_mode", "sw_mode_pistol"},
--     },  
--     {
--         PrintName = "Perk",
--         DefaultAttName = "None",
--         Slot = "perk",
--     },
--     {
--         PrintName = "Internal Modifications",
--         DefaultAttName = "None",
--         Slot = {"uc_fg"},
--     },    
--     {
--         PrintName = "Charm",
--         DefaultAttName = "None",
--         Slot = "charm",
--         VMScale = Vector(0.5, 0.5, 0.5),
--         WMScale = Vector(0.5, 0.5, 0.5),
--         Bone = "DC-15SA",
--         Offset = {
--             vpos = Vector(0.95, -0.4, 0),
--             vang = Angle(90, 0, -90),
--         },
--     },    
--     {
--         PrintName = "Killcounter",
--         DefaultAttName = "None",
--         Slot = "killcounter",
--         VMScale = Vector(1, 1, 1),
--         WMScale = Vector(1, 1, 1),
--         Bone = "DC-15SA",
--         Offset = {
--             vpos = Vector(0.8, -1.2, 1.5),
--             vang = Angle(90, 0, -90),
--         },
--     },   
-- }

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