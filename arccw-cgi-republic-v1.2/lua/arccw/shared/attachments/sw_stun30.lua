att.PrintName = "Heavy Stun Rounds"
att.AbbrevName = "Heavy Stun Rounds"
att.Icon = Material("entities/arccw/kraken/republic-arsenal/atts/stun30.png")
att.Description = "Heavy stun to incapacitate targets for 5 seconds. After initial incapacitation, the target will be stunned for an additional 5 seconds."

att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
-- att.Slot = {"sw_ammo_unused"}
att.Slot = {"sw_ammo"}

att.AutoStats = true
att.Override_AmmoPerShot = 12
att.Mult_RPM = 0.3
att.Mult_Damage = 0
att.Mult_Recoil = 8

att.Override_Tracer = "effect_sw_laser_blue_stun"

local function RagdollPlayerForDuration(ply, duration)
    if not IsValid(ply) or not ply:IsPlayer() or ply.ArcCW_StunRagdolled then return end

    -- Use the player's name in the SAM command, properly quoted
    local name = "\"" .. ply:Nick():gsub("\"", "\\\"") .. "\""
    game.ConsoleCommand("sam ragdoll " .. name .. "\n")
    ply.ArcCW_StunRagdolled = true

    timer.Simple(duration, function()
        if not IsValid(ply) then return end
        game.ConsoleCommand("sam unragdoll " .. name .. "\n")
        ply.ArcCW_StunRagdolled = false
    end)
    -- Delay 1 second, then apply the stun effect for 5 seconds
    timer.Simple(duration + 0.1, function()
        if not IsValid(ply) then return end
        if GMSERV then
            GMSERV:AddStatus(ply, nil, "stun", 5, 1, true)
        end
    end)
end

att.Hook_BulletHit = function(wep, data)
    local ent = data.tr.Entity
    if SERVER and IsValid(ent) and ent:IsPlayer() then
        RagdollPlayerForDuration(ent, 5)
        if GMSERV then
            GMSERV:AddStatus(ent, data.att, "stun", 5, 1, true)
        end
    end
end

att.Hook_GetShootSound = function(wep, sound)
    return false
end

att.Hook_AddShootSound = function(wep, data)
    wep:MyEmitSound("shared/stun.wav", data.volume, data.pitch, 1, CHAN_WEAPON - 1)
end