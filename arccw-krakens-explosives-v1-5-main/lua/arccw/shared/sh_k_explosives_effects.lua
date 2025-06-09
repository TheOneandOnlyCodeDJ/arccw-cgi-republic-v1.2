game.AddParticles( "particles/apex_fx.pcf" )
game.AddParticles( "particles/melee_fx.pcf" )
--game.AddParticles( "particles/muzzleflashes_new.pcf" )

-- Melee FX
PrecacheParticleSystem("weapon_melee_blur")
PrecacheParticleSystem("weapon_melee_blur_2")
PrecacheParticleSystem("weapon_melee_blur_machete")
PrecacheParticleSystem("weapon_melee_blur_katana")
PrecacheParticleSystem("weapon_melee_blur_fireaxe")
PrecacheParticleSystem("weapon_melee_blur_crowbar")
PrecacheParticleSystem("weapon_melee_blur_frying_pan")

--NEW MUZZLES
PrecacheParticleSystem("wpn_muzzleflash_mgl_FULL")

--TRACERS
PrecacheParticleSystem("tfa_apex_tracer_anvil")
PrecacheParticleSystem("tfa_apex_tracer_ar")
PrecacheParticleSystem("tfa_apex_tracer_hmg")
PrecacheParticleSystem("tfa_apex_tracer_hmg_rampage")
PrecacheParticleSystem("tfa_apex_tracer_pistol")
PrecacheParticleSystem("tfa_apex_tracer_shotgun")
PrecacheParticleSystem("tfa_apex_tracer_smg")
PrecacheParticleSystem("tfa_apex_tracer_sniper")

--MUZZLES
PrecacheParticleSystem("tfa_apex_muzzle_ar")
PrecacheParticleSystem("tfa_apex_muzzle_barrel")
PrecacheParticleSystem("tfa_apex_muzzle_dmr")
PrecacheParticleSystem("tfa_apex_muzzle_dmr_charged")
PrecacheParticleSystem("tfa_apex_muzzle_hmg")
PrecacheParticleSystem("tfa_apex_muzzle_pistol")
PrecacheParticleSystem("tfa_apex_muzzle_shotgun")
PrecacheParticleSystem("tfa_apex_muzzle_smg")
PrecacheParticleSystem("tfa_apex_muzzle_sniper")

--ENERGY MUZZLES
PrecacheParticleSystem("tfa_apex_energy_muzzle_big") 
PrecacheParticleSystem("tfa_apex_energy_muzzle_medium")
PrecacheParticleSystem("tfa_apex_energy_muzzle_havoc")
PrecacheParticleSystem("tfa_apex_energy_muzzle_ttake")
PrecacheParticleSystem("tfa_apex_energy_muzzle_shotgun")
PrecacheParticleSystem("tfa_apex_energy_muzzle_lstar")
PrecacheParticleSystem("tfa_apex_chargerifle_muzzle")
PrecacheParticleSystem("tfa_apex_chargerifle_muzzle_charge")

--ENERGY TRACERS
PrecacheParticleSystem("tfa_apex_energy_tracer_ar")
PrecacheParticleSystem("tfa_apex_energy_tracer_mach")
PrecacheParticleSystem("tfa_apex_energy_tracer_rifle")
PrecacheParticleSystem("tfa_apex_energy_tracer_shotgun")
PrecacheParticleSystem("tfa_apex_energy_tracer_smg") 
PrecacheParticleSystem("tfa_apex_havoc_beam_charged")
PrecacheParticleSystem("tfa_apex_lstar_projectile")
PrecacheParticleSystem("tfa_apex_lstar_projectile_lite")
PrecacheParticleSystem("tfa_apex_lstar_projectile_og")
PrecacheParticleSystem("tfa_apex_chargerifle_beam")
PrecacheParticleSystem("tfa_apex_chargerifle_maxbeam")

-- MISC
PrecacheParticleSystem("tfa_apex_lstar_explode_core")
PrecacheParticleSystem("tfa_apex_arcstar_explode")
PrecacheParticleSystem("tfa_apex_frag_explode")
PrecacheParticleSystem("grenade_final")
PrecacheParticleSystem("tfa_apex_arcstar_impact")
PrecacheParticleSystem("tfa_apex_bocek_impact")
PrecacheParticleSystem("tfa_apex_bocek_trail")
PrecacheParticleSystem("tfa_apex_bullet_trail")
PrecacheParticleSystem("tfa_apex_bullet_energy_trail")
PrecacheParticleSystem("tfa_apex_bullet_sent_trail")


-- Precache Particles MW2019
local particlefiles = {
	"mw2019_effects.pcf",
	"mw2019_tracer.pcf",
	"mw2019_rockettrail.pcf",
	"mw2019_explosions_pak.pcf",
}

for k, v in pairs(particlefiles) do
	game.AddParticles("particles/"..v)
end

local particlenames = {
    "mw2019_tracer",
    "mw2019_tracer_fast",
	"mw2019_tracer_slow",
	"mw2019_tracer_small",
	"mw2019_tracer_inc",
	"weapon_tracers_incendiary",
	"thermite_thrown_trail",
	"smoke_thrown_trail",
	"grenadetrail",
	"rockettrail",
	"smoketrail",
	"Generic_explo_emp",
	"Generic_explo_flash",
	"Generic_explo_vhigh",
	"Generic_explo_high",
	"Generic_explo_mid",
	"Generic_explo_tiny"
}

for k, v in pairs(particlenames) do
	PrecacheParticleSystem(v)
end

-- Others
GSORParticleFiles = {}
table.insert(GSORParticleFiles, #GSORParticleFiles, "csgo_inferno_fx")
table.insert(GSORParticleFiles, #GSORParticleFiles, "arc9_gsr_nadefx")

GSORParticleEffects = {}
table.insert(GSORParticleEffects, #GSORParticleEffects, "bumpmine_active")
table.insert(GSORParticleEffects, #GSORParticleEffects, "bumpmine_active_glow")
table.insert(GSORParticleEffects, #GSORParticleEffects, "bumpmine_active_glow2")
table.insert(GSORParticleEffects, #GSORParticleEffects, "bumpmine_active_glow_outer")
table.insert(GSORParticleEffects, #GSORParticleEffects, "bumpmine_detonate")
table.insert(GSORParticleEffects, #GSORParticleEffects, "bumpmine_player_trail")
table.insert(GSORParticleEffects, #GSORParticleEffects, "grenade_explosion_01")
table.insert(GSORParticleEffects, #GSORParticleEffects, "weapon_sensorgren_beeplight")
table.insert(GSORParticleEffects, #GSORParticleEffects, "weapon_sensorgren_detonate")
table.insert(GSORParticleEffects, #GSORParticleEffects, "weapon_molotov_thrown")
//EXPLOSION_FX
table.insert(GSORParticleEffects, #GSORParticleEffects, "c4_timer_light")
table.insert(GSORParticleEffects, #GSORParticleEffects, "c4_timer_light_trigger")
table.insert(GSORParticleEffects, #GSORParticleEffects, "c4_timer_light_held")
table.insert(GSORParticleEffects, #GSORParticleEffects, "c4_timer_light_dropped")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_c4_500")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_coop_mission_c4")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_basic")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_hegrenade_interior")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_hegrenade_brief")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_smoke_disperse")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_smokegrenade")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_smokegrenade_fallback")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_smokegrenade_CT")
table.insert(GSORParticleEffects, #GSORParticleEffects, "HE_shockwave")
//INFERNO FX
table.insert(GSORParticleEffects, #GSORParticleEffects, "molotov_explosion")
table.insert(GSORParticleEffects, #GSORParticleEffects, "molotov_fire01")
table.insert(GSORParticleEffects, #GSORParticleEffects, "molotov_groundfire")
table.insert(GSORParticleEffects, #GSORParticleEffects, "molotov_fire_main_gm")
table.insert(GSORParticleEffects, #GSORParticleEffects, "molotov_fire_child_gm")
table.insert(GSORParticleEffects, #GSORParticleEffects, "molotov_groundfire_00HIGH")
table.insert(GSORParticleEffects, #GSORParticleEffects, "molotov_groundfire_00MEDIUM")
table.insert(GSORParticleEffects, #GSORParticleEffects, "extinguish_fire")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_molotov_air")
table.insert(GSORParticleEffects, #GSORParticleEffects, "incgrenade_thrown_trail")
table.insert(GSORParticleEffects, #GSORParticleEffects, "weapon_molotov_held")
//SMOKE FX
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_child_smoke03e")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_child_core06b")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_child_smoke07b")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_child_smoke07c")
table.insert(GSORParticleEffects, #GSORParticleEffects, "explosion_child_distort01c")

for k, v in pairs(GSORParticleFiles) do
	game.AddParticles("particles/" .. v .. ".pcf")
end

for k, v in pairs(GSORParticleEffects) do
	PrecacheParticleSystem(v)
end

-- FX
game.AddParticles( "particles/csgo_weapon_fx.pcf" )
game.AddParticles( "particles/csgo_explosions_fx.pcf" )

PrecacheParticleSystem("pb_ins2_muzzleflash_tracer")
PrecacheParticleSystem("weapon_muzzle_flash_attach_comp")
PrecacheParticleSystem("weapon_muzzle_flash_assaultrifle")
PrecacheParticleSystem("weapon_muzzle_flash_assaultrifle_comp")
PrecacheParticleSystem("weapon_muzzle_flash_assaultrifle_silenced")
PrecacheParticleSystem("weapon_muzzle_flash_assaultrifle_silenced2")
PrecacheParticleSystem("weapon_muzzle_flash_shotgun_parent_silenced")
PrecacheParticleSystem("weapon_muzzle_flash_awp")
PrecacheParticleSystem("weapon_muzzle_flash_autoshotgun")
PrecacheParticleSystem("weapon_muzzle_flash_huntingrifle")
PrecacheParticleSystem("weapon_muzzle_flash_huntingrifle_FP")
PrecacheParticleSystem("weapon_muzzle_flash_magnum")
PrecacheParticleSystem("weapon_muzzle_flash_pistol")
PrecacheParticleSystem("weapon_muzzle_flash_pistol_silenced")
PrecacheParticleSystem("weapon_muzzle_flash_pistol_elite")
PrecacheParticleSystem("weapon_muzzle_flash_shotgun")
PrecacheParticleSystem("weapon_muzzle_flash_shotgun2")
PrecacheParticleSystem("weapon_muzzle_flash_smg")
PrecacheParticleSystem("weapon_muzzle_flash_para")
PrecacheParticleSystem("weapon_muzzle_flash_para_FP")
PrecacheParticleSystem("weapon_muzzle_flash_taser")
PrecacheParticleSystem("weapon_muzzle_flash_HE")
PrecacheParticleSystem("weapon_shell_casing_50cal")
PrecacheParticleSystem("weapon_shell_casing_9mm")
PrecacheParticleSystem("weapon_shell_casing_9mm_FP")
PrecacheParticleSystem("weapon_shell_casing_rifle")
PrecacheParticleSystem("weapon_shell_casing_shotgun")
PrecacheParticleSystem("weapon_shell_casing_50cal_fallback")
PrecacheParticleSystem("weapon_shell_casing_9mm_fallback")
PrecacheParticleSystem("weapon_shell_casing_rifle_fallback")
PrecacheParticleSystem("weapon_shell_casing_shotgun_fallback")
PrecacheParticleSystem("weapon_muzzle_smoke")
PrecacheParticleSystem("weapon_muzzle_smoke_long")
PrecacheParticleSystem("weapon_muzzle_smoke_pistols")
PrecacheParticleSystem("muzzle_smoke_trace")
PrecacheParticleSystem("weapon_muzzle_flash_smoke_small")
PrecacheParticleSystem("weapon_muzzle_flash_smoke_small2")
PrecacheParticleSystem("weapon_muzzle_flash_smoke_small3")
PrecacheParticleSystem("weapon_muzzle_flash_smoke_small4")
PrecacheParticleSystem("weapon_muzzle_flash_smoke_medium")
PrecacheParticleSystem("weapon_sensorgren_beeplight")
PrecacheParticleSystem("weapon_sensorgren_detonate")
PrecacheParticleSystem("weapon_tracers")
PrecacheParticleSystem("weapon_tracers_50cal")
PrecacheParticleSystem("weapon_tracers_mach")
PrecacheParticleSystem("weapon_tracers_pistol")
PrecacheParticleSystem("weapon_tracers_taser")

-- Grenades
PrecacheParticleSystem("explosion_basic")
PrecacheParticleSystem("explosion_hegrenade_brief")
PrecacheParticleSystem("explosion_hegrenade_interior")
PrecacheParticleSystem("explosion_basic_water")
PrecacheParticleSystem("explosion_c4_500")
PrecacheParticleSystem("explosion_c4_500_fallback")
PrecacheParticleSystem("explosion_smokegrenade")
PrecacheParticleSystem("explosion_child_smoke03e")
PrecacheParticleSystem("explosion_child_core06b")
PrecacheParticleSystem("explosion_child_smoke07b")
PrecacheParticleSystem("explosion_child_smoke07c")
PrecacheParticleSystem("explosion_child_distort01c")

PrecacheParticleSystem("muzzle_weapon_smoke_v2_direction")
PrecacheParticleSystem("muzzle_weapon_smoke_v2")