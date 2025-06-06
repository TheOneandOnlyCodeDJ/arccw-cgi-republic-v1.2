AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.CanFireUnderwater = true
SWEP.Spawnable = true

SWEP.Slot = 3

SWEP.Category = "[ArcCW] CN Republic Weapons"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "DC-19"
SWEP.Trivia_Class = "Blaster, Stealth Carbine"
SWEP.Trivia_Desc = "The DC-19 'Stealth' carbine was a blaster carbine in BlasTech Industries' DC-15 blaster line. The DC-19 was equipped with a sound suppressor unit for silent operations and an optional stealth function, which used a refined tibanna gas mixture that made the DC-19's plasma bolts invisible to the naked eye."
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Laser Bolt"
SWEP.Trivia_Mechanism = "Condensed Tibanna-Gas"
SWEP.Trivia_Country = "Galactic Republic"
SWEP.IconOverride = "entities/arccw/kraken/cgi/dc19.png"

-- Base
SWEP.DefaultBodygroups = "01000000000"
SWEP.MirrorVMWM = true
SWEP.UseHands = true
SWEP.ViewModel = "models/kraken/cgi/v_cgi_dc19.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 60

SWEP.WorldModelOffset = {
    pos = Vector(-9, 3.4, -4),
    ang = Angle(-10, 0, -180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1.1,
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

SWEP.Damage = 44
SWEP.DamageMin = 44
SWEP.RangeMin = 0
SWEP.Range = 400
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 2000

SWEP.AlwaysPhysBullet = false
SWEP.PhysTracerProfile = 0

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 36

SWEP.RecoilSide = 0
SWEP.RecoilRise = 0
SWEP.Recoil = 0.1

SWEP.Delay = 60 / 300
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

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "ar2"
SWEP.ShootVol = 120
SWEP.ShootPitch = 95
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "kraken/cgi/dc19/dc19.wav"
SWEP.ShootSound = "kraken/cgi/dc19/dc19.wav"
-- SWEP.DistantShootSound = "ArcCW_Kraken.LightCorebass"
SWEP.ShootSoundSilenced = "kraken/cgi/dc19/dc19.wav"

SWEP.TracerNum = 1
SWEP.TracerCol = Color(255, 255, 255) -- White
SWEP.TracerWidth = 1
SWEP.Tracer = "emg_tracer"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = false
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = false

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(-2.98, -2.8, 2.112),
    Ang = Vector(0, 0, 0),
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

SWEP.ActivePos = Vector(0, 2, 0)
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
    ["e11_scope"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["e11_laser"] = {
        VMBodygroups = {{ind = 3, bg = 1},},
    },
    ["dc19_stock"] = {
        VMBodygroups = {{ind = 1, bg = 0}},
    },
}

SWEP.Attachments = {
    {
        PrintName = "Sight",
        DefaultAttName = "Standard DC-15s Sight",
        Slot = "optic",
        VMScale = Vector(0.8, 0.8, 0.8),
        WMScale = Vector(0.8, 0.8, 0.8),
        Bone = "DC15",
        Offset = {
            vpos = Vector(-0.1, -1.4, -3),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"e11_scope"},
        CorrectiveAng = Angle(0, 0, 0),
        CorrectivePos = Vector(0, 0, 0),
    },
    -- {
    --     PrintName = "Muzzle",
    --     DefaultAttName = "None",
    --     Slot = {"e11_k_muzzles", "muzzle", "dlt19_muzzle", "dc15a_muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle", "b1120_muzzle"},
    --     Bone = "DC15",
    --     VMScale = Vector(1, 1,1),
    --     WMScale = Vector(1, 1,1),
    --     Offset = {
    --         vpos = Vector(-0.1, -0.45, 8.7),
    --         vang = Angle(90, 0, 0),
    --     },
    -- },
    -- {
    --     PrintName = "Tactical",
    --     DefaultAttName = "None",
    --     Slot = {"tactical", "tac_pistol"},
    --     Bone = "DC15",
    --     InstalledEles = {"e11_laser"},
    --     VMScale = Vector(0.7,0.7,0.7),
    --     WMScale = Vector(0.7,0.7,0.7),
    --     Offset = {
    --         vpos = Vector(0.8, -0.4, 6),
    --         vang = Angle(90, 0, 0),
    --     },
    -- },
    -- {
    --     PrintName = "Foregrip",
    --     DefaultAttName = "Standard",
    --     Slot = {"foregrip", "dc19_grip"},
    --     Bone = "DC15",
    --     VMScale = Vector(0.9, 0.9, 0.9),
    --     WMScale = Vector(0.9, 0.9, 0.9),
    --     Offset = {
    --         vpos = Vector(-0, 0, 4),
    --         vang = Angle(90, 0, -90),   
    --     },  
    -- },
    -- {
    --     PrintName = "Mode",
    --     DefaultAttName = "None",
    --     Slot = {"sw_mode", "sw_mode_rifle"},
    -- },   
    {
        PrintName = "Stock",
        DefaultAttName = "None",
        Slot = {"dc19_stock"}
    }
    -- {
    --     PrintName = "Energization",
    --     DefaultAttName = "Red Tibanna",
    --     Slot = {"ammo", "special_ammo"}
    -- },
    -- {
    --     PrintName = "Perk",
    --     DefaultAttName = "None",
    --     Slot = "perk",
    -- },
    -- {
    --     PrintName = "Charm",
    --     DefaultAttName = "None",
    --     Slot = {"charm"},
    --     Bone = "DC15",
    --     VMScale = Vector(0.7, 0.7, 0.7),
    --     Offset = {
    --         vpos = Vector(0.73, -0.2, -1),
    --         vang = Angle(90, 0, -90),
    --     },
    -- },
    -- {
    --     PrintName = "Killcounter",
    --     DefaultAttName = "None",
    --     Slot = {"killcounter"},
    --     Bone = "DC15",
    --     VMScale = Vector(0.9, 0.9, 0.9),
    --     Offset = {
    --         vpos = Vector(0.75, -0.2, -7),
    --         vang = Angle(90, 0, -90),
    --     },
    -- },
}

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