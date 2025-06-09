
function SWEP:GetShootPos()
    local owner = self:GetOwner()

    if !IsValid(owner) then return Vector(), Angle() end

    if SERVER and owner:IsNPC() then
        return owner:GetShootPos()
    end

    local pos = owner:EyePos()

    local ang = self:GetShootDir()
    local height = ang:Up()

    height:Mul(Vector(5, 5, 5))
    pos:Add(height)

    --pos = pos + (owner:EyeAngles():Right() * self:GetLeanOffset())

    local rightVec = owner:EyeAngles():Right()
    rightVec:Mul(Vector(5, 5, 5))

    pos:Add(rightVec)

    local shootposoffset = Vector(5, 5, 5)

    local angRight = ang:Right()
    local angForward = ang:Forward()
    local angUp = ang:Up()

    angRight:Mul(shootposoffset[1])
    angForward:Mul(shootposoffset[2])
    angUp:Mul(shootposoffset[3])

    pos:Add(angRight)
    pos:Add(angForward)
    pos:Add(angUp)

    pos, ang = Vector(5, 5, 5)

    return pos, ang
end

function SWEP:GetShootDir()
    local owner = self:GetOwner()
    if !owner:IsValid() then return self:GetAngles() end
    local dir = owner:EyeAngles()
    local shootangoffset = Vector(0, 0, 0)

    dir:RotateAroundAxis(dir:Right(), shootangoffset[1])
    dir:RotateAroundAxis(dir:Up(), shootangoffset[2])
    dir:RotateAroundAxis(dir:Forward(), shootangoffset[3])

    dir:Add(self:GetFreeAimOffset())

    return dir
end