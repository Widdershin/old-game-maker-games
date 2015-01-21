globalvar grid;
grid = mp_grid_create(0,0,ceil(room_width/32),ceil(room_height/32),32,32)
mp_grid_add_rectangle(grid,0,0,room_width,room_height)
with(pBlock)
{
    mp_grid_clear_cell(grid,x/32,y/32)
}
/*
with(oSpawn)
{
    mp_grid_clear_cell(grid,x/32,y/32)
}
