var a, b, path;
if !variable_global_exists("gridai") {aigrid()}
mp_grid_clear_cell(gridai,x/ts,y/ts)
path = path_add()
if mp_grid_path(gridai,path,x,y,oPlayer.x+16,oPlayer.y+16,1)
{
    a = path_get_number(path)
    b = 0
    move += DEX/oPlayer.DEX
    repeat(floor(move))
    {
        xx = path_get_point_x(path,b+1)-16
        yy = path_get_point_y(path,b+1)-16
        if xx = oPlayer.x && yy = oPlayer.y
        {
            attack(oPlayer)
        }
        else
        {
            x = xx
            y = yy
        }
        b += 1
        move -= 1
    }
    mp_grid_clear_all(gridai)
    with(pWall)
    {
        mp_grid_add_cell(gridai,x/ts,y/ts)
    }
    with(pEnemy)
    {
        mp_grid_add_cell(gridai,x/ts,y/ts)
    }
}
if debug {sendmsg("AI Move Attempted")}
