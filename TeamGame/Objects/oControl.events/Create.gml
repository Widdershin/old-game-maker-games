//debug setup
globalvar debug;
debug = true

//pathing setup
globalvar pgrid, ts;
ts = 32
pgrid = mp_grid_create(0, 0, room_width/ts, room_height/ts, ts, ts)
mp_grid_add_instances(pgrid,oWall,0)

//mouse setup
globalvar mx, my, mh, mi;
mx = mouse_x
my = mouse_y
mi = instance_position(mx,my,pUnit);
mh = -4

//phase setup
globalvar phase, plan, fight, fightstart, over;
plan  = 0
fightstart = 1
fight = 2
over  = 3

phase = plan
prevphase = phase


