AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Slot = 3 

-- Trivia
SWEP.Category = "[ArcCW] Kraken's CGI Galactic pack"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "NT-240x"
SWEP.Trivia_Class = "Blaster Sniper"
SWEP.Trivia_Desc = "Military Blaster Sniper used along the galaxy. It offers what is necessary and what every blaster should offer to satisfy the needs of its shooter."
SWEP.Trivia_Manufacturer = "Unknown"
SWEP.Trivia_Calibre = "Tibanna Gas"
SWEP.IconOverride = "entities/kraken/cgigalactic/nt240x.png"

-- Viewmodel & Entity Properties
SWEP.DefaultBodygroups = "00000000000000"

SWEP.UseHands = true
SWEP.MirrorVMWM = true
SWEP.ViewModel = "models/arccw/kraken/cgi_galactic/v_nt240x.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_dlt19.mdl"

SWEP.ViewModelFOV = 70

SWEP.WorldModelOffset = {
    pos = Vector(-9.7, 5.2, -5),
    ang = Angle(-15, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1,
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

SWEP.Damage = 200
SWEP.DamageMin = 150
SWEP.RangeMin = 0
SWEP.Range = 600
SWEP.Penetration = 10
SWEP.DamageType = DMG_BLAST
SWEP.MuzzleVelocity = 2000

SWEP.TracerNum = 1
SWEP.TracerCol = Color(174, 0, 255)
SWEP.TracerWidth = 1
SWEP.Tracer = "tracer_blue"
SWEP.HullSize = 1

SWEP.Recoil = 4
SWEP.RecoilSide = 2
SWEP.RecoilRise = 2
SWEP.MaxRecoilBlowback = 1
SWEP.RecoilPunch = 1
SWEP.RecoilVMShake = 1

SWEP.AmmoPerShot = 1
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 8

SWEP.Delay = 60 / 120
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 1,
        PrintName = "Semi/Charged",
        Mult_RPM = 0.5,
        Mult_Damage = 2.2,
        Mult_DamageMin = 2.2,
        Mult_AmmoPerShot = 2,
    },
    {
		Mode = 2,
        PrintName = "Auto",
        Mult_Recoil = 0.5,
    },
	{
		Mode = 0,
    }
}
--[[
local s = "ArcCW_Kraken.OverheatWarn"
local p = {
    [5] = 70,
    [4] = 70,
    [3] = 70,
    [2] = 80,
    [1] = 90,
    [0] = 100,
}

SWEP.Hook_AddShootSound = function(wep, data)
    local pitch = p[wep:Clip1()]
    if pitch then
        wep:MyEmitSound(s, 100, pitch, 0.5, CHAN_AUTO)
    end
end
]]
SWEP.AccuracyMOA = 5
SWEP.HipDispersion = 100
SWEP.MoveDispersion = 300 
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

SWEP.FirstShootSound = "ArcCW_Kraken.SW_CGI_NT240X"
SWEP.ShootSound = "ArcCW_Kraken.SW_CGI_NT240X"
-- SWEP.DistantShootSound = "ArcCW_Kraken.HeavyCorebass"
SWEP.ShootSoundSilenced = "ArcCW_Kraken.Silenced_Weapons"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_purple"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(150, 0, 250)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(-4.88, -3.009, 2.9),
    Ang = Vector(0, 0, 0),
     Magnification = 1.5,
     SwitchToSound = "arccw/kraken/interaction/zoom-in.wav",
     SwitchFromSound = "arccw/kraken/interaction/zoom-out.wav",
     ViewModelFOV = 50,
}

-- Holdtype
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "ar2"
SWEP.HoltypeCustomize = "slam"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.SprintPos = Vector(2, -1, 0)
SWEP.SprintAng = Angle(-10, 26, 0)

SWEP.CustomizePos = Vector(10, 0, 2)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

SWEP.CrouchPos = Vector(-3, 0, 3)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.ActivePos = Vector(-3, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(4, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

SWEP.BipodDispersion = 1
SWEP.BipodRecoil = 1

SWEP.InBipodPos = Vector(-8, 0, -4)
SWEP.InBipodMult = Vector(2, 1, 1)

-- Attachments
SWEP.DefaultElements = {"muzzle"}
SWEP.AttachmentElements = {
    ["muzzle"] = {
        VMElements = {
           {
               Model = "models/hunter/plates/plate.mdl",
               Bone = "dlt34",
               Scale = Vector(0, 0, 0),                
               Offset = {
                   pos = Vector(0, 0, 34),
                   ang = Angle(90, 0, 0),
               },
               IsMuzzleDevice = true,
           }
        }, 
    },
    ["integrated_holosight"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["galactic_bipod"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["galactic_bipod_hidden"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
}

SWEP.Attachments = {     
    {
        PrintName = "Sight", 
        DefaultAttName = "None",
        Slot = "optic",
        Bone = "dlt34",
        VMScale = Vector(1,1,1),
        WMScale = Vector(1,1,1),
        InstalledEles = {"integrated_holosight"},
        Offset = {
            vpos = Vector(-0.15, -2.45, 11),
            vang = Angle(90, 0, -90),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
    },
    {
        PrintName = "Underbarrel",
        DefaultAttName = "None",
        Slot = {"foregrip", "galactic_bipod"},
        Bone = "dlt34",
        InstalledEles = {"galactic_bipod_hidden"},
        Offset = {
            vpos = Vector(-0.1, 1.9, 20),
            vang = Angle(90, 0, -90),
        },
    },
--[[
    {
        PrintName = "Muzzle",
        DefaultAttName = "None",
        Slot = {"muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle"},
        VMScale = Vector(1.6,1.6,1.6),
        WMScale = Vector(1.6,1.6,1.6),
        Bone = "dlt34",
        Offset = {
            vpos = Vector(-0.13, -0.5, 59),
            vang = Angle(90, 0, -90),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "None",
        Slot = {"tactical", "tac_pistol"},
        Bone = "dlt34",
        VMScale = Vector(1,1,1),
        WMScale = Vector(1,1,1),
        Offset = {
            vpos = Vector(-1.2, -0.4, 49),
            vang = Angle(90, 0, 180),
        },
    },
    {
        PrintName = "Energization",
        DefaultAttName = "None",
        Slot = {"ammo"},
    },
    {
        PrintName = "Perk",
        DefaultAttName = "None",
        Slot = "perk",
    },
    {
        PrintName = "Internal Modifications",
        DefaultAttName = "None",
        Slot = {"uc_fg"},
    },    
    {
        PrintName = "Charm",
        DefaultAttName = "None",
        Slot = "charm",
        VMScale = Vector(0.7, 0.7, 0.7),
        WMScale = Vector(0.7, 0.7, 0.7),
        Bone = "dlt34",
        Offset = {
            vpos = Vector(0.91, -1.1, -1),
            vang = Angle(90, 0, -90),
        },
    },    
    {
        PrintName = "Killcounter",
        DefaultAttName = "None",
        Slot = "killcounter",
        VMScale = Vector(1,1,1),
        WMScale = Vector(1,1,1),
        Bone = "dlt34",
        Offset = {
            vpos = Vector(1, -0.9, 4),
            vang = Angle(90, 0, -90),
        },
    },
    ]]
}

-- Don't touch this unless you know what you're doing
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_iron"] = {
        Source = "idle",
    },
	["fire"] = {
        Source = {"shoot"},
    },
    ["fire_iron"] = {
        Source = false,
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        Mult = 0.3,
        SoundTable = {
            {s = "ArcCW_Kraken.Overheat", t = 1 / 30},
            {s = "ArcCW_Kraken.OverheatFix", t = 60 / 30},
            {s = "ArcCW_Kraken.Grab", t = 65 / 30},
        },
    },
    ["fix"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        Mult = 0.3,
        SoundTable = {
            {s = "ArcCW_Kraken.Overheat", t = 1 / 30},
            {s = "ArcCW_Kraken.OverheatFix", t = 60 / 30},
            {s = "ArcCW_Kraken.Grab", t = 65 / 30},
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