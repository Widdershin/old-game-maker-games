if (phase = plan)
{
    if (mh != -4)
    {
        draw_sprite(sSelected,-1, mh.x, mh.y)
        if mh.path
        {
            with(mh)
            draw_path(path,x,y,0)
        }
    }
}
else if (phase = fight)
{
    
}
else if (phase = over)
{

}

if debug
{
    if keyboard_check(ord("A"))
    {
        mp_grid_draw(pgrid)
    }
}
