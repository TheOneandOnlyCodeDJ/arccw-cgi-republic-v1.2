AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Slot = 2 

-- Trivia
SWEP.Category = "[ArcCW] Kraken's Galactic Expansion - Vol. I"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "DE-18 Akimbo"
SWEP.Trivia_Class = "Blaster Pistol"
SWEP.Trivia_Desc = "Blaster Pistol designed originally for military purposes, now modernized and being used by many Bounty Hunters, Civillians and even Mercenaries or Military Corporations in the galaxy."
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Tibanna Gas"
SWEP.IconOverride = "entities/kraken/galactic/de18_akimbo.png"

-- Viewmodel & Entity Properties
SWEP.UseHands = true

SWEP.ViewModel = "models/arccw/kraken/galactic/v_akimbo_de18.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 65

SWEP.NoHideLeftHandInCustomization = true
SWEP.WorldModelOffset = {
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 0.09
}

-- Damage & Tracer
SWEP.Jamming = true
SWEP.HeatGain = 1
SWEP.HeatCapacity = 12
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

SWEP.Damage = 72
SWEP.DamageMin = 39
SWEP.RangeMin = 0
SWEP.Range = 170
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 2000

SWEP.TracerNum = 1
SWEP.TracerCol = Color(179, 0, 250)
SWEP.TracerWidth = 1
SWEP.Tracer = "tracer_purple"
SWEP.HullSize = 1

SWEP.AmmoPerShot = 1
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 30

SWEP.Recoil = 2
SWEP.RecoilSide = 0.65
SWEP.RecoilRise = 0.85
SWEP.RecoilPunch = 1.5

SWEP.Delay = 60 / 160
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 1,
    },
    {
        Mode = -3,
        PostBurstDelay = 0.1,
        RunawayBurst = false,
        Mult_RPM = 2,
    },
	{
		Mode = 0,
   	}
}

local s = "ArcCW_Kraken.OverheatWarn"
local p = {
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

SWEP.AccuracyMOA = 0.5
SWEP.HipDispersion = 100
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

SWEP.FirstShootSound = "ArcCW_Kraken.SW_DE18"
SWEP.ShootSound = "ArcCW_Kraken.SW_DE18"
-- SWEP.DistantShootSound = "ArcCW_Kraken.LightCorebass"
SWEP.ShootSoundSilenced = "ArcCW_Kraken.RifleSupp"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = false
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(179, 0, 250)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0),
     Magnification = 1.5,
     SwitchToSound = "arccw/kraken/interaction/zoom-in.wav",
     SwitchFromSound = "arccw/kraken/interaction/zoom-out.wav",
     ViewModelFOV = 50,
}

-- Holdtype
SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "duel"
SWEP.HoldtypeSights = "duel"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, -4, -17)
SWEP.SprintAng = Angle(40, 0, 0)

SWEP.ReloadPos = Vector(0, -5, -0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Vector(-15, 0, 0)

SWEP.CustomizePos = Vector(-0.5, -8, -4.897)
SWEP.CustomizeAng = Angle(10, 0, 0)

-- Attachments
SWEP.DefaultElements = {"de18dual"}
SWEP.AttachmentElements = {
    ["de18dual"] = {
        WMElements = {
            {
                Model = "models/arccw/kraken/galactic/v_de18.mdl",
                Bone = "ValveBiped.Bip01_R_Hand",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(-200, 70, -65),
                    ang = Angle(180, -180, 2)
                }
            },
            {
                Model = "models/arccw/kraken/galactic/v_de18.mdl",
                Bone = "ValveBiped.Bip01_L_Hand",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(-300, 290, -110),
                    ang = Angle(180, -180, 2)
                }
            },
        },   
    }
}WMOverride = "models/arccw/kraken/galactic/v_de18.mdl"

SWEP.Attachments = {
    {
        PrintName = "Energization",
        DefaultAttName = "Standard",
        Slot = {"ammo", "special_ammo"}
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
}

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
            {s = "ArcCW_Kraken.Overheat", t = 1 / 30},
            {s = "ArcCW_Kraken.OverheatReplenished", t = 20 / 30},
            {s = "ArcCW_Kraken.Grab", t = 35 / 30},
        },
    },
    ["fix"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PHYSGUN,
        LHIK = true,
        SoundTable = {
            {s = "ArcCW_Kraken.Overheat", t = 1 / 30},
            {s = "ArcCW_Kraken.OverheatReplenished", t = 20 / 30},
            {s = "ArcCW_Kraken.Grab", t = 35 / 30},
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