/*
    Controls the spear trap, and damages appropriate characters above it
*/
unit = instance_place(x,y,oLiving)
if unit
{
    if unit.object_index != oRogue && !cooldown
    {
        unit.hspeed = 0
        unit.rot = 0
        derp = unit.xscale
        image_speed = 1
        seen = true
        if image_index = 6
        {
            unit.vspeed = -1
            unit.hp -= 50
            unit.hspeed = derp
            unit.xscale = derp
            cooldown = 300
        }
    }
}
if image_index = image_number-1
{
    image_speed = 0
    image_index = 0
}
if cooldown > 0
{
    cooldown -= 1
}
