if keyboard_check_pressed(usekey) && !joystick && platmake = 0 && !onground
{
    instance_create(x,y+12,oPlatform)
    sound_play(soPlace) 
    platmake = plattime
}
if joystick
{
    if joystick_check_button(joystickid,2) && platmake = 0 && !onground
    {
        if !pressed
        {
            instance_create(x,y+12,oPlatform)
            sound_play(soPlace) 
            platmake = plattime
        }
    pressed = 1
    }
    else
    {
        pressed = 0
    }
}
if platmake > 0
{
    platmake -= 1
}

