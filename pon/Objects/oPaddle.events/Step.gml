if keyboard_check(vk_up)
{
    y -= 6
}
if keyboard_check(vk_down)
{
    y += 6
}
if keyboard_check_pressed(ord("R"))
{
    game_restart()
}
