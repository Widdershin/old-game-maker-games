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
        vspeed = 0
        gravity = 0
        onground = true
    }
}
if keyboard_check_pressed(wmove) && onground && !joystick
{
    vspeed = -5
    sound_play(soJump)
}
if keyboard_check(dmove)&& !joystick
{
    if !place_meeting(x+3,y,oGround) {hspeed = 3}
    else
    {hspeed = 0}
}
if keyboard_check(amove)&& !joystick
{
    if !place_meeting(x-3,y,oGround) {hspeed = -3}
    else
    {hspeed = 0}
}
if keyboard_check_released(dmove) || keyboard_check_released(amove)
{
    hspeed = 0
}
if joystick
{
    if sign(round(joystick_xpos(joystickid))) = 1
    {
        if !place_meeting(x+3,y,oGround) {hspeed = 3}
        else
        {hspeed = 0}
    }
    if sign(round(joystick_xpos(joystickid))) = -1
    {
        if !place_meeting(x-3,y,oGround) {hspeed = -3}
        else {hspeed = 0}
    }
    if sign(round(joystick_xpos(joystickid))) = 0
    {
        hspeed = 0
    }
    hspeed = sign(round(joystick_xpos(joystickid)))*3
    if joystick_check_button(joystickid,5) || joystick_check_button(joystickid,6) || joystick_check_button(joystickid,1) && onground
    {
        vspeed = -5
        sound_play(soJump)
    }
}
ongroundprev = onground
if x > room_width || x < 0 || y > room_height || y < 0
{
    gameover(id)
}
