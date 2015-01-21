if keyboard_check_pressed(vk_space)
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
