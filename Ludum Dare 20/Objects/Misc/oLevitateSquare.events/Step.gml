if !cooldown
{
    if place_free(x,y-32)
    {
        y -= 32
        cooldown = 10
    }
    else
    {
        instance_destroy()
    }
}
if cooldown > 0
{
    cooldown -= 1
}
if y < 0
{
    instance_destroy()
}
