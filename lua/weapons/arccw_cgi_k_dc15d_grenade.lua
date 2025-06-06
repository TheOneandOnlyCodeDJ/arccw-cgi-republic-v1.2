AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.CanFireUnderwater = true
SWEP.Spawnable = true

SWEP.Slot = 3
SWEP.Category = "[ArcCW] CN Republic Weapons"
SWEP.Credits = "BuckAU + Kraken"
SWEP.PrintName = "DC-15d Grenade Launcher"
SWEP.Trivia_Class = "Blaster, Shotgun"
SWEP.Trivia_Desc = "The DC-15d is a Compact Grenade Launcher used by the Grand Army of the Republic during the Clone Wars. It is the frontline multi-shot compact grenade launcher that was used by Clone Troopers."
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Laser Bolt"
SWEP.Trivia_Mechanism = "Condensed Tibanna-Gas"
SWEP.Trivia_Country = "Galactic Republic"
SWEP.IconOverride = "materials/entities/arccw/kraken/republic-arsenal/dc15d_grenade_launcher.png"

-- Viewmodel & Entity Properties
SWEP.DefaultBodygroups = "000000000"
SWEP.UseHands = true
SWEP.MirrorVMWM = true
SWEP.ViewModel = "models/kraken/cgi/v_cgi_dc15d.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 60

SWEP.WorldModelOffset = {
    pos = Vector(-13.4, 7, -3.6),
    ang = Angle(-15, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

-- Projectile
SWEP.ShootEntity = "rocket_hh12" -- Same as HH-12 rocket
SWEP.MuzzleVelocity = 1600
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1.1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}

SWEP.TracerNum = 1
SWEP.TracerCol = Color(0, 0, 250)
SWEP.TracerWidth = 1
SWEP.Tracer = "tracer_blue"
SWEP.HullSize = 1

-- Magazine and Fire
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 3

-- Recoil
SWEP.Recoil = 6.5
SWEP.RecoilSide = 0.550
SWEP.RecoilRise = 0.5
SWEP.RecoilPunch = 1
SWEP.RecoilVMShake = 1
SWEP.VisualRecoilMult = 1

SWEP.Delay = 60 / 120
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
        Mode = 1,
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

-- Accuracy & Dispersion
SWEP.AccuracyMOA = 0.5
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 500

-- Speed Mult
SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.9

-- Ammo & Sound
SWEP.Primary.Ammo = "RPG_Round"
SWEP.ShootVol = 120
SWEP.ShootPitch = 120
SWEP.ShootPitchVariation = 0.2
SWEP.FirstShootSound = "arccw/kraken/republic/gl_fire.ogg"
SWEP.ShootSound = "arccw/kraken/republic/gl_fire.ogg"

-- SWEP.DistantShootSound = "ArcCW_Kraken.HeavyCorebass"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "muzzleflash_m79"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(250, 146, 0)

-- Ironsight & Holdtype
SWEP.IronSightStruct = {
    Pos = Vector(0.526, 3.238, 1.4),
    Ang = Vector(0, 0, 0),
     Magnification = 1.5,
     SwitchToSound = "arccw/kraken/interaction/zoom-in.wav",
     SwitchFromSound = "arccw/kraken/interaction/zoom-out.wav",
     ViewModelFOV = 55,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"
SWEP.HoldtypeCustomize = "slam"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-0.5, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(7, 0, -4)
SWEP.SprintAng = Angle(5, 40, 0)

SWEP.CustomizePos = Vector(9.824, 2, -2.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.HolsterPos = Vector(1, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

-- Attachments 
SWEP.DefaultElements = {"muzzle"}
SWEP.AttachmentElements = {
    ["muzzle"] = {
        VMElements = {
           {
               Model = "models/hunter/plates/plate.mdl",
               Bone = "DC-17M",
               Scale = Vector(0, 0, 0),                
               Offset = {
                   pos = Vector(-2, -22, -2),
                   ang = Angle(90, 0, 0)
               },
               IsMuzzleDevice = true
           }
        }
    }
}

-- SWEP.Attachments = {
--     {
--         PrintName = "Optic", 
--         DefaultAttName = "None", 
--         Slot = "optic",
--         Bone = "DC-17M",
--         Offset = {
--             vpos = Vector(0.06, -2.8, -1.6),
--             vang = Angle(0, 90, 180),
--         },
--         CorrectiveAng = Angle(0, 180, 0),
--         CorrectivePos = Vector(0, 0, 0)
--     }, 
--     {
--         PrintName = "Internal Compression",
--         DefaultAttName = "DC-17m Standard",
--         Slot = {"muzzle", "dlt19_muzzle", "dc15a_muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle", "b1120_muzzle"},
--     },      
--     {
--         PrintName = "Tactical",
--         DefaultAttName = "None",
--         Slot = {"tactical", "tac_pistol", "tac"},
--         VMScale = Vector(0.8, 0.8, 0.8),
--         Bone = "DC-17M", 
--         Offset = {
--             vpos = Vector(1.7, -13, 0.1),
--             vang = Angle(0, 90, -90),
--         },
--     },
--     {
--         PrintName = "Energization",
--         DefaultAttName = "Standard",
--         Slot = {"ammo"},
--     },
--     {
--         PrintName = "Mode",
--         DefaultAttName = "None",
--         Slot = {"sw_mode"},
--     },   
--     {
--         PrintName = "Perk",
--         DefaultAttName = "None",
--         Slot = "perk",
--     },
--     {
--         PrintName = "Internal Modifications",
--         DefaultAttName = "None",
--         Slot = "uc_fg",
--     },
--     {
--         PrintName = "Charm",
--         DefaultAttName = "None",
--         Slot = {"charm"},
--         Bone = "DC-17M",
--         VMScale = Vector(0.7, 0.7, 0.7),
--         Offset = {
--             vpos = Vector(1.3, -1, -0.2),
--             vang = Angle(0, 90, 200),
--         },
--     },     
--     {
--         PrintName = "Killcounter",
--         DefaultAttName = "None",
--         Slot = {"killcounter"},
--         Bone = "DC-17M",
--         Offset = {
--             vpos = Vector(1.45, -3.7, -0.2),
--             vang = Angle(0, 90, 200),
--         },
--     },      
-- }

-- Don't touch this unless you know what you're doing
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["fire"] = {
        Source = {"fire"},
    },
    ["fire_iron"] = {
        Source = false,
    },
    ["draw"] = {
        Source = "draw",
        SoundTable = {
            {
                s = "arccw/kraken/empire/draw_rifle.wav",
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
                s = "arccw/kraken/empire/draw_rifle.wav",
                p = 100,
                v = 100,
                t = 0.1,
                c = CHAN_ITEM,
            },
        }
    },
    ["reload"] = {
        Source = "reload", 
        LHIK = true,
        Mult = 0.9,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
            {s = "weapon_hand/reload_heavy/mag_eject/023d-00000080.mp3", t = 10 / 60},
            {s = "weapon_hand/reload_gentle/mag_load/023d-00000648.mp3", t = 70 / 60},
            {s = "weapon_hand/reload_gentle/mag_load/023d-00000668.mp3", t = 95 / 60},
        },
    },
}