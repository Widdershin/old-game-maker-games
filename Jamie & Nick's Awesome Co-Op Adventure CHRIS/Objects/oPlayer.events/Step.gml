///////////////////////////////////Movement Code///////////////////////////////////////////////////////
if !place_meeting(x,y+vspeed+1,oGround)
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
            //move_contact_solid(270,vspeed)
        }
        vspeed = 0
        gravity = 0
        onground = true        
    }
}
//if place_meeting(x,y-6,oGround)
//{
   // vspeed = 0
    //y += 1
//}
if keyboard_check_pressed(wmove) && onground && !joystick
{
       
        
    vspeed = -5
    sound_play(soJump)
    }
if keyboard_check(dmove)&& !joystick
{
    if !place_meeting(x+3,y,oGround) {hspeed = 3}
    else
    {
        hspeed = 0
        //move_contact_solid(0,3)
    }
}
if keyboard_check(amove)&& !joystick
{
    if !place_meeting(x-3,y,oGround) {hspeed = -3}
    else
    {
        hspeed = 0
//      move_contact_solid(180,3)
    }
}
if keyboard_check_released(dmove)
{
    hspeed = 0
    //friction = 0.1
      
}
if keyboard_check_released(amove)
{
    hspeed = 0
    //friction = 0.1
}
if joystick
{
    hspeed = sign(round(joystick_xpos(1)))*3
    v = joystick_buttons(1)
    vv = 0
    if joystick_check_button(1,1) && onground
    {
        vspeed = -5
    }
}
ongroundprev = onground
if x > room_width || x < 0 || y > room_height
{
    instance_destroy()
}
/*if aimbot
{
    pc = instance_number(oPlatform)
    pdis = 5000
    for (i=0; i<pc; i+=1)
    {
        ptarr = instance_find(oPlatform,i)
        if ptarr.x > x && ptarr.x < x+140
        {
            pdiss = x+140 - ptarr.x
            if pdiss > pdis && pdiss < 0
            {
                ptar = tarr
                pdis = diss
            }
        }
    }
    
}

