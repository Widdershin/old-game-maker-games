var tar;
if mouse_check_button_pressed(mb_left)
{
    tar = instance_position(mouse_x,mouse_y,oTile)
    tar.alt = 4
    temp = 4
    with(oTile)
    {
        alt = ceil(4-(point_distance(x,y,mouse_x,mouse_y)/16))
        if alt < 0 {alt = 0}
    }
}
if mouse_check_button_pressed(mb_right)
{
    tar = instance_position(mouse_x,mouse_y,oTile)
    tar.alt -= 1
}
