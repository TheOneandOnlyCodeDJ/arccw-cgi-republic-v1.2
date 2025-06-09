att.PrintName = "DC Iron Sights"
att.Icon = Material("entities/dlt19x_icon.png")
att.Description = "Standard iron sights for precise aiming."

att.SortOrder = 1

att.Desc_Pros = {
    "Precision iron sights",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model = "models/jajoff/sps/cgiweapons/tc13j/mando_westar35_scope2.mdl"
att.ModelScale = Vector(0.7, 0.4, 0.7)
att.ModelOffset = Vector(0, 0, -0)

att.AdditionalSights = {
    {
        Pos = Vector(0, 11, -0.845),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        IgnoreExtra = true
    }
}

att.Holosight = false
att.Colorable = false

att.Mult_SightTime = 1.1
att.Mult_SightedSpeedMult = 0.95