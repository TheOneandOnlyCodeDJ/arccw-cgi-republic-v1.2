AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true

SWEP.Slot = 2

SWEP.Category = "[ArcCW] Kraken's CGI Essentials - Republic"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "DC-17m Rifle"
SWEP.Trivia_Class = "Blaster, Rifle"
SWEP.Trivia_Desc = "The DC-17m Interchangeable Weapon System, also known as the DC-17m Repeating Blaster Rifle, or DC-17M ICWS, was a type of repeating blaster rifle used by Republic clone commandos during the Clone Wars. It could change between a repeating blaster rifle and grenade launcher by switching the weapon's barrel module. The weapon was also used by pirates from Hondo Ohnaka's gang."
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Laser Bolt"
SWEP.Trivia_Mechanism = "Condensed Tibanna-Gas"
SWEP.Trivia_Country = "Galactic Republic"
SWEP.IconOverride = "entities/arccw/kraken/cgi/17m_rifle.png"

-- Viewmodel & Entity Properties
SWEP.DefaultBodygroups = "000000000000"
SWEP.UseHands = true
SWEP.MirrorVMWM = true
SWEP.ViewModel = "models/kraken/cgi/v_cgi_dc17m_rifle.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 60

SWEP.WorldModelOffset = {
    pos = Vector(-13.4, 7, -3.6),
    ang = Angle(-15, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

-- Damage and things
SWEP.Damage = 42
SWEP.DamageMin = 39
SWEP.RangeMin = 0
SWEP.Range = 500
SWEP.Penetration = 2
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 800

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

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 50

SWEP.RecoilSide = 0
SWEP.RecoilRise = 0
SWEP.Recoil = 0.1

SWEP.Delay = 60 / 480
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 2,
    },
    -- {
    --     Mode = -3,
    --     PostBurstDelay = 0.1,
    --     RunawayBurst = false,
    --     Mult_RPM = 3,
    -- },
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

SWEP.AccuracyMOA = 0
SWEP.HipDispersion = 100
SWEP.MoveDispersion = 50
SWEP.JumpDispersion = 250

-- Speed Mult
SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.9

-- Sounds & Muzzleflash
SWEP.Primary.Ammo = "ar2"
SWEP.ShootVol = 100
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "kraken/cgi/dc17m/normal.mp3"
SWEP.ShootSound = "kraken/cgi/dc17m/normal.mp3"
SWEP.DistantShootSound = "ArcCW_Kraken.StandardCorebass"
SWEP.ShootSoundSilenced = "kraken/cgi/dc19/dc19.wav"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_blue"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(0, 0, 250)

-- Ironsight & Holdtype
SWEP.IronSightStruct = {
    Pos = Vector(-6.526, -7.238, 0.712),
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

SWEP.HolsterPos = Vector(4, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

-- Attachments 
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
--         PrintName = "Mode",
--         DefaultAttName = "None",
--         Slot = {"sw_mode", "sw_mode_rifle"},
--     },   
--     {
--         PrintName = "Energization",
--         DefaultAttName = "Standard",
--         Slot = {"ammo"},
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
            {s = "weapon_hand/reload_gentle/mag_load/023d-00000648.mp3", t = 90 / 60},
            {s = "weapon_hand/reload_gentle/mag_load/023d-00000668.mp3", t = 110 / 60},
        },
    },
}