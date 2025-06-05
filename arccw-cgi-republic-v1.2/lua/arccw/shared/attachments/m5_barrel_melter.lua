att.PrintName = "M5 Melter Barrel"
att.Description = "Melter Barrel for Westar M-5. Compresses tibanna gas enough to cause an explosion on impact that sets the target on fire"
att.Desc_Pros = {}
att.Desc_Cons = {}

att.AutoStats = true

att.Slot = {"m5_barrel_melter"}
att.ActivateElements = {"m5_barrel_melter"}
att.Override_Tracer = "tracer_yellow"
att.Override_MuzzleEffect = "wpn_muzzleflash_dc17_orange"
att.Override_MuzzleFlashColor = Color(250, 158, 0)

att.Mult_RPM = 0.3
att.Mult_Damage = 0.7
att.Mult_Recoil = 1.1

att.Hook_BulletHit = function(wep, data)
    if CLIENT then return end

    local ent = data.tr.Entity

    ent:Ignite(5, 500)
    if ent:IsOnFire() then
        ent:SetHealth(ent:Health() - 2.5)
    end
end