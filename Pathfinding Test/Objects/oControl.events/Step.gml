if keyboard_check_pressed(vk_enter)
{
    mp_grid_path(grid,path,oStart.x+16,oStart.y+16,oEnd.x+16,oEnd.y+16,0)
    a = path_get_number(path)
    b = 0
    repeat(a)
    {
        instance_create(path_get_point_x(path,b),path_get_point_y(path,b),oMove)
        b += 1
    }
}
if keyboard_check_pressed(ord("R")){game_restart()}
