AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Slot = 3

-- Trivia
SWEP.Category = "[ArcCW] Kraken's CGI Galactic pack"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "WESTAR M5 Sniper"
SWEP.Trivia_Class = "Blaster Sniper Rifle"
SWEP.Trivia_Desc = "Military Blaster Sniper Rifle used along the galaxy. It offers what is necessary and what every blaster should offer to satisfy the needs of its shooter."
SWEP.Trivia_Manufacturer = "Unknown"
SWEP.Trivia_Calibre = "Tibanna Gas"
SWEP.IconOverride = "entities/kraken/cgigalactic/westarm5s.png"

-- Base
SWEP.DefaultBodygroups = "000000000000"
SWEP.MirrorVMWM = true
SWEP.UseHands = true
SWEP.ViewModel = "models/arccw/kraken/cgi_galactic/v_westarm5s.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_dlt19.mdl"

SWEP.ViewModelFOV = 60

SWEP.WorldModelOffset = {
    pos = Vector(-10, 3, -3.4),
    ang = Angle(-15, 0, -180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1.5,
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
SWEP.DamageMin = 180
SWEP.RangeMin = 0
SWEP.Range = 600
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 2000

SWEP.TracerNum = 1
SWEP.TracerCol = Color(250, 0, 0)
SWEP.TracerWidth = 1
SWEP.Tracer = "tracer_blue"
SWEP.HullSize = 1

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 16

SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 0.2
SWEP.Recoil = 0.2

SWEP.Delay = 60 / 120
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 1,
    },
    {
		Mode = -2,
        Mult_RPM = 5,
        PostBurstDelay = 0.8,
        Mult_Recoil = 5,
        RunawayBurst = true,
    },
	{
		Mode = 0,
    }
}

SWEP.AccuracyMOA = 0.5
SWEP.HipDispersion = 100
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 500
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
-- Speed Mult
SWEP.SpeedMult = 0.925
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.9

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "ar2"
SWEP.ShootVol = 120
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "ArcCW_Kraken.SW_WESTARM5SNIPER"
SWEP.ShootSound = "ArcCW_Kraken.SW_WESTARM5SNIPER"
-- SWEP.DistantShootSound = "ArcCW_Kraken.HeavyCorebass"
SWEP.ShootSoundSilenced = "ArcCW_Kraken.Silenced_Weapons"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_red"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(250, 0, 0)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(-3.125, -0, 1.8),
    Ang = Angle(1, 0, 0),
     Magnification = 1.5,
     SwitchToSound = "arccw/kraken/interaction/zoom-in.wav",
     SwitchFromSound = "arccw/kraken/interaction/zoom-out.wav",
     ViewModelFOV = 55,
}

-- Holdtype
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"
SWEP.HoltypeCustomize = "slam"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, -1, 3)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(4.019, -5.226, -0.805)
SWEP.SprintAng = Angle(5, 40, 0)

SWEP.CrouchPos = Vector(-4.5, -2, 1.5)
SWEP.CrouchAng = Angle(0, 0, -29)

SWEP.CustomizePos = Vector(10, 4, 0)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

SWEP.HolsterPos = Vector(4, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

-- Attachments
SWEP.DefaultElements = {"muzzle"}
SWEP.AttachmentElements = {
    ["integrated_holosight"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["galactic_bipod"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["muzzle"] = {
        VMElements = {
           {
               Model = "models/hunter/plates/plate.mdl",
               Bone = "weapon",
               Scale = Vector(0, 0, 0),                
               Offset = {
                   pos = Vector(-0.15, -1, 20),
                   ang = Angle(90, 0, -90)
               },
               IsMuzzleDevice = true
           }
        }
    }
}

SWEP.Attachments = {
	{
		PrintName = "Sight",
		DefaultAttName = "None",
		Slot = "optic",
        InstalledEles = {"integrated_holosight"},
        VMScale = Vector(0.7, 0.7, 0.7),
        WMScale = Vector(0.7, 0.7, 0.7),
		Bone = "weapon",
		Offset = {
            vpos = Vector(0.0, -2., 2.8),
            vang = Angle(90, 0, -90),
        },
	},
    --[[
    {
        PrintName = "Muzzle",
        DefaultAttName = "None",
        Slot = {"muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle"},
        VMScale = Vector(1.3,1.3,1.3),
        WMScale = Vector(1.3,1.3,1.3),
        Bone = "weapon",
        Offset = {
            vpos = Vector(-0.15, -1, 22),
            vang = Angle(90, 0, -90),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "None",
        Slot = {"tactical", "tac_pistol"},
		Bone = "weapon",
        VMScale = Vector(0.5, 0.5, 0.5),
        WMScale = Vector(0.5, 0.5, 0.5),
        Offset = {
            vpos = Vector(-1.2, -0.8, 6.2),
            vang = Angle(90, 0, -180),
        },
    },
    ]]
    {
        PrintName = "Underbarrel",
        DefaultAttName = "None",
        Slot = {"galactic_bipod"},
        Bone = "weapon",
    },
    --[[
    {
        PrintName = "Energization", 
        DefaultAttName = "Standard",
        Slot = {"ammo", "special_ammo"}
    },
    {
        PrintName = "Mode",
        DefaultAttName = "None",
        Slot = {"sw_mode", "sw_mode_rifle"},
    },   
    {
        PrintName = "Perk", 
        DefaultAttName = "None",
        Slot = "perk",
    },  
    {
        PrintName = "Charms", 
        DefaultAttName = "None",
        Slot = {"charm"},
		Bone = "weapon",
        VMScale = Vector(0.6, 0.6, 0.6),
        WMScale = Vector(0.7, 0.7, 0.7),
        Offset = {
            vpos = Vector(0.76, -1.6, .4),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Killcounter",
        DefaultAttName = "None",
        Slot = {"killcounter"},
        Bone = "weapon",
        VMScale = Vector(0.7, 0.7, 0.7),
        WMScale = Vector(0.7, 0.7, 0.7),
        Offset = {
            vpos = Vector(0.45, -1, -2),
            vang = Angle(90, 0, -90),
        },
    },   
    --]]
}

-- Don't touch this unless you know what you're doing
-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = false,
    },
	["fire"] = {
        Source = {"shoot"},
    },
    ["fire_iron"] = {
        Source = false,
    },
	["idle_sights"] = {
        Source = false,
    },
	["reload"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		SoundTable = {
	        {s = "weapon_hand/reload_heavy/mag_eject/023d-000005b2.mp3", t = 0.1 },
            {s = "weapon_hand/reload_heavy/mag_load/023d-0000054d.mp3", t = 1 }
        },
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
}