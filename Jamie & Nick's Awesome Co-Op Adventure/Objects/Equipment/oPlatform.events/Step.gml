if x < 0-(sprite_width)-50
{
    instance_destroy()
    if pylonid
    {
        with(pylonid)
        {instance_destroy()}
    }
    if turretid
    {
        with(turretid)
        {
            with gunid instance_destroy()
            instance_destroy()
        }
    }
}
if !test {hspeed = -sp*0.5}
if pylonid
{
    pylonid.x = x
    pylonid.y = y-14
}
if turretid
{
    turretid.x = x
    turretid.y = y-14
}
