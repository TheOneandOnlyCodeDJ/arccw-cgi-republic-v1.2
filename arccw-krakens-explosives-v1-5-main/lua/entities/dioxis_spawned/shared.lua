ENT.Base = "base_entity"
ENT.Type = "anim"

ENT.GasRadius = 250
ENT.LifeTime = 30

PrecacheParticleSystem("AC_nade_gas_dust")
PrecacheParticleSystem("AC_nade_gas_explode")

sound.Add({
    name = "Kraken_Explosives.DioxisLoop",
    channel = CHAN_BODY, 
    volume = 0.25, 
    level = 75,
    pitch = {95, 105},
    sound = {"kraken/explosives/dioxis/loop.wav"}
}) 

sound.Add({
    name = "Kraken_Explosives.DioxisExplode",
    channel = CHAN_ITEM,
    volume = 1, 
    level = 100,
    pitch = {95, 105},
    sound = {
        "kraken/explosives/dioxis/start1.wav",
        "kraken/explosives/dioxis/start2.wav",
        "kraken/explosives/dioxis/start3.wav",
        "kraken/explosives/dioxis/start4.wav",
}
}) 