if keyboard_check_pressed(ord("Q"))
{
clipboard = true
}
if keyboard_check_pressed(ord("R"))
{
    game_restart()
}
rawtime += 0.25*timescale
if rawtime > 1440 {rawtime = 0}
hour = rawtime div 60
minute = ceil(rawtime - hour*60)
if mouse_check_button_pressed(mb_left)
{
    if pathtool = 1
    {
        path1x = floor(mouse_x/32)*32
        path1y = floor(mouse_y/32)*32
        sound_play(sPlace)
        pathtool = 2
    }
    else if pathtool = 2
    {
        var a, b;
        path = path_add()
        mp_grid_path(pgrid,path,path1x+16,path1y+16,floor(mouse_x/32)*32+16,floor(mouse_y/32)*32+16,0)
        a = path_get_number(path)
        b = 0
        repeat(a)
        {
            xx = path_get_point_x(path,b)-16
            yy = path_get_point_y(path,b)-16
            if !instance_position(xx,yy,oPath)
            {
                instance_create(xx,yy,oPath)
            }
            b += 1
        }
        path_delete(path)
        sound_play(sPlace)
        if keyboard_check(vk_shift)
        {
            path1x = floor(mouse_x/32)*32
            path1y = floor(mouse_y/32)*32
            pathtool = 2
        }
        else
        {
            pathtool = 0
            cursor_sprite = sCursor
            mousefree = 1
        }
    }
}
if keyboard_check(ord("W")) && view_yview > 0 {view_yview -=3}
if keyboard_check(ord("A")) && view_xview > 0 {view_xview -=3}
if keyboard_check(ord("S")) && view_yview < room_height-view_hview{view_yview +=3}
if keyboard_check(ord("D")) && view_xview < room_width-view_wview {view_xview +=3}
