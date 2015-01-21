/*
    Responsible for movement of characters, collision, and obeying commands.
*/

if !target
{
    range = maxrange
    with(oUnit)
    {
        if distance_to_object(other) < other.range && !collision_line(x,y,other.x,other.y,oGround,1,1)
        {
            other.range = distance_to_object(other)
            other.target = id
        }      
    }
}
else
{
    hspeed = 0
    if !instance_exists(target)
    {
        hspeed = xscale
        target = -1
    }
    if idle
    {
        y += 8
    }
    idle = false
    if instance_position(x,y,oUnit) && !cooldown
    {
        with(instance_position(x,y,oUnit))
        {
            hp -= other.damage
        }
        cooldown = 90
    }
    mp_potential_step_object(target.x,target.y,1,oGround)
    
}
if cooldown > 0
{
    cooldown -= 1
}
