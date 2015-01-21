if !onGround && vspeed != 0
{
    if instance_place(x, y+vspeed+1, oPlatform)
    {
        move_contact_solid(point_direction(0,0,0,vspeed),vspeed)
        if abs(vspeed)
        {
            gravity = 0
            onGround = true
        }
        vspeed = 0
    }
}

if onGround
{
    if !instance_place(x,y+1, oPlatform)
    {
        onGround = false
        gravity = desGravity
    }
    
    if keyboard_check(ord("D"))
    {
        hspeed = moveSpeed
        xscale = 1
    }
    else if keyboard_check(ord("A"))
    {
        hspeed = -moveSpeed
        xscale = -1
    }
    else
    {
        hspeed = 0
    }

}

if keyboard_check_released(ord("R"))
    game_restart()
