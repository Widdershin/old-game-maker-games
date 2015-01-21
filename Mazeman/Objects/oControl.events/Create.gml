mazeinit()
//mazegen()
cell = instance_find(oTile,irandom(instance_number(oTile)-1))
while(mazec != instance_number(oTile))
{
    ds_stack_push(maze,cell)
    cell.active = 1
    list = ds_stack_create()
    ds_list_add(list,"left")
    ds_list_add(list,"right")
    ds_list_add(list,"up")
    ds_list_add(list,"down")
    ds_list_shuffle(list)
    dir = ""
    err = 0
    stop = false
    repeat(4)
    {
    if !stop
        {
            if mazecheck(ds_list_find_value(list,ds_list_size-1))
            {
                stop = true
            }
        }
    }
    if stop = false {ds_stack_pop(maze) cell.active = 2 cell = ds_stack_top(maze) mazec += 1}
    ds_list_destroy(list)
}
