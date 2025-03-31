AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true

SWEP.Slot = 3

SWEP.Category = "[ArcCW] Kraken's CGI Essentials - Republic"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "Z-6"
SWEP.Trivia_Class = "Blaster, Rotary Blaster Cannon"
SWEP.Trivia_Desc = "The Chaingun is a large shoulder-worn weapon, which is particularly effective, and indeed intended for attacking infantry, especially droids."
SWEP.Trivia_Manufacturer = "BlastTech Industries, Merr-Sonn Munitions. Inc"
SWEP.Trivia_Calibre = "Laser Bolt"
SWEP.Trivia_Mechanism = "Condensed Tibanna-Gas"
SWEP.Trivia_Country = "Galactic Republic"
SWEP.IconOverride = "entities/arccw/kraken/cgi/z6.png"

-- Base
SWEP.MirrorVMWM = true
SWEP.UseHands = true

SWEP.ViewModel = "models/kraken/cgi/v_cgi_z6.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_e11.mdl"

SWEP.ViewModelFOV = 65

SWEP.HideViewmodel = false
SWEP.WorldModelOffset = {
    pos = Vector(-10, 8, -12),
    ang = Angle(0, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1,
}

-- Special properties
SWEP.Jamming = true
SWEP.HeatGain = 0.5
SWEP.HeatCapacity = 85
SWEP.HeatDissipation = 5
SWEP.HeatLockout = true
SWEP.HeatDelayTime = 0.5
SWEP.HeatFix = true 

SWEP.TriggerDelay = true 

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

SWEP.Damage = 26
SWEP.DamageMin = 18
SWEP.RangeMin = 0
SWEP.Range = 300
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 1200

SWEP.TracerNum = 1
SWEP.TracerCol = Color(0, 0, 250)
SWEP.TracerWidth = 1
SWEP.Tracer = "tracer_blue"
SWEP.HullSize = 1

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 200
SWEP.ExtendedClipSize = 250
SWEP.ReducedClipSize = 100

SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 0.3
SWEP.Recoil = 0.5

SWEP.Delay = 60 / 270
SWEP.Num = 1
SWEP.Firemode = 1
SWEP.Firemodes = {
    {
		Mode = 2,
    },
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
SWEP.HipDispersion = 150
SWEP.MoveDispersion = 200
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
SWEP.ShootPitchVariation = 0.2

SWEP.FirstShootSound = "kraken/cgi/z6/fire/blasters_z6rotaryblaster_laser_close_var_01.mp3"
SWEP.ShootSound = "kraken/cgi/z6/fire/blasters_z6rotaryblaster_laser_close_var_03.mp3"
SWEP.DistantShootSound = "ArcCW_Kraken.HeavyCorebass"
SWEP.ShootSoundSilenced = "kraken/cgi/dc19/dc19.wav"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_blue"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(0, 0, 250)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(-3.379, -6.961, 2.45),
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

SWEP.ActivePos = Vector(0, 4, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 3, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10, 0, 0)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

SWEP.HolsterPos = Vector(3, 0, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

-- Attachments
-- SWEP.Attachments = {
--     {
--         PrintName = "Energization",
--         DefaultAttName = "Standard",
--         Slot = {"ammo", "special_ammo"}
--     },
--     {
--         PrintName = "Mode",
--         DefaultAttName = "None",
--         Slot = {"sw_mode"},
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
-- }

SWEP.Animations = {
    ["trigger"] = {
        Source = "fire",
        Mult = 0.3,
        SoundTable = {
            {
                s = "kraken/cgi/z6/start/blasters_z6rotaryblaster_start_short_var_04.mp3",
                p = 100,
                v = 100,
                t = 0.1,
                c = CHAN_ITEM,
            },
        }
    },
    ["idle"] = {
        Source = "idle",
    },
    ["fire"] = {
        Source = "fire"
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
    ["fix"] = {
        Source = "overheat", 
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
            {s = "ArcCW_Kraken.Overheat", t = 1 / 30},
            {s = "ArcCW_Kraken.OverheatReplenished", t = 70 / 30},
        },
    },
    ["reload"] = {
        Source = "reload",
        LHIK = true,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PHYSGUN, 
        SoundTable = {
            {s = "ArcCW_Kraken.Overheat", t = 0.1 },
            {s = "weapon_hand/reload_gentle/other/023d-00000ee3.mp3", t = 0.3 },
            {s = "weapon_hand/reload_gentle/mag_eject/023d-0000045e.mp3", t = 2 },
            {s = "weapon_hand/reload_gentle/mag_load/023d-00000638.mp3", t = 3.5 },
            {s = "weapon_hand/reload_gentle/other/023d-00000ee3.mp3", t = 4.5 },        
        },
    },
}

-- Special properties
SWEP.Hook_ModifyRPM = function(wep, delay)
    return delay / Lerp(wep:GetBurstCount() / 15, 1, 3)
end