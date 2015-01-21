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
squareid = instance_place(x,y,oLevitateSquare)
if squareid && !root
{
    onground = false
    levitate = true
    gravity = 0
    if place_free(x,y-1)
    {
        y -= 1
    }
    leftid = instance_place(x,y,oLeft)
    rightid = instance_place(x,y,oRight)
    if leftid
    {
        if leftid.active
        {
            //x -= 1
            if place_free(((x-32) div 32)*32,y)
            {
                hspeed = -1
                x -= 1
                xscale = hspeed
            }
        }
    }
    else
    if rightid
    {
        if  rightid.active
        {
            //x += 1
            if place_free(((x+32) div 32)*32,y)
            {
                hspeed = 1
                x += 1
                xscale = hspeed
            }
        }
    }
    else
    {
        x += sign(squareid.x+16-x)
    }
}
else
{
    levitate = false
}


if onground
{
    if place_free(x+16*sign(hspeed),y+1)
    {
        onground = false
        vspeed = -1
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
    command = instance_position(x,y,oCommand)
    if command
    {        
        if command.active && !levitate// && x > command.x+12 && x < command.x+18
        {
            script_execute(command.script)
        }
    }
    door = instance_position(x,y,oDoor)
    if door
    {
        oDoor.out += 1
        instance_destroy()
    }
    if !instance_exists(command) && prevexist
    {
        hspeed = xscale
        root = 0
        healing = 0
    }
    if instance_exists(command)
    {
        if  command.active
        {
            prevexist = true
        }
        else
        {
            prevexist = false
        }
    }
    else
    {
        prevexist = false
    }
    if prevscale != xscale {counter += 1} else {counter = 0}
    if counter = 4 {vspeed = -01 onground = false}
    prevscale = xscale    
}

if hp <= 0
{
    instance_destroy()
}

if root
{
    x = xprevious
    y = yprevious
}
