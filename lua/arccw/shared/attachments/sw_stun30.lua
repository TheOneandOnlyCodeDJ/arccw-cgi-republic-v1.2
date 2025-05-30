att.PrintName = "Stun Rounds - 30s"
att.AbbrevName = "Stun Rounds - 30s"
att.Icon = Material("entities/arccw/kraken/republic-arsenal/atts/stun30.png")
att.Description = "Replace the main-fire for stun rounds."

att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = {"sw_ammo_unused"}

att.AutoStats = true
att.Override_AmmoPerShot = 5

att.Mult_Damage = 0.1
att.Mult_DamageMin = 0.1

att.Override_Tracer = "effect_sw_laser_blue_stun"

att.Hook_BulletHit = function(wep, data)
	GMSERV:AddStatus(data.tr.Entity, data.att, "stun", 30, 1, true) --Entity,Owner,Status Effect Type (Yes, you can add the others),Duration, Damage, ParticleEffect
end

att.Hook_GetShootSound = function(wep, sound)
    return false
end

att.Hook_AddShootSound = function(wep, data)
    wep:MyEmitSound("shared/stun.wav", data.volume, data.pitch, 1, CHAN_WEAPON - 1)
end