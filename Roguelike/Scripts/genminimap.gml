surface_set_target(minimap)
draw_clear(c_black)
instance_activate_object(pTile)
with(oWall)
{
    if lighting{if haveseen {draw_point_color(x/ts,y/ts,c_white)}}
    //else {draw_point_color(x/ts,y/ts,c_white)}
}
with(oFloor)
{
    if lighting{if haveseen {draw_point_color(x/ts,y/ts,c_gray)}}
    //else {draw_point_color(x/ts,y/ts,c_gray)}
}
with(oPlayer)
{
    draw_point_color(x/ts,y/ts,c_blue)
}
surface_reset_target()
instance_deactivate_object(pTile)
instance_activate_region(view_xview[0]-ts*2, view_yview[0]-ts*2, view_wview[0]+ts*2, view_hview[0]+ts*3, true);
