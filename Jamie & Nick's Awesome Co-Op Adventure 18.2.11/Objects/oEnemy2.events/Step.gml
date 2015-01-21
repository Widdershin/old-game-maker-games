if instance_exists(target)
{
    move_towards_point(target.x,target.y,movesp)
}
if x < 0-(sprite_width/2)
{
    instance_destroy()
}
if place_meeting(x,y,oPlayer)
{
    with(instance_position(x,y,oPlayer))
    {
        instance_destroy()
    }
}

