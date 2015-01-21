/*
    Controls the character's abilities
*/
if !target
{
    range = maxrange
    with(oEnemy)
    {
        if distance_to_object(other) < other.range && !collision_line(x,y,other.x,other.y,oGround,1,1)
        {
            other.range = distance_to_object(other)
            other.target = id
        }      
    }
    prevoffset = 0
}
else
{
    hspeed = 0
    rot = 0
    if !instance_exists(target)
    {
        if !root
        {
            hspeed = xscale
        }
        target = -1
    }
    /*if instance_exists(arrowid)
    {
        if arrowid.gravity = 0 && cooldown < 90
        {
            prevoffset = (target.y-arrowid.y)/2
        }
    }*/
    if distance_to_object(target) > maxrange || collision_line(x,y,target.x,target.y,oGround,1,1) 
    {
        if !root
        {
            target = -1
            hspeed = xscale
        }
    }
    if !cooldown && target
    {
        arrowid = instance_create(x,y,oArrow)
        arrowid.direction = point_direction(x,y,target.x,target.y) + prevoffset
        arrowid.speed = 10
        arrowid.damage = damage
        arrowid.stuck = false
        sound_play(soArrow)
        cooldown = 120
    }
}
if cooldown > 0
{
    cooldown -= 1
}
with oTrap
{
    if distance_to_object(other) < 64
    {
        if !collision_line(x,y,other.x,other.y,oGround,1,1)
        {
            seen = true
        }
    }
}
