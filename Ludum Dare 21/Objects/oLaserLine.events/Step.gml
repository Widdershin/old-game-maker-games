if timer = 0
{
    if on
    {
        on = false
        sound_play(soLaserStop)
    }
    else if !on
    {
        on = true
        sound_play(soLaser)
    }
    timer = 180
}
timer -= 1
if y > room_height
{
    with(leftlaser)
    {
        instance_destroy()
    }
    with(rightlaser)
    {
        instance_destroy()
    }
    instance_destroy()
}
