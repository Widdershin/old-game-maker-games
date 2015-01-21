instance_deactivate_object(pTile)
instance_activate_region(view_xview[0]-ts*2, view_yview[0]-ts*2, view_wview[0]+ts*2, view_hview[0]+ts*3, true);
with(pTile)
{
    fovstep(oPlayer,pWall,200)
}
instance_activate_object(pTile)
with(pEnemy)
{
    aimove()
    if x != xprevious || y != yprevious
    {
        mp_grid_clear_cell(aigrid,xprevious/ts,yprevious/ts)
        mp_grid_add_cell(aigrid,x/ts,y/ts)
    }
}
genminimap()
