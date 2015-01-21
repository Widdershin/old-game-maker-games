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
    if time < s * 10
    {
        time = s * 11
        titleFadeIn = false
        title = false
        titleFadeOut = false
    }
    else
        room_goto(rTown)
}
