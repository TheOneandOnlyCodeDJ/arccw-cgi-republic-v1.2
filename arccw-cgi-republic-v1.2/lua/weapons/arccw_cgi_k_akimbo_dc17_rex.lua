AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.CanFireUnderwater = true
SWEP.Spawnable = true

SWEP.Slot = 3

SWEP.Category = "[ArcCW] CN Republic Weapons"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "(Rex) Akimbo DC-17"
SWEP.Trivia_Class = "Blaster, Handblaster"
SWEP.Trivia_Desc = "The DC-17 repeater hand blaster, also known more simply as a DC-17 hand blaster, was a model of heavy blaster pistol and the Grand Army of the Republic's standard-issue sidearm. Produced by BlasTech Industries, the DC-17 was usually given to weapon teams, the crews of vehicles, and officers. The weapon was one of the most reliable and toughest models of blaster pistols created, as well as having remarkable stopping power in its small design. The weapon was also well balanced, possessed a respectable rate of fire, and lightweight."
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Laser Bolt"
SWEP.Trivia_Mechanism = "Condensed Tibanna-Gas"
SWEP.Trivia_Country = "Galactic Republic"
SWEP.IconOverride = "entities/arccw/kraken/cgi/17_dual.png"

-- Base
SWEP.DefaultBodygroups = "000000000000"
SWEP.MirrorVMWM = false
SWEP.NoHideLeftHandInCustomization = true
SWEP.UseHands = true
SWEP.ViewModel = "models/kraken/cgi/v_cgi_dc17_akimbo.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"
SWEP.ShootWhileSprint = true

SWEP.ViewModelFOV = 65

SWEP.HideViewmodel = false
SWEP.WorldModelOffset = {
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 0.09
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

SWEP.Damage = 36
SWEP.DamageMin = 17
SWEP.RangeMin = 0
SWEP.Range = 420
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
SWEP.Primary.ClipSize = 48

SWEP.RecoilSide = 0
SWEP.RecoilRise = 0
SWEP.Recoil = 0.1

SWEP.Delay = 60 / 450
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 2,
    },
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
SWEP.HipDispersion = 25
SWEP.MoveDispersion = 50 
SWEP.JumpDispersion = 200

-- Speed Mult
SWEP.SpeedMult = 0.955
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.9

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "ar2"
SWEP.ShootVol = 100
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "kraken/cgi/dc17/dc17_10.wav"
SWEP.ShootSound = "kraken/cgi/dc17/dc17_12.wav"
-- SWEP.DistantShootSound = "ArcCW_Kraken.LightCorebass"
SWEP.ShootSoundSilenced = "kraken/cgi/dc19/dc19.wav"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = false
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(0, 0, 250)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(0,0,0),
    Ang = Angle(0,0,0),
     Magnification = 2,
     SwitchToSound = "arccw/kraken/interaction/zoom-in.wav",
     SwitchFromSound = "arccw/kraken/interaction/zoom-out.wav",
     ViewModelFOV = 50,
}

-- Holdtype
SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "duel"
SWEP.HoldtypeSights = "duel"
SWEP.HoltypeCustomize = "normal"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.SprintPos = Vector(0, -5.226, -2)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, -5.226, 1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.ActivePos = Vector(0, -4, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.HolsterPos = Vector(4, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

-- Attachments
SWEP.DefaultElements = {"dc17"}
SWEP.AttachmentElements = {
    ["dc17"] = {
        WMElements = {
            {
                Model = "models/kraken/cgi/v_cgi_dc17.mdl",
                Bone = "ValveBiped.Bip01_R_Hand",
                Scale = Vector(1.1, 1.1, 1.1),
                Offset = {
                    pos = Vector(-220, 70, -65),
                    ang = Angle(180, -180, 2)
                }
            },
            {
                Model = "models/kraken/cgi/v_cgi_dc17.mdl",
                Bone = "ValveBiped.Bip01_L_Hand",
                Scale = Vector(1.1, 1.1, 1.1),
                Offset = {
                    pos = Vector(-325, 290, -120),
                    ang = Angle(180, -180, 2)
                }
            },
        },   
    }
}
WMOverride = "models/kraken/cgi/v_cgi_dc17.mdl"

-- SWEP.Attachments = {
--     {
--         PrintName = "Energization",
--         DefaultAttName = "Standard",
--         Slot = {"ammo", "special_ammo"}
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
-- }

-- Don't touch this unless you know what you're doing
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["bash"] = {
        Source = "bash",
    },
    ["idle_iron"] = {
        Source = "idle",
    },
	["fire"] = {
        Source = {"shoot_l", "shoot_r"},
        Mult = 2,
    },
    ["fire_iron"] = {
        Source = {"shoot_l", "shoot_r"},
        Mult = 2,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PHYSGUN,
        LHIK = true,
        SoundTable = {
            {s = "ArcCW_Kraken.Overheat", t = 1/30},
            {s = "ArcCW_Kraken.OverheatReplenished", t = 25/30},
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
    ["enter_inspect"] = {
        Source = "lookat01",
        Mult = 2,
    },
    ["idle_inspect"] = {
        Source = "lookat01",
        Mult = 2,
    },
}