if mouse_check_button_pressed(mb_left)
{
    tarX = mouse_x div 32 * 32 + 16
    tarY = mouse_y div 32 * 32 + 16
    path = path_add()
    mp_grid_path(cGrid, path, x, y, tarX, tarY, true)
    path_set_kind(path, 1)
    path_start(path,tarSpeed,0,0)
}

image_angle = point_direction(xPrev, yPrev, x, y)
xPrev = x
yPrev = y
