globalvar pgrid;
pgrid = mp_grid_create(0,0,ceil(room_width/32),ceil(room_height/32),32,32)
mp_grid_add_instances(pgrid,pRoom,0)
