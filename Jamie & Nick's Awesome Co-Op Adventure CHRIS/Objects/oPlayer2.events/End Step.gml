if keyboard_check_pressed(usekey2) && !joystick && platmake = 0
{
   
        instance_create(x,y+12,oPlatformSheild)
         
        platmake = plattime
        colord = c_white
        sound_play(soPlace)
        
}if keyboard_check_pressed(usekey) && !joystick && platmake = 0
{
   
        instance_create(x,y+12,oPlatform)
        sound_play(soPlace) 
        platmake = plattime
        colord = c_white
        
}
if joystick
{
    if joystick_check_button(1,2)
    {
        if not instance_position(oPlayer2.x,oPlayer2.y+14,oPlatform)
                {
            if !pressed
            {
                instance_create(x,y+13,oPlatform)
            }
        pressed = 1
        }
        else
        {
            pressed = 0
        }
    }
}
if platmake > 0
{
    platmake -= 1
}

