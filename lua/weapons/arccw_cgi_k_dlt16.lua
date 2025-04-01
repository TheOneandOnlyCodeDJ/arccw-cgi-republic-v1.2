AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true

SWEP.Slot = 3

SWEP.Category = "[ArcCW] Kraken's CGI Essentials - Republic"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "DLT-16"
SWEP.Trivia_Class = "Blaster, Heavy Rifle"
SWEP.Trivia_Desc = "Experimental repeater. The DLT-16 heavy blaster rifle was a model of heavy blaster rifle manufactured by BlasTech Industries. They were used by regular Colne Troopers and Heavy Weapons Clone Troopers of the Galactic Republic, but they also saw use by other parties, including certain bounty hunters."
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Laser Bolt"
SWEP.Trivia_Mechanism = "Condensed Tibanna-Gas"
SWEP.Trivia_Country = "Galactic Republic"
SWEP.IconOverride = "entities/arccw/kraken/cgi/dlt16.png"

-- Base
SWEP.DefaultBodygroups = "000000000000"
SWEP.MirrorVMWM = true
SWEP.UseHands = true
SWEP.ViewModel = "models/kraken/cgi/v_cgi_dlt16.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 65

SWEP.WorldModelOffset = {
    pos = Vector(-8, 5, -6),
    ang = Angle(0, 7, 180),
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

SWEP.Damage = 35
SWEP.DamageMin = 24
SWEP.RangeMin = 0
SWEP.Range = 300
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 1200

SWEP.TracerNum = 1
SWEP.TracerCol = Color(0, 0, 250)
SWEP.TracerWidth = 10
SWEP.Tracer = "tracer_blue"
SWEP.HullSize = 1

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 100

SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 0.4
SWEP.Recoil = 1.4

SWEP.Delay = 60 / 420
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

SWEP.AccuracyMOA = 0.5
SWEP.HipDispersion = 350
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 1000

-- Speed Mult
SWEP.SpeedMult = 0.875
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.8

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "ar2"
SWEP.ShootVol = 120
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.3

SWEP.FirstShootSound = "kraken/cgi/dlt16/dlt19_2.wav"
SWEP.ShootSound = "kraken/cgi/dlt16/dlt19_8.wav"
SWEP.DistantShootSound = "ArcCW_Kraken.HeavyCorebass"
SWEP.ShootSoundSilenced = "kraken/cgi/dc19/dc19.wav"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_blue"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(0, 0, 250)

-- Ironsight
SWEP.ReloadInSights = true
SWEP.ReloadInSights_CloseIn = 0.25
SWEP.ReloadInSights_FOVMult = 0.875

SWEP.IronSightStruct = {
    Pos = Vector(-3.093, -2.257, 1.6),
    Ang = Angle(1.225, 0, 0), -- Fixed from Vector to Angle
    Magnification = 1,
    SwitchToSound = "arccw/kraken/interaction/zoom-in.wav",
    SwitchFromSound = "arccw/kraken/interaction/zoom-out.wav",
    ViewModelFOV = 55,
}
-- Holdtype
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "crossbow"
SWEP.HoldtypeSights = "rpg"
SWEP.HoltypeCustomize = "slam"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(4.019, -5.226, -0.805)
SWEP.SprintAng = Angle(5, 40, 0)

SWEP.CustomizePos = Vector(10, 0, 0)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

SWEP.HolsterPos = Vector(4, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

SWEP.InBipodPos = Vector(-8, 0, -4)
SWEP.InBipodMult = Vector(2, 0, 1)

-- Attachments
SWEP.DefaultElements = {"muzzle"}
SWEP.AttachmentElements = {
    ["e11_scope"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["e11_laser"] = {
        VMBodygroups = {{ind = 4, bg = 1},},
    },
    ["e11_grip"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["e11_muzzle"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["republic_bipod"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["muzzle"] = {
        VMElements = {
           {
               Model = "models/hunter/plates/plate.mdl",
               Bone = "DC_15X_Rifle",
               Scale = Vector(0, 0, 0),                
               Offset = {
                   pos = Vector(-2, 30, -3),
                   ang = Angle(-90, 180, 0)
               },
               IsMuzzleDevice = true
           }
        }
    }
}

SWEP.Attachments = {
    -- {
    --     PrintName = "Optic",
    --     DefaultAttName = "None",
    --     Slot = {"optic"},
    --     Bone = "DC_15X_Rifle",
    --     InstalledEles = {"e11_scope"},
    --     WMScale = Vector(0.9, 0.9, 0.9),
    --     VMScale = Vector(0.9, 0.9, 0.9),
    --     Offset = {
    --         vpos = Vector(-0.06, -3, 1.95),
    --         vang = Angle(0, -90, 0),
    --     },
    --     CorrectiveAng = Angle(0, 180, 0),
    --     CorrectivePos = Vector(0, 0, 0),
    -- },
    -- {
    --     PrintName = "Tactical",
    --     DefaultAttName = "None",
    --     Slot = {"tactical", "tac_pistol", "tac"},
    --     Bone = "DC_15X_Rifle",
    --     WMScale = Vector(0.7, 0.7, 0.7),
    --     VMScale = Vector(0.7, 0.7, 0.7),
    --     InstalledEles = {"e11_laser"},
    --     Offset = {
    --         vpos = Vector(0.8 , 14.5, 0.5),
    --         vang = Angle(0, -90, 90),
    --     },
    -- },
    -- {
    --     PrintName = "Muzzle",
    --     DefaultAttName = "DLT-16 Muzzle",
    --     Slot = {"muzzle", "dlt19_muzzle", "dc15a_muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle", "b1120_muzzle"},
    --     Bone = "DC_15X_Rifle",
    --     InstalledEles = {"e11_muzzle"},
    --     WMScale = Vector(1, 1, 1),
    --     Offset = {
    --         vpos = Vector(-0.1, 28.5, 0.5),
    --         vang = Angle(0, -90, 0),
    --     },
    -- },
    {
        PrintName = "Foregrip",
        DefaultAttName = "None",
        Slot = {"republic_bipod", "foregrip"},
        WMScale = Vector(0.8, 0.8, 0.8),
        VMScale = Vector(0.8, 0.8, 0.8),
        Bone = "DC_15X_Rifle",
        InstalledEles = {"e11_grip"},
        Offset = {
            vpos = Vector(0, 9.5, -0.6),
            vang = Angle(90, -90, -90),   
        },
    }
    -- {
    --     PrintName = "Mode",
    --     DefaultAttName = "None",
    --     Slot = {"sw_mode", "sw_mode_rifle"},
    -- },   
    -- {
    --     PrintName = "Energization",
    --     DefaultAttName = "Standard",
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
    --     Bone = "DC_15X_Rifle",
    --     VMScale = Vector(0.8, 0.8, 0.8),
    --     WMScale = Vector(0.8, 0.8, 0.8),
    --     Offset = {
    --         vpos = Vector(0.25, -4.5, -0.75),
    --         vang = Angle(0, -90, 0),
    --     },
    -- },
    -- {
    --     PrintName = "Killcounter",
    --     DefaultAttName = "None",
    --     Slot = {"killcounter"},
    --     Bone = "DC_15X_Rifle",
    --     VMScale = Vector(1, 1, 1),
    --     WMScale = Vector(1, 1, 1),
    --     Offset = {
    --         vpos = Vector(1.35, -7, 0.8),
    --         vang = Angle(0, -90, 0),
    --     },
    -- },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["fire"] = {
        Source = "fire"
    },
    ["idle_iron"] = {
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
        Mult = 1.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
            {s = "arccw/kraken/empire/dlt19/handling/magrelease.wav", t = 0.2 },
            {s = "arccw/kraken/empire/dlt19/handling/magout.wav", t = 0.4 },
            {s = "arccw/kraken/empire/dlt19/handling/mag_fetch.wav", t = 0.6 },   
            {s = "arccw/kraken/empire/dlt19/handling/magin.wav", t = 1.4 },   
            {s = "arccw/kraken/empire/dlt19/handling/boltback.wav", t = 1.6 },   
        },
    },
}
