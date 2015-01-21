globalvar s;
s = 32 //tile size

globalvar cGrid;
cGrid = mp_grid_create(0,0,room_width/s, room_height/s, s, s)
mp_grid_add_instances(cGrid,oWall,0)

