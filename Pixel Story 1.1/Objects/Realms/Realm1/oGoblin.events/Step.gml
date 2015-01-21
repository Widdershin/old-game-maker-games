
inputWait -= 1

if inputWait <= 0
{
    inputWait = 0
    mp_grid_clear_cell(grid, x div t, y div t)
    mp_grid_path(grid, path, dX, dY, oPlayer.dX, oPlayer.dY, 1)
    mp_grid_add_cell(grid, x div t, y div t)
    
    tarX = path_get_point_x(path, 1)
    tarY = path_get_point_y(path, 1)
    if !instance_place(tarX,tarY,oPlayer)
    {
        x = tarX
        y = tarY
    }
    else
    {
        oPlayer.hit += 1
        inputWait = inputDelay * 4       
    }
    inputWait += inputDelay       
}


dX = x div t * t
dY = y div t * t

