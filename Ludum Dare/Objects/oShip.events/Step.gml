if keyboard_check(vk_up)
{
    y -= vtarspeed
}

if keyboard_check(vk_down)
{
    y += vtarspeed
}

if keyboard_check(vk_left)
{
    x -= htarspeed
}

if keyboard_check(vk_right)
{
    x += htarspeed
}

if keyboard_check_pressed(vk_space)
{
    fire()
}
