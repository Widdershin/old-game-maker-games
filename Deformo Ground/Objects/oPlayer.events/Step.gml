///////////////////////////////////Movement Code///////////////////////////////////////////////////////
if !place_meeting(x,y+vspeed,oGround)
{
    gravity = 0.2
    onground = false
}
else
{
    if ongroundprev = false
    {
        if vspeed != 0
        {
            move_contact_solid(270,vspeed)
        }
        vspeed = 0
        gravity = 0
    }
}
if keyboard_check_pressed(ord("W"))
{
vspeed = -5
}
if keyboard_check(ord("D"))
{
    if !place_meeting(x+3,y,oGround) {hspeed = 3}
    else
    {
        canmove = false
        for (i=1; i<10; i+=1)
        {
            if !place_meeting(x+3/(i*2),y-i,oGround)
            {
                hspeed = 3/(i*2)
                y -= i
                canmove = true
                exit
            }
        }
        if !canmove
        {
            hspeed = 0
            move_contact_solid(0,3)
        }
    }
}
if keyboard_check(ord("A"))
{
    if !place_meeting(x-3,y,oGround) {hspeed = -3}
    else
    {
        canmove = false
        for (i=0; i<10; i+=1)
        {
            if !place_meeting(x-3,y-i,oGround)
            {
                hspeed = -3
                y -= i
                canmove = true
                exit
            }
        }
        if !canmove
        {
            hspeed = 0
            move_contact_solid(180,3)
        }
    }
}
if keyboard_check_released(ord("D")) {hspeed = 0}
if keyboard_check_released(ord("A")) {hspeed = 0}
ongroundprev = onground
if keyboard_check_pressed(ord("G")) 
{
    grenadeid = instance_create(x,y,oGrenade)
    grenadeid.vspeed = -5+vspeed
    grenadeid.hspeed = hspeed*1.4
}
