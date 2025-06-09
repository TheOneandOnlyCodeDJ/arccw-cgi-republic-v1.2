AddCSLuaFile()

SWEP.Base = "arccw_masita_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Slot = 3

SWEP.Category = "[ArcCW] Kraken's Special Forces - Galactic"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "A-280CFE"
SWEP.Trivia_Class = "Blaster Modular Rifle"
SWEP.Trivia_Desc = "The A280-CFE (covert field edition) convertible heavy blaster pistol, also known as an A280-CFE blaster rifle or simply a A280-CFE blaster, was a modular version of the A280 blaster rifle. It featured a core pistol that could be reconfigured into an assault rifle or sniper rifle.[1] Captain Cassian Andor used an A280-CFE during the Battle on Jedha, the mission to Eadu, and the Battle of Scarif."
SWEP.Trivia_Manufacturer = "BlastTech Industries"
SWEP.Trivia_Calibre = "Tibanna Gas"
SWEP.IconOverride = "entities/kraken/sops/a280cfe.png"

-- Viewmodel & Entity Properties
SWEP.DefaultBodygroups = "000102"
SWEP.MirrorVMWM = true
SWEP.UseHands = true
SWEP.ViewModel = "models/arccw/kraken/sops/v_a280cfe.mdl"
SWEP.WorldModel = "models/arccw/kraken/w_dlt19.mdl"

SWEP.ViewModelFOV = 65

SWEP.WorldModelOffset = {
    pos = Vector(-12, 4, -4.1),
    ang = Angle(-10, 0, -180),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1.1
}

-- Damage & Tracer
SWEP.Jamming = true
SWEP.HeatGain = 1
SWEP.HeatCapacity = 25
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

SWEP.Damage = 40
SWEP.DamageMin = 22
SWEP.RangeMin = 0
SWEP.Range = 500
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.MuzzleVelocity = 2000

SWEP.TracerNum = 1
SWEP.TracerCol = Color(250, 0, 0)
SWEP.TracerWidth = 1
SWEP.Tracer = "tracer_red"
SWEP.HullSize = 1

SWEP.AmmoPerShot = 1
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 25

SWEP.Recoil = 0.75
SWEP.RecoilSide = 0.45
SWEP.RecoilRise = 0.90
SWEP.MaxRecoilBlowback = 1
SWEP.RecoilPunch = 1
SWEP.RecoilVMShake = 1.2

SWEP.Delay = 60 / 460
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
        Mult_RPM = 3,
    },
    {
		Mode = 2,
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

SWEP.AccuracyMOA = 0
SWEP.HipDispersion = 250
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

SWEP.FirstShootSound = "kraken/sops/a280cfe.wav"
SWEP.ShootSound = "kraken/sops/a280cfe.wav"
SWEP.DistantShootSound = "ArcCW_Kraken.HeavyCorebass"
SWEP.ShootSoundSilenced = "ArcCW_Kraken.RifleSupp"

SWEP.NoFlash = nil
SWEP.MuzzleEffect = "blaster_muzzle_red"
SWEP.FastMuzzleEffect = false
SWEP.GMMuzzleEffect = false
SWEP.MuzzleFlashColor = Color(250, 0, 0)

-- Ironsight
SWEP.IronSightStruct = {
    Pos = Vector(-3.89, -5.363, 2.553),
    Ang = Vector(0.6, 0, 0),
     Magnification = 1.5,
     SwitchToSound = "arccw/kraken/interaction/zoom-in.wav",
     SwitchFromSound = "arccw/kraken/interaction/zoom-out.wav",
     ViewModelFOV = 50,
}

-- Holdtype
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "ar2"
SWEP.HoltypeCustomize = "slam"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.SprintPos = Vector(2.019, -2.226, -2)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10, 0, 2)
SWEP.CustomizeAng = Angle(6.8, 30.7, 10.3)

SWEP.CrouchPos = Vector(-3, 0, 0)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.ActivePos = Vector(-3, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(4, -3, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

-- Attachments
SWEP.DefaultElements = {"muzzle"}
SWEP.AttachmentElements = {
    ["muzzle"] = {
        VMElements = {
           {
               Model = "models/hunter/plates/plate.mdl",
               Bone = "a280cfe",
               Scale = Vector(0, 0, 0),                
               Offset = {
                   pos = Vector(0, 0, 15),
                   ang = Angle(90, 0, 0),
               },
               IsMuzzleDevice = true,
           }
        }, 
    },
    ["a280cfe_barrel_short"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        AttPosMods = {
            [2] = {
                vpos = Vector(-0.175, -1.65, 15.5   ),
            },
        }
    },
    ["a280cfe_barrel_sniper"] = {
        NameChange = "Sniper A-280CFE",
        VMBodygroups = {{ind = 1, bg = 2}},
        AttPosMods = {
            [2] = {
                vpos = Vector(-0.175, -1.65, 24),
            },
        }
    },
    ["a280cfe_powerpack"] = {
        VMBodygroups = {
            {ind = 4, bg = 1},
        },
    },
    ["a280cfe_stock_assault"] = {
        VMBodygroups = {
            {ind = 5, bg = 0},
        },
    },
    ["a280cfe_stock_heavy"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
        },
    },
}

SWEP.RejectAttachments = {
     ["a280cfe_stock_heavy"] = true
}

SWEP.Attachments = {     
    {
        PrintName = "Sight", 
        DefaultAttName = "None",
        Slot = "optic",
        Bone = "a280cfe",
        VMScale = Vector(1,1,1),
        WMScale = Vector(1,1,1),
        Offset = {
            vpos = Vector(-0.15, -2.8, 0),
            vang = Angle(90, 0, -90),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "None",
        InstalledEles = {"muzzle_attach"},
        Slot = {"muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle"},
        VMScale = Vector(1.4,1.4,1.4),
        WMScale = Vector(1.4,1.4,1.4),
        Bone = "a280cfe",
        Offset = {
            vpos = Vector(-0.175, -1.7, 19.2),
            vang = Angle(90, 0, -90),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "None",
        Slot = {"tactical", "tac_pistol"},
        Bone = "a280cfe",
        VMScale = Vector(1,1,1),
        WMScale = Vector(1,1,1),
        Offset = {
            vpos = Vector(-1.2, -1.3, 19.5),
            vang = Angle(90, 0, 180),
        },
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "None",
        Slot = {"cfe_barrel"},
    },   
    {
        PrintName = "Stock",
        DefaultAttName = "None",
        Slot = {"cfe_stock"},
    },    
    {
        PrintName = "Powerpack", 
        DefaultAttName = "None",
        Slot = {"cfe_powerpack"},
    },
    {
        PrintName = "Energization",
        DefaultAttName = "None",
        Slot = {"ammo"},
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
        VMScale = Vector(0.9, 0.9, 0.9),
        WMScale = Vector(0.9, 0.9, 0.9),
        Bone = "a280cfe",
        Offset = {
            vpos = Vector(0.4, 0, 4),
            vang = Angle(90, 0, -90),
        },
    },    
    {
        PrintName = "Killcounter",
        DefaultAttName = "None",
        Slot = "killcounter",
        VMScale = Vector(1,1,1),
        WMScale = Vector(1,1,1),
        Bone = "a280cfe",
        Offset = {
            vpos = Vector(0.49, -1.4, 6),
            vang = Angle(90, 0, -70),
        },
    },   
}

-- Don't touch this unless you know what you're doing
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_iron"] = {
        Source = false,
    },
	["fire"] = {
        Source = {"fire"},
    },
    ["fire_iron"] = {
        Source = {"fire"},
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        Mult = 0.6,
        SoundTable = {
            {s = "kraken/sops/firepuncher/reload.wav", t = 1 / 30},
            {s = "ArcCW_Kraken.Overheat", t = 1 / 30},
            {s = "ArcCW_Kraken.OverheatReplenished", t = 110 / 30},
            {s = "ArcCW_Kraken.Grab", t = 115 / 30},
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
}