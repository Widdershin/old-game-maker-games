if (phase = plan)
{
    mx = mouse_x
    my = mouse_y
    mi = instance_position(mx,my,pUnit);
    if (mouse_check_button_pressed(mb_left))
    {
        if mi
        {
            mh = mi
        }
        else
        {
            mh = -4
        }
    }
    if (mouse_check_button_pressed(mb_right) && mh)
    {
        with(mh)
        {
            path = path_add()
            mp_grid_path(pgrid, path, x, y, (mx div ts*ts)+ts/2, (my div ts*ts)+ts/2, 1)
            path_set_kind(path,1)
        }
    }
    
    if keyboard_check_pressed(vk_space)
    {
        phase = fightstart
    }
}
else if (phase = fightstart)
{
    //show_message("TEST")
    with(pUnit)
    {
        if path
        {
            path_start(path,1,0,0)
        }
    }
    phase = fight
}
else if (phase = fight)
{
    
}
else if (phase = over)
{

}
if debug
{
    if keyboard_check_pressed(ord("R"))
    {
        game_restart()
    }
}
