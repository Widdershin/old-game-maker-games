/*
    Controls the level editor
*/
if instance_position(mouse_x,mouse_y,id) && !mouseheld && mouse_check_button_pressed(mb_left) && placed && !chill
{
    mouseheld = id
    placed = false
}
if instance_position(mouse_x,mouse_y,id) && !mouseheld && mouse_check_button(mb_right)
{
    instance_destroy()
}
if !placed
{
    chill = false
}
