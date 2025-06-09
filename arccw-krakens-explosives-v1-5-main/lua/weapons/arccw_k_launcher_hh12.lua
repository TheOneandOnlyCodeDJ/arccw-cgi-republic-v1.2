AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true

SWEP.Slot = 3

SWEP.Category = "[ArcCW] CN Heavy Weapons"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "Republic HH-12"
SWEP.Trivia_Class = "Rocket Launcher"
SWEP.Trivia_Desc = "The HH-12 rocket launcher was a model of black-colored missile launcher used by the Special Forces of the Alliance to Restore the Republic during the Galactic Civil War against the Galactic Empire."
SWEP.Trivia_Manufacturer = "Unknown"
SWEP.Trivia_Calibre = "Rocket"
SWEP.Trivia_Country = "Galactic Republic, Galactic Empire, Rebel Alliance"
SWEP.IconOverride = "entities/kraken/explosives/hh12.png"

-- Base
SWEP.DefaultBodygroups = "0000000000000000000"
SWEP.MirrorVMWM = true
SWEP.UseHands = true

SWEP.ViewModel = "models/arccw/kraken/sw/explosives/v_hh12_republic.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 60

SWEP.WorldModelOffset = {
    pos = Vector(-1, 1.3, -2.2),
    ang = Angle(0, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1.5
}

-- Damage & Tracer
SWEP.ShootEntity = "rocket_hh12"

SWEP.MuzzleVelocity = 12000

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 1

SWEP.Recoil = 4.5
SWEP.RecoilSide = 0.550
SWEP.RecoilRise = 0.5
SWEP.RecoilPunch = 0
SWEP.RecoilVMShake = 0
SWEP.VisualRecoilMult = 0

SWEP.Delay = 60 / 60
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 1,
    },
}

SWEP.AccuracyMOA = 0.5
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 500

-- Speed Mult
SWEP.SpeedMult = 0.825
SWEP.SightedSpeedMult = 0.85
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.9

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "RPG_Round"
SWEP.ShootVol = 120
SWEP.ShootPitch = 95
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "kraken/launchers/rps/weap_rpapa7_fire_plr_01.ogg"
SWEP.ShootSound = "kraken/launchers/rps/weap_rpapa7_fire_plr_01.ogg"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "muzzleflash_m79"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(250, 146, 0)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(-1.04, -5, 0.31),
    Ang = Vector(16, 0, -4),
     Magnification = 4,
     SwitchToSound = "kraken/launchers/rps/wfoly_la_rpapa7_ads_up.ogg",
     SwitchFromSound = "kraken/launchers/rps/wfoly_la_rpapa7_ads_down.ogg",
     ViewModelFOV = 55,
}

-- Holdtype
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "rpg"
SWEP.HoldtypeSights = "rpg"
SWEP.HoltypeCustomize = "slam"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(8, 1, 0)

SWEP.SprintPos = Vector(1, 0, -2.5)
SWEP.SprintAng = Angle(0, -2, 0)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizePos = Vector(10, 0, 0)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

SWEP.HolsterPos = Vector(4, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

-- Attachments
-- SWEP.Attachments = {
    -- {
    --     PrintName = "Tactical",
    --     DefaultAttName = "None",
    --     Slot = {"tactical", "tac_pistol", "tac"},
    --     VMScale = Vector(0.6, 0.6, 0.6),
    --     WMScale = Vector(0.6, 0.6, 0.6),
    --     Bone = "tag_launcher_offset",
    --     Offset = {
    --         vpos = Vector(9, -1.8, 0.95),
    --         vang = Angle(0, 0, 90),
    --     },
    -- }, 
    -- {
    --     PrintName = "Ammunition",
    --     DefaultAttName = "Rocket",
    --     Slot = {"k_rocket_ammo"}
    -- }
    -- {
    --     PrintName = "Perk",
    --     DefaultAttName = "None",
    --     Slot = "perk",
    -- },
    -- {
    --     PrintName = "Charm",
    --     DefaultAttName = "None",
    --     Slot = "charm",
    --     VMScale = Vector(0.5, 0.5, 0.5),
    --     WMScale = Vector(0.5, 0.5, 0.5),
    --     Bone = "tag_launcher_offset",
    --     Offset = {
    --         vpos = Vector(2, -1.45, 2),
    --         vang = Angle(0, 0, 25),
    --     },
    -- },
-- }

-- Animations!
local path = "kraken/launchers/hh12/"

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",

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
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
			{s = path .. "wfoly_la_kgolf_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_la_kgolf_reload_raise.ogg", t = 15/30},
			{s = path .. "wfoly_la_kgolf_reload_rotate.ogg", t = 45/30},
			{s = path .. "wfoly_la_kgolf_reload_breechopen.ogg", t = 52/30},
			{s = path .. "wfoly_la_kgolf_reload_shellout.ogg", t = 65/30},
			{s = path .. "wfoly_la_kgolf_reload_shelldrop.ogg", t = 77/30},
			{s = path .. "wfoly_la_kgolf_reload_raise.ogg", t = 102/30},
			{s = path .. "wfoly_la_kgolf_reload_shellin.ogg", t = 132/30},
			{s = path .. "wfoly_la_kgolf_reload_breechclose.ogg", t = 147/30},
			{s = path .. "wfoly_la_kgolf_reload_breechclose2.ogg", t = 152/30},
			{s = path .. "wfoly_la_kgolf_reload_end.ogg", t = 157/30},
        },
    },
    ["ready"] = {
        Source = {"draw"},
        SoundTable = {
            {s = path .. "wfoly_plr_la_kgolf_raise_first_up.ogg", t = 3/30},
			{s = path .. "wfoly_plr_la_kgolf_raise_first_settle.ogg", t = 20/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.4,
        SoundTable = {
            {s = path .. "wfoly_plr_la_kgolf_raise_up.ogg", t = 7/30},
			{s = path .. "wfoly_plr_la_kgolf_raise_settle.ogg", t = 24/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        SoundTable = {
            {s = path .. "wfoly_la_kgolf_drop_rattle.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["inspect"] = {
        Source = "lookat01",
        SoundTable = {
            {s = path .. "wfoly_la_kgolf_inspect_01.ogg", t = 1/30},
			{s = path .. "wfoly_la_kgolf_inspect_02.ogg", t = 88/30},
			{s = path .. "wfoly_la_kgolf_inspect_03.ogg", t = 135/30},
			{s = path .. "wfoly_la_kgolf_reload_raise.ogg", t = 3.25},
			{s = path .. "wfoly_la_kgolf_reload_breechopen.ogg", t = 4.21},
			{s = path .. "wfoly_la_kgolf_reload_breechclose2.ogg", t = 6.17},
			{s = path .. "wfoly_la_kgolf_reload_end.ogg", t = 6.62},
        },
    },
    ["bash"] = {
        Source = "melee_01",
    },
}

