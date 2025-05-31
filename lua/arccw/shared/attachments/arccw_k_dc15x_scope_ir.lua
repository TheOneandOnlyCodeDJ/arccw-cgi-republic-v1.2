att.PrintName = "DC-15A Scope (x8/IR)"
att.Icon = Material("entities/kraken/cgigalactic/atts/dc15x_ir.png", "mips smooth")
att.Description = "Long range sniper optic. Used by the DLT-15A Blaster models."

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/arccw/kraken/cgi_galactic/cgi_dc15x_scope.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 12, -1.43061),
        Ang = Angle(0, 0, 0),
        Magnification = 4,
        ZoomLevels = 2,
        ZoomSound = "kraken/attachments/zoom_starwars.wav",
        IgnoreExtra = true,
        Thermal = true,
        ThermalHighlightColor = Color(50, 50, 255),
        ThermalFullColor = true,
		ThermalNoCC = true,
    },
}

att.ModelOffset = Vector(2, 0, 0)

att.Holosight = true
att.HolosightReticle = Material("models/kraken/shared/miras/gwrp_blue.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 10.5
att.HolosightBone = "holosight"
att.HolosightPiece = "models/arccw/kraken/cgi_galactic/cgi_dc15x_scope_hsp.mdl"

att.Colorable = false
att.HolosightBlackbox = true

att.HolosightMagnification = 2

att.Mult_SightTime = 1.2
att.Mult_SpeedMult = 0.925