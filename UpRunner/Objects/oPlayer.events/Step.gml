if vspeed != rate || !onground && !inground
{
    gravity = gravitynum
    if vspeed > rate
    {
        if instance_place(x,y+vspeed,oPlatform)
        {
            move_contact_solid(270,vspeed)
            onground = true
            gravity = 0
            vspeed = rate
        }
    }
}


if instance_place(x,y,oPlatform) && !onground
{
    inground = true
    gravity = gravitynum
}
else
{
    inground = false
}


if onground || prevonground
{
    move_contact_solid(270,rate*2)
    if !instance_place(x,y+1,oPlatform)
    {
        onground = false
        gravity = gravitynum
    }
    if inground && prevonground
    {
        move_outside_solid(90,1)
    }
}


if hspeed != 0 && (onground || prevonground)
{
    if instance_place(x+hspeed,y-1,oPlatform)
    {
        move_contact_solid(point_direction(0,0,hspeed,0),hspeed)
        hspeed = 0
    }
}

if keyboard_check(vk_left)
{
    if !inground
    {
        if !instance_place(x+(hspeed-0.4),y-1,oPlatform)
        {
            motion_add(180,0.4)
        }
        else
        {
            move_contact_solid(180,abs(hspeed-0.4))
            hspeed = 0
        }
    }
    else
    {
        motion_add(180,0.4)
    }
}


if keyboard_check(vk_right)
{
    if !inground
    {
        if  !instance_place(x+hspeed+0.4,y-1,oPlatform)
        {
            motion_add(0,0.4)
        }
        else
        {
            move_contact_solid(0,hspeed+0.4)
            hspeed = 0
        }
    }
    else
    {
        motion_add(0,0.4)
    }
}


hspeed *= 0.9

if keyboard_check(vk_space) // jump
{
    if (onground || prevonground)
    {
        if pause && !over
           unpause()
        sound_play(soJump)
        jumpcharge = 2
        vspeed = 0
        onground = false
        prevonground = false
        motion_add(90,4)
    }
    else if jumpcharge > 0
    {
        motion_add(90,jumpcharge/10)
        jumpcharge -= jumpcharge/10
    }
}
else
{
    jumpcharge = 0
}


if hspeed != 0
{
    if instance_place(x+hspeed,y-1,oWall)
    {
        if hspeed < 0
        {
            move_contact_solid(180,hspeed)
        }
        if hspeed > 0
        {
            move_contact_solid(0,hspeed)
        }
        hspeed = 0
    }
}

if keyboard_check(ord("R")) && !pause
{
    game_restart()
}
prevonground = onground
show_debug_message(prevonground)
if y > room_height+16
{
    gameover()
}
if keyboard_check_pressed(vk_f2)
{
    highscore_clear()
}

