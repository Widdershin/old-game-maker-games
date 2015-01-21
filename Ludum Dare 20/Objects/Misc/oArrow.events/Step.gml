/*
    Controls the arrow's collision and damages enemies
*/
if !stuck
{
    image_angle = direction
    if !place_free(x+hspeed,y+vspeed)
    {
        move_contact_solid(direction,speed)
        speed = 0
        stuck = true
    }
}
if instance_place(x,y,oEnemy) && !stuck
{
    with(instance_place(x,y,oEnemy))
    {
        if object_index = oGoblin
        {
            hp -= other.damage/2
        }
        else
        {
            hp -= other.damage
        }
    }
    instance_destroy()   
}
if stuck
{
    if place_free(x,y)
    {
        instance_destroy()
    }
}
