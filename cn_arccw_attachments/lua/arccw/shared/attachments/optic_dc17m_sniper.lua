att.PrintName = "DC17M Sniper Scope"
att.Icon = Material("entities/dlt19x_icon.png")
att.Description = "Special sniper scope for the DC-17M sniper rifle. Provides high magnification and a clear reticle."

att.SortOrder = 9

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "dc17m_optic"

att.Model = "models/atts/invisible_scope.mdl"
att.ModelOffset = Vector(0, 0, -0)


att.AdditionalSights = {
    {
        Pos = Vector(0, 11, -1.2),
        Ang = Angle(0, 0, 0),
        Magnification = 1,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 3,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}

att.ScopeGlint = false

att.Holosight = true
att.HolosightReticle = Material("scope/star_ret.png", "smooth")
att.HolosightNoFlare = true
att.HolosightSize = 13
att.HolosightBone = nil
att.HolosightPiece = "models/atts/s5_default_scope_hsp.mdl"
att.Colorable = false

att.HolosightMagnification = 0
att.HolosightBlackbox = false

att.HolosightConstDist = nil

att.HolosightMagnificationMin = 2
att.HolosightMagnificationMax = 3
att.HoloSightColorable = false

att.Mult_SightTime = 1.2
att.Mult_SightedSpeedMult = 0.9
att.Mult_SpeedMult = 1