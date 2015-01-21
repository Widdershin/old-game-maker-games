if keyboard_check_pressed(vk_space)
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
