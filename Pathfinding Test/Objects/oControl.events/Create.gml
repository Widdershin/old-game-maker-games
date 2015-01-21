globalvar grid;
grid = mp_grid_create(0,0,32,32,32,32)
with(oWall)
{
    mp_grid_add_cell(grid,x/32,y/32)
}
