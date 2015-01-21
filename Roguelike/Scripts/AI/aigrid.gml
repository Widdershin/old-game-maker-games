aiplace()
globalvar gridai;
gridai = mp_grid_create(0,0,room_width/ts,room_height/ts,ts,ts)
with(pWall)
{
    mp_grid_add_cell(gridai,x/ts,y/ts)
}
with(pEnemy)
{
    mp_grid_add_cell(gridai,x/ts,y/ts)
}
if debug{sendmsg("The AI grid has been generated.")}
