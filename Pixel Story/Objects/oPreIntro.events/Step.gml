time += 1

skip = false
if gamepadID
{
    if joystick_check_button(gamepadID, 1)
    {
        skip = true
    }
}

if time >= 4 * 60 || keyboard_check_pressed(vk_space)
{
    skip = true
}

if skip
{
    room_goto(rIntro)
}
