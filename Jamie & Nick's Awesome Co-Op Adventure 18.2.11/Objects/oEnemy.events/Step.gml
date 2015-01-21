if timer > 0
{
    timer -= 1
}
else
{
    bid = instance_create(x,y,oEBullet)
    bid.speed = 5
    bid.direction = image_angle
    timer = timers
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
