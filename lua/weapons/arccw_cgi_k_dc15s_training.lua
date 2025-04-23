AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true

SWEP.Slot = 3

SWEP.Category = "[ArcCW] CN Republic Weapons"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "DC-15s Training"
SWEP.Trivia_Class = "Blaster, Carbine"
SWEP.Trivia_Desc = "The DC-15S, also referred to as the DC-15 blaster and DC15 carbine, was the blaster carbine variant of BlasTech's DC-15A blaster rifle, not to be confused with the DC-15A itself. This weapon was carried by the clone troopers of the Galactic Republic during the Clone Wars. It was also in service in the earlier years of the Galactic Empire."
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Laser Bolt"
SWEP.Trivia_Mechanism = "Condensed Tibanna-Gas"
SWEP.Trivia_Country = "Galactic Republic"
SWEP.IconOverride = "entities/arccw/kraken/cgi/15s_training.png"

-- Base
SWEP.DefaultBodygroups = "000000000000"
SWEP.MirrorVMWM = true
SWEP.UseHands = true
SWEP.ViewModel = "models/kraken/cgi/v_cgi_dc15s.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 60

SWEP.WorldModelOffset = {
    pos = Vector(-8, 4, -4),
    ang = Angle(-10, 0, -180),
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

SWEP.Damage = 1
SWEP.DamageMin = 1
SWEP.RangeMin = 0
SWEP.Range = 300
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 2000

SWEP.TracerNum = 1
SWEP.TracerCol = Color(250, 158, 0)
SWEP.TracerWidth = 1
SWEP.Tracer = "tracer_orange"
SWEP.HullSize = 1

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 35

SWEP.RecoilSide = 0.25
SWEP.RecoilRise = 0.45
SWEP.Recoil = 0.75

SWEP.Delay = 60 / 250
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 2,
    },
    {
        Mode = -3,
        PostBurstDelay = 0.1,
        RunawayBurst = false,
        Mult_RPM = 3,
    },
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

SWEP.AccuracyMOA = 0.5
SWEP.HipDispersion = 250
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 500

-- Speed Mult
SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.9

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "ar2"
SWEP.ShootVol = 120
SWEP.ShootPitch = 95
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "kraken/cgi/dc15/dc15s.wav"
SWEP.ShootSound = "kraken/cgi/dc15/dc15s.wav"
-- SWEP.DistantShootSound = "ArcCW_Kraken.StandardCorebass"
SWEP.ShootSoundSilenced = "kraken/cgi/dc19/dc19.wav"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_red"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(250, 158, 0)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(-2.882, 0, 1.98),
    Ang = Vector(0, 0.142, 0),
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
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1

SWEP.ActivePos = Vector(0, 6, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(4.019, -5.226, -2)
SWEP.SprintAng = Angle(5, 40, 0)

SWEP.CrouchPos = Vector(-4.5, -2, -1)
SWEP.CrouchAng = Angle(0, 0, -29)

SWEP.CustomizePos = Vector(10, 0, 0)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

SWEP.HolsterPos = Vector(4, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

-- Attachments
SWEP.DefaultElements = {}
SWEP.AttachmentElements = {
    ["e11_grip"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
}

-- SWEP.Attachments = {
--     {
--         PrintName = "Sight",
--         DefaultAttName = "Standard DC-15s Sight",
--         Slot = "optic",
--         VMScale = Vector(0.9, 0.9, 0.9),
--         WMScale = Vector(0.9, 0.9, 0.9),
--         Bone = "DC15",
--         Offset = {
--             vpos = Vector(-0.1, -1.6, -4),
--             vang = Angle(90, 0, -90),
--         },
--         CorrectiveAng = Angle(0, 0, 0),
--         CorrectivePos = Vector(0, 0, 0),
--     },
--     {
--         PrintName = "Muzzle",
--         DefaultAttName = "None",
--         Slot = {"muzzle", "dlt19_muzzle", "dc15a_muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle", "b1120_muzzle"},
--         Bone = "DC15",
--         VMScale = Vector(1.2,1.2,1.2),
--         WMScale = Vector(1.2,1.2,1.2),
--         Offset = {
--             vpos = Vector(-0.1, -0.4, 10.5),
--             vang = Angle(90, 0, 0),
--         },
--     },
--     {
--         PrintName = "Tactical",
--         DefaultAttName = "None",
--         Slot = {"tactical", "tac_pistol"},
--         Bone = "DC15",
--         VMScale = Vector(0.7,0.7,0.7),
--         WMScale = Vector(0.7,0.7,0.7),
--         Offset = {
--             vpos = Vector(0.6, -0.4, 7),
--             vang = Angle(90, 0, 0),
--         },
--     },
--     {
--         PrintName = "Foregrip",
--         DefaultAttName = "Standard",
--         Slot = {"foregrip"},
--         Bone = "DC15",
--         InstalledEles = {"e11_grip"},
--         VMScale = Vector(0.9, 0.9, 0.9),
--         WMScale = Vector(0.9, 0.9, 0.9),
--         Offset = {
--             vpos = Vector(-0, 0.65, 3),
--             vang = Angle(90, 0, -90),   
--         },  
--     },
--     {
--         PrintName = "Mode",
--         DefaultAttName = "None",
--         Slot = {"sw_mode", "sw_mode_rifle"},
--     },   
--     {
--         PrintName = "Energization",
--         DefaultAttName = "Standard",
--         Slot = {"ammo", "special_ammo", "sw_ammo"}
--     },
--     {
--         PrintName = "Perk",
--         DefaultAttName = "None",
--         Slot = "perk",
--     },
--     {
--         PrintName = "Charm",
--         DefaultAttName = "None",
--         Slot = {"charm"},
--         Bone = "DC15",
--         VMScale = Vector(0.7, 0.7, 0.7),
--         Offset = {
--             vpos = Vector(0.95, -0.2, -4),
--             vang = Angle(90, 0, -90),
--         },
--     },
--     {
--         PrintName = "Killcounter",
--         DefaultAttName = "None",
--         Slot = {"killcounter"},
--         Bone = "DC15",
--         VMScale = Vector(0.9, 0.9, 0.9),
--         Offset = {
--             vpos = Vector(0.95, -0.2, -8),
--             vang = Angle(90, 0, -90),
--         },
--     },
-- }

-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = "neutral",
    },
    ["fire"] = {
        Source = "fire"
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
        Mult = 1.2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
            {s = "weapon_hand/reload_heavy/mag_eject/023d-00000080.mp3", t = 10 / 60},
            {s = "weapon_hand/reload_gentle/mag_load/023d-00000648.mp3", t = 60 / 60},
            {s = "weapon_hand/reload_gentle/mag_load/023d-00000668.mp3", t = 70 / 60},
        },
    },
}