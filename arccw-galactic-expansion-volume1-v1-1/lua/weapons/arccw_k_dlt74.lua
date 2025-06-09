AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Slot = 3 

-- Trivia
SWEP.Category = "[ArcCW] Kraken's Galactic Expansion - Vol. I"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "DLT-74"
SWEP.Trivia_Class = "Outer Rim Machine Gun"
SWEP.Trivia_Desc = "Old Weapon used by the Humans during the Old Republic wars. Now, it's a cheap and powerful option for Mercenaries or Military."
SWEP.Trivia_Manufacturer = "Unknown"
SWEP.Trivia_Calibre = "Tibanna Gas"
SWEP.IconOverride = "entities/kraken/galactic/dlt74.png"

-- Viewmodel & Entity Properties
SWEP.DefaultBodygroups = "00000000000000000"

SWEP.HideViewmodel = false
SWEP.MirrorVMWM = true
SWEP.UseHands = true
SWEP.MirrorWorldModel = "models/arccw/kraken/galactic/mirror_dlt74.mdl"

SWEP.ViewModel = "models/arccw/kraken/galactic/v_dlt74.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_dlt19.mdl"
SWEP.ViewModelFOV = 70

SWEP.WorldModelOffset = {
    pos = Vector(-11, 5, -5),
    ang = Angle(-10, 0, 180),
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

SWEP.Damage = 34
SWEP.DamageMin = 19
SWEP.RangeMin = 0
SWEP.Range = 450
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 9000

SWEP.TraceNum = 1
SWEP.Tracer = "tracer_red"
SWEP.TracerCol = Color(250, 0, 0)

SWEP.AmmoPerShot = 1
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 100

SWEP.Recoil = 0.75
SWEP.RecoilSide = 0.35
SWEP.RecoilRise = 0.65
SWEP.RecoilPunch = 0.5

SWEP.Delay = 60 / 680
SWEP.Num = 4
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 1,
        PostBurstDelay = 0.1,
    },
    {
		Mode = 2,
        PostBurstDelay = 0.1,
    },
    {
        Mult_RPM = 2,
		Mode = -3,
        PostBurstDelay = 0.1,
    },
	{
		Mode = 0,
   	}
}

SWEP.AccuracyMOA = 20
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 150

-- Speed Mult
SWEP.SpeedMult = 1.10
SWEP.SightedSpeedMult = 0.75
SWEP.ShootSpeedMult = 1.05

-- Sounds & Muzzleflash
SWEP.Primary.Ammo = "ar2"

SWEP.ShootVol = 125
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05

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

SWEP.FirstShootSound = "ArcCW_Kraken.SW_DLT74"
SWEP.ShootSound = "ArcCW_Kraken.SW_DLT74"
-- SWEP.DistantShootSound = "ArcCW_Kraken.StandardCorebass"
SWEP.ShootSoundSilenced = "ArcCW_Kraken.RifleSupp"

SWEP.MuzzleFlashColor = Color(250, 0, 0)
SWEP.MuzzleEffect = "blaster_muzzle_red"
SWEP.GMMuzzleEffect = false

-- Ironsight & Holdtype
SWEP.IronSightStruct = {
    Pos = Vector(-4.183, -6.968, -0.735),
    Ang = Vector(0, 0, 0),
     Magnification = 1.5,
     SwitchToSound = "weapon_hand/ads/0242-00001a46.mp3",
     SwitchFromSound = "weapon_hand/ads/0242-00001a43.mp3",
     ViewModelFOV = 55,
}

-- Holdtype
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-1, 0, -2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 0, 1.5)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-4, 0, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(3, 3, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(10, 0, 0)
SWEP.CustomizeAng = Angle(20, 30.7, 10.3)

-- Attachments 
SWEP.DefaultElements = {}
SWEP.Attachments = {     
    {
        PrintName = "Optics", 
        DefaultAttName = "None",
        Slot = "optic",
        Bone = "tag_weapon_right",
        Offset = {
            vpos = Vector(9, 0, 7.4),
            vang = Angle(0, 0, 0),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0)
    },
    {
        PrintName = "Internal Compression",
        DefaultAttName = "None",
        Slot = {"muzzle", "stealth_muzzle"},
    },
    {
        PrintName = "Foregrip",
        DefaultAttName = "None",
        Slot = "foregrip",
        Bone = "tag_weapon_right",
        Offset = {
            vpos = Vector(18, 0, 1.6),
            vang = Angle(0, 0, 0),
        },       
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "None",
        Slot = {"tactical", "tac_pistol", "tac"},
        VMScale = Vector(1, 1, 1),
        WMScale = Vector(1, 1, 1),
        Bone = "tag_weapon_right",
        Offset = {
            vpos = Vector(27, 0, 1.4),
            vang = Angle(0, 0, 0),
        },
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
        VMScale = Vector(1,1,1),
        WMScale = Vector(1,1,1),
        Bone = "tag_weapon_right",
        Offset = {
            vpos = Vector(2, -1.7, 3.4),
            vang = Angle(0, 0, 0),
        },
    },    
    {
        PrintName = "Killcounter",
        DefaultAttName = "None",
        Slot = "killcounter",
        Bone = "tag_weapon_right",
        VMScale = Vector(1,1,1),
        WMScale = Vector(1,1,1),
        Offset = {
            vpos = Vector(10, -1.4, 3.65),
            vang = Angle(0, 0, 0),
        },
    },
}

-- Don't touch this unless you know what you're doing
local path = "arccw/kraken/sw_galactic/weapons/cr2/handling/"

SWEP.Animations = {
    ["fire"] = {
        Source = {"shoot", "shoot1"},
    },
    ["reload"] = {
        Source = "reload",
        LHIK = true,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		MinProgress = 0.925,
        SoundTable = {
            {s = path .. "wfoly_sm_secho_reload_up.ogg", t = 0.8},
            {s = "ArcCW_Kraken.Overheat", t = 0.84 },
            {s = path .. "wfoly_sm_secho_reload_magout.ogg", t = 1.5},
			{s = path .. "wfoly_sm_secho_reload_maghit.ogg", t = 1.2},
			{s = path .. "wfoly_sm_secho_reload_magin.ogg", t = 1.9},
            {s = "ArcCW_Kraken.OverheatReplenished", t = 2},
			{s = path .. "wfoly_sm_secho_reload_end.ogg", t = 2.1},
        },
    },
    ["ready"] = {
        Source = "first_draw",
        LHIK = true,
		MinProgress = 0.85,
		FireASAP = true,
        SoundTable = {
            {s = path .. "wfoly_sm_secho_raise_first_up.ogg", t = 0.0},
            {s = path .. "wfoly_sm_secho_raise_first_charge.ogg", t = 0.5},
            {s = path .. "wfoly_sm_secho_raise_first_end.ogg", t = 0.667},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.5,
        LHIK = true,
		FireASAP = true,
        SoundTable = {
            {s = path .. "wfoly_sm_secho_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holdster",
        SoundTable = {
            {s = path .. "wfoly_sm_secho_reload_end.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["bash"] = {
        Source = {"bash"},
        LHIK = true,
    },
}