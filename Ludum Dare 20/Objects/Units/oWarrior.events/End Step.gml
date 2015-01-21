/*
    Controls the character's abilities
*/
if !target
{
    target = instance_place(x+32*hspeed,y,oEnemy)
}
if target
{
    hspeed = 0
    rot = 0
    if !instance_exists(target)
    {    
        hspeed = xscale
        target = -1
    }
    if !cooldown && target
    {
        if distance_to_object(target) <= 32
        {
            attackid = instance_create(target.x,target.y,oAttack)
            cooldown = 120
            attackid.xscale = xscale
            attackid.target = target
            attackid.damage = damage
            vspeed = -1
        }
        else
        {
            target = -1
            hspeed = xscale
        }
    }

}
if cooldown > 0
{
    cooldown -= 1
}
