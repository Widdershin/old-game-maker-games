if !onground
{
    if instance_place(x,y+vspeed+1,oWall)
    {
        move_contact_solid(270,vspeed+1)
        onground = true
        vspeed = 0
        gravity = 0

    }
    hspeed *= 0.99
}

if onground
{
    if instance_place(x+hspeed+abs(hspeed),y,oWall)
    {
        if hspeed > 0
        {
            againstwall = -1
        }
        else
        {
            againstwall = 1
        }
        
        move_contact_solid(point_direction(0,0,hspeed,0),hspeed)
        hspeed = 0
    }
    else
    {
        againstwall = 0
    }

    if keyboard_check(ord("A")) && againstwall != 1
    {
        hspeed = -maxspeed
    }
    else if keyboard_check(ord("D")) && againstwall != -1
    {
        hspeed = maxspeed
    }
    
    if keyboard_check_pressed(ord("W"))
    {
        vspeed = -5
        onground = false
        gravity = gravitymax
    }
    hspeed *= 0.8
    
    if !instance_place(x, y+1, oWall)
    {
        onground = false
        gravity = gravitymax
    }
}
