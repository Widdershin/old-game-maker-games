switch (argument0)
{
    case "left"  : 
    if instance_position(cell.x+leftx,cell.y+lefty,oTile) 
    {
        a = instance_position(cell.x+leftx,cell.y+lefty,oTile)
        if a.active = 0 
        {
            cell.passleft = true
            a.passright = true 
            a.active = 1 
            cell = a
            return 1
        }
    }
    else
    {
        ds_list_delete(list,ds_list_size(list)-1)
        return 0
    } ; break
    case "right"  : 
    if instance_position(cell.x+rightx,cell.y+righty,oTile) 
    {
        a = instance_position(cell.x+rightx,cell.y+righty,oTile)
        if a.active = 0 
        {
            cell.passright = true
            a.passleft = true 
            a.active = 1 
            cell = a
            return 1
        }
    }
    else
    {
        ds_list_delete(list,ds_list_size(list)-1)
        return 0
    } ; break
    case "up"  : 
    if instance_position(cell.x+upx,cell.y+upy,oTile) 
    {
        a = instance_position(cell.x+upx,cell.y+upy,oTile)
        if a.active = 0 
        {
            cell.passup = true
            a.passdown = true 
            a.active = 1 
            cell = a
            return 1
        }
    }
    else
    {
        ds_list_delete(list,ds_list_size(list)-1)
        return 0
    } ; break
    case "down"  : 
    if instance_position(cell.x+downx,cell.y+downy,oTile) 
    {
        a = instance_position(cell.x+downx,cell.y+downy,oTile)
        if a.active = 0 
        {
            cell.passdown = true
            a.passup = true 
            a.active = 1 
            cell = a
            return 1
        }
    }
    else
    {
        ds_list_delete(list,ds_list_size(list)-1)
        return 0
    } ; break
}
