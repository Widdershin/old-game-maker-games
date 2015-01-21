/*
    Responsible for movement of characters, collision, and obeying commands.
*/

if vspeed != 0 || !onground
{
    if place_free(x,y+vspeed)
    {
        gravity = 0.15
        rot = 0
    }
    else if vspeed >= 0
    {
        move_contact_solid(270,vspeed)
        vspeed = 0
        gravity = 0
        onground = true
    }
    else if vspeed < 0
    {
        move_contact_solid(90,vspeed)
        vspeed = 0.1
    }
}
if !place_free(x+hspeed,y)
{
    hspeed = -hspeed
    xscale = -xscale
}
if abs(hspeed) < 1 && abs(hspeed) > 0 && !onground
{
    hspeed = xscale
}

if onground
{
    if place_free(x+16*sign(hspeed),y+1)
    {
        hspeed = -hspeed
        xscale = -xscale
    }
    if place_free(x,y+1)
    {
        onground = false
    }
    if rot > 10
    {
        rotdir = 1
    }
    if rot < -10
    {
        rotdir = 0
    }
    if rotdir = 1
    {
        rot -= abs(hspeed*1.5)
    }
    if rotdir = 0
    {
        rot += abs(hspeed*1.5)
    }
    if prevscale != xscale {counter += 1} else {counter = 0}
    if counter = 4 {vspeed = -01 onground = false}
    prevscale = xscale    
}

if hp <= 0
{
    instance_destroy()
}


