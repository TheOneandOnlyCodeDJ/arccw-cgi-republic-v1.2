att.PrintName = "WESTAR-35S Scope (x6/IR)"
att.Icon = Material("entities/kraken/cgigalactic/atts/westar35s_ir.png", "mips smooth")
att.Description = "Short range optic. Used by the E-11 Blaster models."

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/arccw/kraken/cgi_galactic/cgi_westarm5_2_scope.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 12, -1.56),
        Ang = Angle(0, 0, 0),
        Magnification = 5,
        ViewModelFOV = 25,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        Thermal = true,
        ThermalScopeColor = Color(255, 255, 255),
        ThermalHighlightColor = Color(255, 255, 255),
        ThermalFullColor = false,
        ThermalScopeSimple = false,
        ThermalNoCC = false,
        ThermalBHOT = false,
        IgnoreExtra = true,
        Contrast = 0.51,
        Brightness = 0.1,
        ForceLowRes = true,
        FPSLock = 42,
    },
}

att.ModelOffset = Vector(2, 0, 0)

att.Holosight = true
att.HolosightReticle = Material("models/kraken/shared/miras/star_ret_reflex_shotgun.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 8
att.HolosightBone = "holosight"
att.HolosightPiece = "models/arccw/kraken/cgi_galactic/cgi_westarm5_2_scope_hsp.mdl"

att.Colorable = true
att.HolosightColor = Color(255, 255, 255)
att.HolosightBlackbox = true
att.HolosightMagnification = 1.5

att.Mult_SightTime = 0.9
att.Mult_SpeedMult = 0.925