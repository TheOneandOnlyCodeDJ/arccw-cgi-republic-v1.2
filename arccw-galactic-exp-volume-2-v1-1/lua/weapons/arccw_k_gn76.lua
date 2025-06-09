AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Slot = 1

-- Trivia
SWEP.Category = "[ArcCW] Kraken's Galactic Expansion - Vol. II"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "GN-76"
SWEP.Trivia_Class = "Blaster Pistol"
SWEP.Trivia_Desc = "Blaster Pistol designed originally for military purposes, now modernized and being used by many Bounty Hunters, Civillians and even Mercenaries or Military Corporations in the galaxy."
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Tibanna Gas"
SWEP.IconOverride = "entities/galexpansion_vol2/gnblaster.png"

-- Base
SWEP.DefaultBodygroups = "000000000000"

SWEP.MirrorVMWM = true
SWEP.UseHands = true
SWEP.ViewModel = "models/arccw/kraken/galexpansion_vol2/v_gendai_blaster.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 65

SWEP.WorldModelOffset = {
    pos = Vector(-14, 6.7, -8),
    ang = Angle(0, 0, -180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

-- Damage & Tracer
SWEP.Jamming = true
SWEP.HeatGain = 1
SWEP.HeatCapacity = 15
SWEP.HeatDissipation = 5
SWEP.HeatLockout = true
SWEP.HeatFix = true
SWEP.HeatDelayTime = 0.5

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1.1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}


SWEP.NoRandSpread = true
SWEP.CanBash = true

SWEP.ShotgunSpreadPattern = {
    [1] = Angle(0, 0, 0),
    [2] = Angle(2.1, 0, 0),
    [3] = Angle(-2.1, 0, 0),
    [4] = Angle(1.4, 1.2, 0),
    [5] = Angle(-1.4, 1.2, 0),
    [6] = Angle(1.4, -1.2, 0),
    [7] = Angle(-1.4, -1.2, 0),
}

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1.1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}

SWEP.Damage = 17
SWEP.DamageMin = 12
SWEP.RangeMin = 0
SWEP.Range = 200
SWEP.Penetration = 8
SWEP.DamageType = DMG_CRUSH
SWEP.MuzzleVelocity = 2000

SWEP.TracerNum = 1
SWEP.TracerCol = Color(250, 0, 0)
SWEP.TracerWidth = 1
SWEP.Tracer = "corruptor_tracer"
SWEP.HullSize = 1

SWEP.AmmoPerShot = 1
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 28

SWEP.Recoil = 1.2
SWEP.RecoilSide = 0.3
SWEP.RecoilRise = 1.6

SWEP.Delay = 60 / 120
SWEP.Num = 7
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 1,
    },
	{
		Mode = 0,
   	}
}

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

SWEP.AccuracyMOA = 30
SWEP.HipDispersion = 250
SWEP.MoveDispersion = 150 
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

SWEP.FirstShootSound = "ArcCW_Kraken.GN76"
SWEP.ShootSound = "ArcCW_Kraken.GN76"
-- SWEP.DistantShootSound = "ArcCW_Kraken.LightCorebass"
SWEP.ShootSoundSilenced = "ArcCW_Kraken.Silenced_Weapons"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_red"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(250, 0, 0)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(-6.123, -4.503, 1.68),
    Ang = Vector(0, 0, 0),
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

SWEP.SprintPos = Vector(-3, -6, -5)
SWEP.SprintAng = Angle(40, 0, 0)

SWEP.CustomizePos = Vector(10, -5, 2)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

SWEP.CrouchPos = Vector(-3, 0, 3)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.ActivePos = Vector(-3, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(4, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

-- Attachments
SWEP.DefaultElements = {"muzzle"}
SWEP.AttachmentElements = {
    ["muzzle"] = {
        VMElements = {
           {
               Model = "models/hunter/plates/plate.mdl",
               Bone = "a180",
               Scale = Vector(0, 0, 0),                
               Offset = {
                   pos = Vector(0.25, -1, 14),
                   ang = Angle(90, 0, -90),
               },
               IsMuzzleDevice = true,
           }
        }, 
    },
    ["integrated_holosight"] = {
        VMBodygroups = {{ind = 1, bg = 1}, {ind = 2, bg = 1}},
    },
}

SWEP.Attachments = {     
    {
        PrintName = "Sight", 
        DefaultAttName = "None",
        Slot = "optic",
        Bone = "a180",
        VMScale = Vector(0.7, 0.7, 0.7),
        WMScale = Vector(0.7, 0.7, 0.7),
        InstalledEles = {"integrated_holosight"},
        Offset = {
            vpos = Vector(0.25, -3.1, 4.6),
            vang = Angle(90, 0, -90),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "None",
        Slot = {"muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle"},
        VMScale = Vector(1.5,1.5,1.5),
        WMScale = Vector(1.5,1.5,1.5),
        Bone = "a180",
        Offset = {
            vpos = Vector(0.25, -1.2, 12),
            vang = Angle(90, 0, -90),
        },
    },  
    {
        PrintName = "Tactical",
        DefaultAttName = "None",
        Slot = {"tactical", "tac_pistol"},
        Bone = "a180",
        VMScale = Vector(0.7, 0.7, 0.7),
        WMScale = Vector(0.7, 0.7, 0.7),
        Offset = {
            vpos = Vector(0.25, -1.2, 9),
            vang = Angle(90, 0, -90),
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
        VMScale = Vector(0.5, 0.5, 0.5),
        WMScale = Vector(0.5, 0.5, 0.5),
        Bone = "a180",
        Offset = {
            vpos = Vector(1.54, -1.22, -0.5),
            vang = Angle(90, 0, -90),
        },
    },    
    {
        PrintName = "Killcounter",
        DefaultAttName = "None",
        Slot = "killcounter",
        VMScale = Vector(0.9, 0.9, 0.9),
        WMScale = Vector(0.9, 0.9, 0.9),
        Bone = "a180",
        Offset = {
            vpos = Vector(1.2, -1.15, 10),
            vang = Angle(90, 0, -90),
        },
    },   
}

-- Don't touch this unless you know what you're doing
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_iron"] = {
        Source = false,
    },
	["fire"] = {
        Source = {"shoot"},
        Mult = 2,
    },
    ["fire_iron"] = {
        Source = {"shoot"},
    },
    ["fix"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        SoundTable = {
            {s = "ArcCW_Kraken.Overheat", t = 1 / 30},
            {s = "ArcCW_Kraken.OverheatFix", t = 45 / 30},
            {s = "ArcCW_Kraken.Grab", t = 43 / 30},
        },
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        Mult = 1.5,
        SoundTable = {
            {s = "ArcCW_Kraken.Overheat", t = 1 / 30},
            {s = "ArcCW_Kraken.OverheatReplenished", t = 45 / 30},
            {s = "ArcCW_Kraken.Grab", t = 43 / 30},
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
