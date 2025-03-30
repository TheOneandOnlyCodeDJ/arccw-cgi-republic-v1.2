AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true

SWEP.Slot = 3

SWEP.Category = "[ArcCW] Kraken's CGI Essentials - Republic"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "RPS-6"
SWEP.Trivia_Class = "Rocket Launcher"
SWEP.Trivia_Desc = "The RPS-6 rocket launcher, also known as the Sienar shoulder-launched missile, was a model of missile launcher manufactured by Merr-Sonn Munitions, Inc. and Sienar Fleet Systems."
SWEP.Trivia_Manufacturer = "BlastTech Industries, Merr-Sonn Munitions."
SWEP.Trivia_Calibre = "Rocket"
SWEP.Trivia_Mechanism = "Condensed Tibanna-Gas"
SWEP.Trivia_Country = "Galactic Republic"
SWEP.IconOverride = "entities/arccw/kraken/cgi/rps6.png"

-- Base
SWEP.DefaultBodygroups = "000000000000"
SWEP.MirrorVMWM = false
SWEP.UseHands = false
SWEP.ViewModel = "models/kraken/cgi/v_cgi_rps6.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 65

SWEP.WorldModelOffset = {
    pos = Vector(0, 0, 0),
    ang = Angle(0, 0, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 0.09
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

SWEP.ShootEntity = "rep_rocket"

SWEP.RangeMin = 0
SWEP.Range = 450
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 2000

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 1

SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 0.6
SWEP.Recoil = 0.2

SWEP.Delay = 60 / 120
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

SWEP.AccuracyMOA = 0.5
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 500

-- Speed Mult
SWEP.SpeedMult = 0.925
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.9

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "RPG_Round"
SWEP.ShootVol = 120
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "kraken/cgi/rps/weap_rpapa7_fire_plr_01.ogg"
SWEP.ShootSound = "kraken/cgi/rps/weap_rpapa7_fire_plr_01.ogg"
SWEP.DistantShootSound = "ArcCW_Kraken.HeavyCorebass"
SWEP.ShootSoundSilenced = "kraken/cgi/rps/weap_rpapa7_fire_plr_01.ogg"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_red"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(250, 158, 0)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(0, -5, 0),
    Ang = Vector(16, 0, -5),
     Magnification = 2,
     SwitchToSound = "arccw/kraken/interaction/zoom-in.wav",
     SwitchFromSound = "arccw/kraken/interaction/zoom-out.wav",
     ViewModelFOV = 55,
}

-- Holdtype
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "rpg"
SWEP.HoldtypeSights = "rpg"
SWEP.HoltypeCustomize = "slam"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 3, 0)
SWEP.ActiveAng = Angle(16, 0, -5)

SWEP.SprintPos = Vector(4.019, -5.226, -2)
SWEP.SprintAng = Angle(5, 40, 0)

SWEP.CrouchPos = Vector(-4.5, -7, -3)
SWEP.CrouchAng = Angle(0, 0, -29)

SWEP.CustomizePos = Vector(10, 0, 0)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

SWEP.HolsterPos = Vector(4, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

-- Attachments
SWEP.DefaultElements = {"rps"}
SWEP.AttachmentElements = {
    ["e11_scope"] = {
        VMBodygroups = {{ind = 3, bg = 1}, {ind = 2, bg = 1}},
    },
    ["e11_laser"] = {
        VMBodygroups = {{ind = 4, bg = 1},},
    },
    ["e11_grip"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["rps"] = {
        WMElements = {
            {
                Model = "models/kraken/cgi/v_cgi_rps6.mdl",
                Bone = "ValveBiped.Bip01_L_Hand",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(-210, 20, 525),
                    ang = Angle(180, -180, 2)
                }
            },
        },   
    }
}
WMOverride = "models/kraken/cgi/v_cgi_rps6.mdl"

-- SWEP.Attachments = {
--     {
--         PrintName = "Tactical",
--         DefaultAttName = "None",
--         Slot = {"tactical", "tac_pistol"},
--         Bone = "tag_launcher_offset",
--         VMScale = Vector(1,1,1),
--         WMScale = Vector(11,11,11),
--         Offset = {
--             vpos = Vector(17, -1.5, 0.2),
--             vang = Angle(0, 0, 90),
--             wpos = Vector(120, 18, -60),
--             wang = Angle(0, 5, -90)
--         },
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
--         Bone = "tag_launcher_offset",
--         VMScale = Vector(1,1,1),
--         WMScale = Vector(11,11,11),
--         Offset = {
--             vpos = Vector(9.5, -2.34, 0.5),
--             vang = Angle(0, 0, 0),
--             wpos = Vector(50, 26, -60),
--             wang = Angle(0, 0, 180)
--         },
--     },
-- }

-- Animations
SWEP.BulletBones = {
    [1] = "j_mag1",
}

local path = "kraken/cgi/rps/"

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["dryfire"] = {
        Source = "firemode",
		MinProgress = 0.01,
		FireASAP = true,
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.75,
		FireASAP = true,
		MagSwapTime = 0.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        SoundTable = {
			{s = path .. "wfoly_la_rpapa7_reload_raise.ogg", t = 0.1},
			{s = path .. "wfoly_la_rpapa7_reload_load.ogg", t = 0.333},
			{s = path .. "wfoly_la_rpapa7_reload_lower.ogg", t = 1.033},
			{s = path .. "wfoly_la_rpapa7_reload_fast_hip_safetyclick.ogg", t = 1.7},
			{s = path .. "wfoly_la_rpapa7_reload_end.ogg", t = 1.9},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.75,
		MagSwapTime = 0.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        SoundTable = {
			{s = path .. "wfoly_la_rpapa7_reload_fast_hip_start.ogg", t = 0.033},
			{s = path .. "wfoly_la_rpapa7_reload_fast_hip_magin.ogg", t = 0.4},
			{s = path .. "wfoly_la_rpapa7_reload_fast_hip_safetyclick.ogg", t = 1},
			{s = path .. "wfoly_la_rpapa7_reload_fast_hip_end.ogg", t = 1},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        SoundTable = {
            {s = path .. "wfoly_la_rpapa7_raise_first.ogg", t = 9/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
        FireASAP = true,
        SoundTable = {
            {s = path .. "wfoly_la_rpapa7_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        SoundTable = {
            {s = path .. "wfoly_la_rpapa7_drop_hip_rattle.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 2,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Mult = 2,
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Mult = 2,
    },
    ["inspect"] = {
        Source = "lookat01",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        SoundTable = {
            {s = path .. "wfoly_la_rpapa7_inspect_01.ogg", t = 5/30},
			{s = path .. "wfoly_la_rpapa7_inspect_02.ogg", t = 88/30},
			{s = path .. "wfoly_la_rpapa7_inspect_03.ogg", t = 165/30},
        },
    },
    ["bash"] = {
        Source = "melee_01",
    },
}