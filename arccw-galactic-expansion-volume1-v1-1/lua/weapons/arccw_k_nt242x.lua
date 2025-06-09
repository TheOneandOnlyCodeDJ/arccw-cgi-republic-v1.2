AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Slot = 4 

SWEP.Category = "[ArcCW] Kraken's Galactic Expansion - Vol. I"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "NT-242x"
SWEP.Trivia_Class = "Sniper"
SWEP.Trivia_Desc = "Anti-Tank version of NT-242 Family. The NT-242 was a type of sniper rifle. The NT-242 was considered a tank buster by many users and was one of the heaviest longblasters. The NT-242 was powerful at range, and could be modified to have a disruptor shot which could engage vehicles."
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Tibanna Gas"
SWEP.IconOverride = "entities/kraken/galactic/nt242x.png"

-- Viewmodel & Entity Properties
SWEP.DefaultBodygroups = "02220000000000000"

SWEP.HideViewmodel = false
SWEP.MirrorVMWM = true
SWEP.UseHands = true
SWEP.ViewModel = "models/arccw/kraken/galactic/v_nt242.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_dlt19.mdl"
SWEP.ViewModelFOV = 70

SWEP.WorldModelOffset = {
    pos = Vector(-1, 0.6, -3),
    ang = Angle(-5, 0, 180),
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

SWEP.Damage = 115
SWEP.DamageMin = 90
SWEP.RangeMin = 0
SWEP.Range = 1700
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 9000

SWEP.TraceNum = 1
SWEP.Tracer = "tracer_green"
SWEP.TracerCol = Color(0, 250, 0)

SWEP.AmmoPerShot = 1
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 5

SWEP.Recoil = 3.5
SWEP.RecoilSide = 0.65
SWEP.RecoilRise = 0.85
SWEP.RecoilPunch = 2.5

SWEP.Delay = 60 / 120
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 1,
        PostBurstDelay = 0.1,
    },
	{
		Mode = 0,
   	}
}


SWEP.AccuracyMOA = 0
SWEP.HipDispersion = 250
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 150

-- Speed Mult
SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.30

-- Ammo, Sounds & MuzzleEffect
SWEP.Primary.Ammo = "ar2"

SWEP.ShootVol = 100
SWEP.ShootPitch = 100

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

SWEP.FirstShootSound = "ArcCW_Kraken.SW_NT242"
SWEP.ShootSound = "ArcCW_Kraken.SW_NT242"
-- SWEP.DistantShootSound = "ArcCW_Kraken.HeavyCorebass"
SWEP.ShootSoundSilenced = "ArcCW_Kraken.RifleSupp"

SWEP.MuzzleFlashColor = Color(0, 250, 0)
SWEP.MuzzleEffect = "blaster_muzzle_green"
SWEP.GMMuzzleEffect = false

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(-3.48, -0, 0.5),
    Ang = Vector(3, 0.5, -2),
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
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(-1, 2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(4.019, -5.226, -2)
SWEP.SprintAng = Angle(5, 40, 0)

SWEP.CrouchPos = Vector(-4, 0, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(3, 3, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(10, 0, 0)
SWEP.CustomizeAng = Angle(20, 30.7, 10.3)

SWEP.GuaranteeLaser = true

-- Attachments
SWEP.DefaultElements = {}
SWEP.AttachmentElements = {
    ["muzzle_attach"] = {
        VMBodygroups = {{ind = 2, bg = 3}},
    },
}

SWEP.Attachments = {     
    {
        PrintName = "Optics", 
        DefaultAttName = "None",
        Slot = "optic",
        Bone = "tag_attachments",
        Offset = {
            vpos = Vector(8, -0.0, 2.6),
            vang = Angle(0, 0, 0),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "None",
        Slot = {"muzzle", "stealth_muzzle"},
        Bone = "tag_attachments",
        VMScale = Vector(1.3, 1.3, 1.3),
        WMScale = Vector(1.3, 1.3, 1.3),
        InstalledEles = {"muzzle_attach"},
        Offset = {
            vpos = Vector(51, -0.0, 0.45),
            vang = Angle(0, 0, 0),
        },
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "None",
        Slot = {"tactical", "tac_pistol", "tac"},
        VMScale = Vector(1, 1, 1),
        WMScale = Vector(1, 1, 1),
        Bone = "tag_attachments",
        Offset = {
            vpos = Vector(23, 1, 0.4),
            vang = Angle(0, 0, -90),
        },
    },  
    {
        PrintName = "Underbarrel",
        DefaultAttName = "None",
        Slot = {"foregrip"},
        VMScale = Vector(1.2, 1.2, 1.2),
        WMScale = Vector(1.2, 1.2, 1.2),
        Bone = "tag_attachments",
        InstalledEles = {"grip_attach"},
        Offset = {
            vpos = Vector(20, 0, -0.8),
            vang = Angle(0, 0, 0),
        },
    },  
    {
        PrintName = "Magazine",
        DefaultAttName = "Standard",
        Slot = "bolter_mag",
    },
    {
        PrintName = "Cooling System",
        DefaultAttName = "None",
        Slot = "bolter_cooling",
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
        VMScale = Vector(0.6, 0.6, 0.6),
        WMScale = Vector(0.6, 0.6, 0.6),
        Bone = "tag_attachments",
        Offset = {
            vpos = Vector(4.8, -0.5, -1.1),
            vang = Angle(0, 0, 0),
        },
    },    
    {
        PrintName = "Killcounter",
        DefaultAttName = "None",
        Slot = "killcounter",
        Bone = "tag_attachments",
        Offset = {
            vpos = Vector(9, -1, 0.8),
            vang = Angle(0, 0, 30),
        },
    },
}

-- Animations
local path = "arccw/kraken/sw_galactic/handling/nt242/"

SWEP.Animations = {
	["enter_sights"] = {
		Source = "ads_in",
	},
	["exit_sights"] = {
		Source = "ads_out",
	},
    ["fire"] = {
        Source = "shoot1",
        ShellEjectAt = false,
    },
    ["dryfire"] = {
        Source = "dryfire",
		MinProgress = 0.01,
		FireASAP = true,
    },
    ["reload"] = {
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Source = "reload_short",
        LHIK = true,
		MinProgress = 0.975,
        SoundTable = {
            {s = path .. "wfoly_sn_xmike109_reload_up.ogg", t = 0.0},
            {s = path .. "wfoly_sn_xmike109_reload_magrelease.ogg", t = 0.9},
			{s = path .. "wfoly_sn_xmike109_reload_magout.ogg", t = 1.4},
			{s = path .. "wfoly_sn_xmike109_reload_arm.ogg", t = 2.367},
			{s = path .. "wfoly_sn_xmike109_reload_magin_01.ogg", t = 2.867},
			{s = path .. "wfoly_sn_xmike109_reload_magin_02.ogg", t = 3.1},
			{s = path .. "wfoly_sn_xmike109_reload_end.ogg", t = 3.567},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
		MinProgress = 0.975,
        SoundTable = {
            {s = path .. "wfoly_sn_xmike109_reload_empty_up.ogg", t = 0.033},
            {s = path .. "wfoly_sn_xmike109_reload_empty_magrelease.ogg", t = 1.05},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magout.ogg", t = 1.45},
			{s = path .. "wfoly_sn_xmike109_reload_empty_arm.ogg", t = 2.2},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magin_01.ogg", t = 2.78},
			{s = path .. "wfoly_sn_xmike109_reload_empty_magin_02.ogg", t = 3.2},
			{s = path .. "wfoly_sn_xmike109_reload_empty_rotate.ogg", t = 3.667},
			{s = path .. "wfoly_sn_xmike109_reload_empty_boltpull.ogg", t = 4.267},
			{s = path .. "wfoly_sn_xmike109_reload_empty_boltrelease.ogg", t = 4.8},
			{s = path .. "wfoly_sn_xmike109_reload_empty_end.ogg", t = 5.1},
        },
    },
    ["ready"] = {
        Source = "draw",
        SoundTable = {
            {s = path .. "wfoly_sn_xmike109_first_raise_up.ogg", t = 0.1},
            {s = path .. "wfoly_sn_xmike109_first_raise_bolt_pull.ogg", t = 0.6},
            {s = path .. "wfoly_sn_xmike109_first_raise_bolt_release.ogg", t = 1.0},
			{s = path .. "wfoly_sn_xmike109_first_raise_end.ogg", t = 36/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        MinProgress = 0.3,
        SoundTable = {
            {s = path .. "wfoly_sn_xmike109_first_raise_up.ogg", t = 0/30},
			{s = path .. "wfoly_sn_xmike109_first_raise_end.ogg", t = 10/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        SoundTable = {
            {s = path .. "wfoly_sn_xmike109_first_raise_end.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["exit_inspect"] = {
        Source = "lookat01",
        LHIK = true,
		MinProgress = 0.9,
        SoundTable = {
            {s = path .. "wfoly_sn_xmike109_inspect_up.ogg", t = 0.1},
			{s = path .. "wfoly_sn_xmike109_inspect_grabrotate.ogg", t = 1.7},
			{s = path .. "wfoly_sn_xmike109_inspect_move.ogg", t = 3.7},
			{s = path .. "wfoly_sn_xmike109_inspect_end.ogg", t = 111/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        LHIK = true,
    },
    ["enter_bipod"] = {
        Source = "bipod_in",
    },
    ["exit_bipod"] = {
        Source = "bipod_out",
    },
}

SWEP.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    util.BlastDamage(wep, wep:GetOwner(), data.tr.HitPos, 96, wep:GetDamage(data.range))
    if ent:IsValid() and ent:GetClass() == "npc_helicopter" then
        data.dmgtype = DMG_AIRBOAT
    end
end