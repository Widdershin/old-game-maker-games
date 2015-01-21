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
event_inherited()
