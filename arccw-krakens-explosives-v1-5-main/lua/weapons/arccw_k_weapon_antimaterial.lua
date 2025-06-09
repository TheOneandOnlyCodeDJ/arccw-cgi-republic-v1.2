AddCSLuaFile()

SWEP.Base = "arccw_kraken_heavyproj_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Slot = 3 -- Change this if you want to select the weapon with other number

-- Trivia
SWEP.Category = "[ArcCW] CN Heavy Weapons"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "RSWD AM-1"
SWEP.Trivia_Class = "Anti-Material Rifle"
SWEP.Trivia_Desc = "Developed by the Republic Special Weapons Division during the Outer Rim Sieges, the RSWD AM-1 “Bunker Buster” is a heavy anti-material energy cannon engineered to neutralise armoured targets and punch through fortified defences. Built on a modified DC-17m chassis, it incorporates a reinforced tripod and stabilising brace to manage its immense recoil. The weapon delivers a devastating plasma discharge, but its intricate recharging cycle leads to significant delays between shots. Notoriously unforgiving, the Bunker Buster exposes its operator with every blast—demanding precision, patience, and a steady hand. Internal documentation references an “unstable crystal matrix” as its core power source, though details remain heavily redacted."
SWEP.Trivia_Calibre = "[Redacted power source]"
SWEP.Trivia_Manufacturer = "Republic Special Weapons Division"
SWEP.IconOverride = "entities/kraken/explosives/antimaterial_rifle.png"

-- Viewmodel & Entity Properties
SWEP.DefaultBodygroups = "0000000000"
SWEP.UseHands = true
SWEP.MirrorVMWM = true

SWEP.ViewModel = "models/arccw/kraken/sw/explosives/v_sw_antimaterial.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"
SWEP.ViewModelFOV = 56

SWEP.WorldModelOffset = {
    pos = Vector(-9.5, 8, -6),
    ang = Angle(-5, 0, 180)
}

-- Damage & Tracer
SWEP.TriggerDelay = true
SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1.1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}

SWEP.ShellModel = "models/misc/88mm_shell.mdl"
SWEP.ShellPitch = 55
SWEP.ShellScale = 0.6
SWEP.ShellTime = 1
SWEP.ShellRotateAngle = Angle(0, 0, 0)

SWEP.Damage = 800
SWEP.DamageMin = 300
SWEP.RangeMin = 0
SWEP.Range = 1300
SWEP.Penetration = 8
SWEP.DamageType = DMG_BLAST
SWEP.MuzzleVelocity = 9000

SWEP.Tracer = "nio_tracer"
SWEP.TracerCol = Color(0, 250, 0)
SWEP.TracerNum = 1
SWEP.TracerWidth = 1

SWEP.AmmoPerShot = 1
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 8

SWEP.Recoil = 5.3
SWEP.RecoilSide = 0.550
SWEP.RecoilRise = 0.5
SWEP.RecoilPunch = 2
SWEP.RecoilVMShake = 1.5
SWEP.VisualRecoilMult = 0.7

SWEP.ManualAction = true
SWEP.NoLastCycle = true

SWEP.Delay = 60 / 60
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 1,
    },
	{
		Mode = 0,
   	}
}

SWEP.AccuracyMOA = 0.1
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 500

-- Speed Mult
SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.35
SWEP.ShootSpeedMult = 1

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "ar2"

SWEP.ShootVol = 120
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0

SWEP.FirstShootSound = "kraken/explosives/torpedo/close1.wav"
SWEP.ShootSound = "kraken/explosives/torpedo/close2.wav"
SWEP.ShootSoundSilenced = "warhammer/weapons/exitus_rifle/exitus_single.wav"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "nio_charge"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(0, 250, 0)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(0, -5, 0),
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
SWEP.HoltypeCustomize = "slam"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-1, 3, -1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0,0,0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(0, 5, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(4, -3, 0)
SWEP.HolsterAng = Vector(-15, 30, -15)


-- Attachments
SWEP.DefaultElements = {}
SWEP.AttachmentElements = {}

-- SWEP.Attachments = {     
--     {
--         PrintName = "Tactical",
--         DefaultAttName = "None",
--         Slot = {"tactical", "tac_pistol", "tac"},
--         VMScale = Vector(1, 1, 1),
--         WMScale = Vector(1, 1, 1),
--         Bone = "def_c_base",
--         Offset = {
--             vpos = Vector(0.8, -4.4, 35),
--             vang = Angle(90, 0, 0),
--         },
--     },  
--     {
--         PrintName = "Perk",
--         DefaultAttName = "None",
--         Slot = "perk",
--     },
--     {
--         PrintName = "Internal Modifications",
--         DefaultAttName = "None",
--         Slot = {"uc_fg"},
--     },    
--     {
--         PrintName = "Charm",
--         DefaultAttName = "None",
--         Slot = "charm",
--         VMScale = Vector(0.8, 0.8, 0.8),
--         WMScale = Vector(0.8, 0.8, 0.8),
--         Bone = "def_c_base",
--         Offset = {
--             vpos = Vector(1.15, -6.7, 21.3),
--             vang = Angle(90, 0, -90),
--         },
--     },    
--     {
--         PrintName = "Killcounter",
--         DefaultAttName = "None",
--         Slot = "killcounter",
--         Bone = "def_c_base",
--         Offset = {
--             vpos = Vector(1.65, -4.6, -3),
--             vang = Angle(90, 0, -90),
--         },
--     },
-- }

-- Don't touch this unless you know what you're doing
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["trigger"] = {
        Source = "idle",
        Mult = 0.12,
        SoundTable = {
            {p = 100, s = "kraken/explosives/torpedo/chargeup.wav", t = 0.01 },
        },
    },
    ["idle_sprint"] = {Source = "sprint", Mult = 1},
    ["enter_sprint"] = {
        Source = "sprint_in",
        MinProgress = 0.1,
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        MinProgress = 0.1,
    },
    ["ready"] = {
        Source = "draw_first",
        SoundTable = {
            {p = 100, s = "kraken/weapons/antimaterial/mech_kraber_ads_in_2ch_v1_01.wav", t = 0 / 30},
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_boltback_2ch_v1_01.wav", t = 18 / 30},
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_boltforward_2ch_v1_01.wav", t = 27 / 30}
        },
    },
    ["draw"] = {
        Source = "draw",
        Mult = 1,
        SoundTable = {
            {p = 100, s = "kraken/weapons/antimaterial/mech_kraber_ads_in_2ch_v1_02.wav", t = 0 / 30},
        },
    },
    ["holster"] = {
        Source = "holster",
        Mult = 1,
        SoundTable = {
            {p = 100, s = "kraken/weapons/antimaterial/mech_kraber_ads_in_2ch_v1_03.wav", t = 0 / 30},
        },
    },
    ["idle_sight"] = {
        Source = false,
    },
    ["fire"] = {
        Source = "fire",
        -- Time = 9 / 10,
        MinProgress = 0.8,
    },
    ["cycle"] = {
        Source = "rechamber",
        ShellEjectAt = 0.5,
        -- Time = 63 / 40,
        MinProgress = 1.5,
        SoundTable = {
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_boltback_2ch_v1_01.wav", t = 15 / 30},
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_boltforward_2ch_v1_01.wav", t = 24 / 30}
        },
    },
    ["enter_sight"] = {
        Source = false,
        MinProgress = 0.1,
    },
    ["fire_sight"] = {
        Source = "fire",
        -- Time = 9 / 10,
        MinProgress = 0.8,
    },
    ["cycle_sight"] = {
        Source = "rechamber",
        ShellEjectAt = 0.5,
        -- Time = 63 / 40,
        MinProgress = 1.5,
        SoundTable = {
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_boltback_2ch_v1_01.wav", t = 16 / 30},
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_boltforward_2ch_v1_01.wav", t = 22 / 30}
        },
    },
    ["exit_sight"] = {
        Source = "iron_out",
        MinProgress = 0.1,
    },
    ["bash"] = {
        Source = {"melee"},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
        SoundTable = {
            {s = "ArcCW_APEX.Melee.Swing.Punch", t = 0 / 30},
    },
    },
    ["enter_inspect"] = {
        Source = "inspect_in",
    },
    ["exit_inspect"] = {
        Source = "inspect_out",
    },
    ["idle_inspect"] = {
        Source = "inspect",
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_magout_2ch_v1_01.wav", t = 15 / 30},
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_magin_2ch_v1_01.wav", t = 53 / 30}
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_magout_2ch_v1_01.wav", t = 15 / 30},
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_magin_2ch_v1_01.wav", t = 53 / 30},
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_boltback_2ch_v1_01.wav", t = 83 / 30},
            {p = 100, s = "kraken/weapons/antimaterial/wpn_krabersniper_1p_reload_boltforward_2ch_v1_01.wav", t = 96 / 30}
    },
},
}