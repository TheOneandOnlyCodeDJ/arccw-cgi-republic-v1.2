AddCSLuaFile()

SWEP.Base = "arccw_base_melee"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Slot = 1 

-- Trivia
SWEP.Category = "[ArcCW] Kraken's CGI Galactic pack"
SWEP.Credits = "Kraken (Discord: @elbestiamasita)"
SWEP.PrintName = "Vibrokatana"
SWEP.Trivia_Class = "Blaster Sniper Rifle"
SWEP.Trivia_Desc = "Military Blaster Sniper Rifle used along the galaxy. It offers what is necessary and what every blaster should offer to satisfy the needs of its shooter."
SWEP.Trivia_Manufacturer = "Unknown"
SWEP.Trivia_Calibre = "Tibanna Gas"
SWEP.IconOverride = "entities/kraken/cgigalactic/vibrokatana.png"

SWEP.Slot = 0
SWEP.NPCWeaponType = "weapon_crowbar"
SWEP.NPCWeight = 250

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModelFOV = 65 

SWEP.ViewModel = "models/arccw/kraken/cgi_galactic/v_vibrokatana.mdl"
SWEP.WorldModel = "models/arccw/kraken/cgi_galactic/v_vibrokatana.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-14, 5, -8),
    ang = Angle(5, 0, 180 + 5)
}

SWEP.SprintPos = Vector(0, -2, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(0, -2, 1)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, -2, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.ImpactEffect = "StunstickImpact"
SWEP.MeleeGesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.ShootWhileSprint = true
SWEP.NotForNPCs = true

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

SWEP.PrimaryBash = true
SWEP.CanBash = true
SWEP.MeleeDamage = 100
SWEP.MeleeRange = 75
SWEP.MeleeDamageType = DMG_SHOCK + DMG_AIRBOAT + DMG_GENERIC + DMG_CLUB

SWEP.MeleeHitSound = "cgi_galactic/melee/weapons/melee/spade/spade_light1.wav"
SWEP.MeleeHitNPCSound = "cgi_galactic/melee/nmrihimpact/blunt_heavy1.wav"
SWEP.MeleeMissSound = "cgi_galactic/melee/weapons/melee/spade/spade_light2.wav"
SWEP.MeleeSwingSound = "cgi_galactic/melee/weapons/melee/spade/spade_heavy1.wav"

SWEP.MeleeTime = 1
SWEP.MeleeAttackTime = 0.35*0.75
SWEP.Delay = 60 / 600

SWEP.Lunge = true
SWEP.LungeLength = 72

SWEP.Melee2 = true
SWEP.Melee2Damage = 50
SWEP.Melee2DamageBackstab = 180
SWEP.Melee2Range = 30
SWEP.Melee2DamageType = DMG_AIRBOAT + DMG_GENERIC + DMG_CLUB + DMG_CRUSH
SWEP.Melee2Time = 1
SWEP.Melee2Gesture = nil
SWEP.Melee2AttackTime = 0.25

SWEP.Backstab = true
SWEP.BackstabMultiplier = 2

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "melee2"
SWEP.DrawCrosshair = true
SWEP.IronSightStruct = false
SWEP.ShootWhileSprint = false

SWEP.Primary.ClipSize = -1

SWEP.NoHideLeftHandInCustomization = false

SWEP.Attachments = {     
    {
        PrintName = "Perk",
        DefaultAttName = "None",
        Slot = "perk",
    }, 
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = {"deploy"},
        SoundTable = {
            {s = "cgi_galactic/melee/weapons/melee/spade/spade_draw.wav", t = 0.1/30},
        },
    },
    ["holster"] = {
        Source = "putaway",
        SoundTable = {
            {s = "arccw/kraken/empire/melee/new/lifeline/lifeline_mvmt_baton_holster.ogg", t = 0.1/30},
        },
    },
    ["bash"] = {
        Source = {"swing_l","swing_l2","swing_r","swing_r2"},
    },
    ["bash2"] = {
        Source = {"swing_l","swing_l2","swing_r","swing_r2"},
    },
}