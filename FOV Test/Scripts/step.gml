with(pTile)
{
    fovstep(oPlayer,pWall,200)
}
/*if !variable_local_exists("a"){a = 0}
b = a
a = 0
c = 0
repeat(b)
{
    mp_grid_clear_cell(gridai,aistop[c,0],aistop[c,1])
    c += 1
}*/
with(pEnemy)
{
    aimove()
/*    mp_grid_add_cell(gridai,x/ts,y/ts)
    aistop[other.a,0] = x/ts
    aistop[other.a,1] = y/ts
    other.a += 1*/
}
