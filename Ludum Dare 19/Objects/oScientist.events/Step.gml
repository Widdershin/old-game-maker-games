aigrid()
if rawtime = 8*60 {target = labtarget if !labtarget{target = findtarget(oLab) labtarget = target}}
if rawtime = 12*60 {target = cafetarget if !cafetarget{target = findtarget(oCafe) cafetarget = target}}
if rawtime = 13.5*60 {target = labtarget if !labtarget{target = findtarget(oLab) labtarget = target}}
if rawtime = 17*60 {target = exittarget}
if prevtarget != target
{
    if target = -1 
    {
        //target = findtarget(oLab)
        cango = false
        status = "Don't know where to go!"
    }
    else
    {
        path = path_add()
        cango = mp_grid_path(grid,path,x,y,target.spawnx+16,target.spawny+16,0)
        path_start(path,3*timescale,0,1)
        if !cango {status = "Can't go there!"}
    }
    if !cango {timer += 300 sound_play(soConfused)}
}
if target
{
    if path_position = 1 && cango
    {
        ontarget = true
    }
    else
    {
        ontarget = false
    }
}
/*if target != -1
{
if x = target.spawnx && y = target.spawny
{
    if path_add
    {
        path_delete(path) path = -1
    }
}
}*/
prevtarget = target
if timer > 0 {timer -= 1}
if ontarget && target = labtarget
{
    science += 10/60
}
