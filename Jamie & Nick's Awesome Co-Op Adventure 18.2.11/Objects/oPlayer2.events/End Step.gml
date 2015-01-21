if keyboard_check_pressed(usekey) && !joystick && platmake = 0
{
    instance_create(x,y+16,oPlatform)
    sound_play(soPlace) 
    platmake = plattime
    colord = c_white
}
if joystick
{
    if joystick_check_button(1,2)
    {
        if !pressed
        {
            instance_create(x,y+16,oPlatform)
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

