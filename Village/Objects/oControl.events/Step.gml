if keyboard_check_pressed(vk_space)
{
    if renderIso
    {
        renderIso = false
    }
    else if !renderIso
    {
        renderIso = true
    }
}
if mouse_check_button_pressed(mb_left)
{
    startx = mouse_x
    starty = mouse_y
}
if mouse_check_button(mb_left)
{
    offx -= startx-mouse_x
    offy -= starty-mouse_y
    startx = mouse_x
    starty = mouse_y
}
if mouse_wheel_up()
{
    s += 1
}
if mouse_wheel_down()
{
    s -= 1
}
