AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Slot = 3

-- Trivia
SWEP.Category = "[ArcCW] Kraken's CGI Galactic pack"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "WESTAR GAU-35"
SWEP.Trivia_Class = "Blaster Heavy Repeater"
SWEP.Trivia_Desc = "Military Blaster Heavy Repeater used along the galaxy. It offers what is necessary and what every blaster should offer to satisfy the needs of its shooter."
SWEP.Trivia_Manufacturer = "Unknown"
SWEP.Trivia_Calibre = "Tibanna Gas"
SWEP.IconOverride = "entities/kraken/cgigalactic/gau35.png"

-- Base
SWEP.MirrorVMWM = true
SWEP.UseHands = true

SWEP.ViewModel = "models/arccw/kraken/cgi_galactic/v_westar_gau.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_dlt19.mdl"

SWEP.ViewModelFOV = 65

SWEP.HideViewmodel = false
SWEP.WorldModelOffset = {
    pos = Vector(2, 6, -11),
    ang = Angle(0, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1,
}

-- Special properties

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

SWEP.Damage = 80
SWEP.DamageMin = 64
SWEP.RangeMin = 0
SWEP.Range = 330
SWEP.Penetration = 8
SWEP.DamageType = DMG_BLAST
SWEP.MuzzleVelocity = 1200

SWEP.TracerNum = 1
SWEP.TracerCol = Color(250, 0, 0)
SWEP.TracerWidth = 1
SWEP.Tracer = "tracer_blue"
SWEP.HullSize = 1

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 100
SWEP.ExtendedClipSize = 150
SWEP.ReducedClipSize = 50

SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 0.3
SWEP.Recoil = 0.5

SWEP.Delay = 60 / 120
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 2,
    },
    {
		Mode = 1,
        Mult_AmmoPerShot = 10,
        Mult_RPM = 0.5,
        Mult_Damage = 5,
        Mult_DamageMin = 5,
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

SWEP.AccuracyMOA = 0.5
SWEP.HipDispersion = 150
SWEP.MoveDispersion = 200
SWEP.JumpDispersion = 1000

-- Speed Mult
SWEP.SpeedMult = 0.8
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.5

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "ar2"
SWEP.ShootVol = 120
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "ArcCW_Kraken.SW_WESTAR35P"
SWEP.ShootSound = "ArcCW_Kraken.SW_WESTAR35P"
-- SWEP.DistantShootSound = "ArcCW_Kraken.HeavyCorebass"
SWEP.ShootSoundSilenced = "ArcCW_Kraken.Silenced_Weapons"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_red"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(250, 0, 0)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0),
     Magnification = 1,
     SwitchToSound = "arccw/kraken/interaction/zoom-in.wav",
     SwitchFromSound = "arccw/kraken/interaction/zoom-out.wav",
     ViewModelFOV = 55,
}

-- Holdtype
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "rpg"
SWEP.HoltypeCustomize = "slam"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 4, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 3, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10, 0, 0)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

SWEP.HolsterPos = Vector(3, 0, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

-- Attachments
--[[
SWEP.Attachments = {
    {
        PrintName = "Sight", 
        DefaultAttName = "None",
        Slot = "optic",
        Bone = "tag_weapon",
        VMScale = Vector(1,1,1),
        WMScale = Vector(1,1,1),
        Offset = {
            vpos = Vector(-1.5, -0.2, 6),
            vang = Angle(0, 0, 0),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
    },
    {
        PrintName = "Internal Compression",
        DefaultAttName = "None",
        Slot = {"muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "None",
        Slot = {"tactical", "tac_pistol"},
        Bone = "tag_weapon",
        VMScale = Vector(1,1,1),
        WMScale = Vector(1,1,1),
        Offset = {
            vpos = Vector(-5, 2.5, 3),
            vang = Angle(0, 0, -90),
        },
    },
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
    {
        PrintName = "Charm",
        DefaultAttName = "None",
        Slot = "charm",
        VMScale = Vector(0.7, 0.7, 0.7),
        WMScale = Vector(0.7, 0.7, 0.7),
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(-4, -2.9, 4),
            vang = Angle(0, 0, 0),
        },
    },    
    {
        PrintName = "Killcounter",
        DefaultAttName = "None",
        Slot = "killcounter",
        VMScale = Vector(1,1,1),
        WMScale = Vector(1,1,1),
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(-6.5, -3, 4),
            vang = Angle(0, 0, 0),
        },
    },   
}
]]
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1 / 30,
    },
    ["draw"] = {
        Source = "idle",
    },
    ["holster"] = {
        Source = "idle",
    },
    ["fire"] = {
        -- Source = {"fire"},
        Source = {"fire_spin"},
        Time = 1,
    },
    ["idle_iron"] = {
        Source = "spinup",
        Time = 4 / 60,
    },
    ["fire_iron"] = {
        Source = {"fire_spin"},
        Time = 1,
    },
    ["reload"] = {
        Source = "overheat",
        Time = 130 / 30,
        SoundTable = {
            {s = "ArcCW_Kraken.Overheat", t = 1 / 30},
            {s = "ArcCW_Kraken.OverheatFix", t = 60 / 30},
            {s = "ArcCW_Kraken.Grab", t = 65 / 30},
        },
    },
}

-- Special properties
SWEP.Hook_ModifyRPM = function(wep, delay)
    return delay / Lerp(wep:GetBurstCount() / 15, 1, 3)
end