if mouse_check_button(mb_left)
{
    surface_set_target(paint)
    draw_point_color(mouse_x,mouse_y,mbcolor)
    surface_reset_target()
}
if keyboard_check_pressed(ord("C"))
{
    mbcolor = get_color(0)
}
if keyboard_check_pressed(ord("S"))
{
    surface_save(paint,"lulz.png")
}
