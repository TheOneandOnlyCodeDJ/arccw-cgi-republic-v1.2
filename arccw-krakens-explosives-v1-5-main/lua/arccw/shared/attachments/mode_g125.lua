att.PrintName = "Tri-barrel Launcher"
att.Icon = Material("entities/kraken/g125_mode.png")
att.Description = "Reconfigure the blaster to fire from the tri-barreled projectile launcher at the expense of increased heat buildup."

att.Slot = "g125_mode"

att.Override_MuzzleEffect = "nio_charge"
att.Override_ShootEntity = "g125_projectile"
att.Override_Delay = 60 / 700
att.MuzzleFlashColor = Color(0, 250, 0)
att.Override_HeatCapacity = 3

att.Mult_Recoil = 1.3
att.Mult_RecoilSide = 1.3
att.Mult_VisualRecoilMult = 1.3

att.Override_InfiniteAmmo = true
att.Override_BottomlessClip = true

att.Desc_Pros = {}
att.Desc_Cons = {}

att.NotForNPCs = true
att.AutoStats = true

att.Hook_GetShootSound = function(wep, sound)
    return false
end
att.Hook_AddShootSound = function(wep, data)
    wep:MyEmitSound("kraken/explosives/g125/g125.wav", data.volume, data.pitch, 1, CHAN_WEAPON - 1)
end