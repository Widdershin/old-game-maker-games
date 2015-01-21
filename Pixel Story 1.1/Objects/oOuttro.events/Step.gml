skip = false
if gamepadID
{
    if joystick_check_button(gamepadID, 1)
    {
        skip = true
    }
}

if keyboard_check_pressed(vk_space)
{
    skip = true
}

if skip
{
    if time < s * 17
    {
        time = s * 16 
    }
    else
    {
        game_end()
    }
}
