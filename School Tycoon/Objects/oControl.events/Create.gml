globalvar T, RW, RH, grid;
T = 32
RW = room_width
RH = room_height

grid = mp_grid_create(0, 0, RW / T, RH / T, T, T)
with(oWall)
{
    mp_grid_add_instances(grid, oWall, 1)
} 

mouse_vx = 0
mouse_vy = 0
mousePan = 0


//Tools
globalvar tool;
toolNewRoom = 0
toolTestMessage = 1
newRoom = false
newRoomValid = false

tool = toolNewRoom

