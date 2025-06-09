AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true

SWEP.Slot = 3

SWEP.Category = "[ArcCW] CN Heavy Weapons"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "RSWD Smart Launcher"
SWEP.Trivia_Class = "Rocket Launcher"
SWEP.Trivia_Desc = "The Smart Rocket was a powerful rocket/missile hybrid used by the Galactic Republic during the Clone Wars. Initially developed by the Republic Special Weapons Division (RSWD), the Smart Rocket was a versatile and reliable anti-vehicle and anti-infantry weapon, renowned for its guided targeting systems and high-impact payload."
SWEP.Trivia_Manufacturer = "Republic Special Weapons Division"
SWEP.Trivia_Calibre = "Rocket"
SWEP.Trivia_Mechanism = "Kabum"
SWEP.Trivia_Country = " Universal"
SWEP.IconOverride = "entities/kraken/explosives/smartlauncher.png"

-- Base
SWEP.DefaultBodygroups = "0100000000000000000"
SWEP.MirrorVMWM = true
SWEP.UseHands = true
SWEP.ViewModel = "models/arccw/kraken/sw/explosives/v_smartlauncher.mdl"
SWEP.MirrorWorldModel = "models/arccw/kraken/sw/explosives/v_smartlauncher_mirror.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 60

SWEP.WorldModelOffset = {
    pos = Vector(-4.5, 1.3, -5),
    ang = Angle(0, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

-- Damage & Tracer
SWEP.ShootEntity = "rocket_rps"
SWEP.MuzzleVelocity = 6000

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 1

SWEP.Recoil = 3.2
SWEP.RecoilSide = 0.550
SWEP.RecoilRise = 1.7
SWEP.RecoilPunch = 2
SWEP.RecoilVMShake = 1.5
SWEP.VisualRecoilMult = 0.7

SWEP.Delay = 60 / 60
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 1,
    },
}

SWEP.AccuracyMOA = 0
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
SWEP.ShootPitch = 95
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "kraken/launchers/smartlauncher/bazooka_fp.wav"
SWEP.ShootSound = "kraken/launchers/smartlauncher/bazooka_fp.wav"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "muzzleflash_m79"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(250, 142, 0)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(0, -4, 0),
    Ang = Vector(5, 0, -5),
     Magnification = 1.5,
     SwitchToSound = "kraken/launchers/rps/wfoly_la_rpapa7_ads_up.ogg",
     SwitchFromSound = "kraken/launchers/rps/wfoly_la_rpapa7_ads_down.ogg",
     ViewModelFOV = 55,
}

-- Holdtype
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "rpg"
SWEP.HoldtypeSights = "rpg"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, -4, 0)
SWEP.ActiveAng = Angle(5, 0, -5)

SWEP.SprintPos = Vector(4.019, -5.226, -2)
SWEP.SprintAng = Angle(5, 40, 0)

SWEP.CrouchPos = Vector(-4.5, -7, -3)
SWEP.CrouchAng = Angle(0, 0, -29)

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
    --     VMScale = Vector(1, 1, 1),
    --     WMScale = Vector(1, 1, 1),
    --     Bone = "Weapon",
    --     Offset = {
    --         vpos = Vector(1.33, 18, 2.8),
    --         vang = Angle(90, -90, 0),
    --     },
    -- }, 
    -- {
    --     PrintName = "Ammunition",
    --     DefaultAttName = "Rocket",
    --     Slot = {"k_rocket_ammo"}
    -- },
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
    --     Bone = "Weapon",
    --     Offset = {
    --         vpos = Vector(1.67, 11.8, 2.54),
    --         vang = Angle(0, -90, 0),
    --     },
    -- },
-- }

-- Animations!
local path = "kraken/launchers/smartlauncher/bazooka_"

SWEP.Animations = {
    ["idle"] = { Source = "base_idle" },
    ["idle_iron"] = { Source = false, },
    ["fire"] = { Source = "base_fire" },
    ["fire_iron"] = { Source =  false, },
    ["enter_sights"] = { Source = false, },
    ["dryfire"] = { Source = "base_dryfire" },
    ["dryfire_iron"] = { Source = "iron_dryfire" },
    ["reload"] = { Source = "base_reload", TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, MinProgress = 0.75, MagSwapTime = 0.75, Mult = 0.9,  
    SoundTable = {
        {t = 50 / 32.5, s = path .. "fetch.wav"},
        {t = 78 / 32.5, s = path .. "load1.wav"},
        {t = 87 / 32.5, s = path .. "load2.wav"},
        {t = 114 / 32.5, s = path .. "wire.wav"},
        {t = 160 / 32.5, s = path .. "reshoulder.wav"},
        {t = 199 / 32.5, s = path .. "shoulder.wav"},
    } },
    ["ready"] = { Source = "base_ready", MinProgress = 1, FireASAP = true, 
    SoundTable = {
        {t = 0 / 30, s = path .. "fetch.wav" },
        {t = 47 / 30, s = path .. "fetch.wav"},
        {t = 75 / 30, s = path .. "load1.wav"},
        {t = 84 / 30, s = path .. "load2.wav"},
        {t = 112 / 30, s = path .. "wire.wav"},
        {t = 160 / 30, s = path .. "reshoulder.wav"},
        {t = 196 / 30, s = path .. "shoulder.wav"},
    } },
    ["draw"] = { Source = "base_draw", 
    SoundTable = {
        {t = 50 / 32.5, s = path .. "fetch.wav"},
    } },
    ["holster"] = { Source = "base_holster", 
    SoundTable = {
        {t = 50 / 32.5, s = path .. "fetch.wav"},
    } },
}