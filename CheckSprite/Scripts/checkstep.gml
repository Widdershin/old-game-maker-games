with(oPoint)
{
    if !static
    {
        x -= sign(x-tarx)
        y -= sign(y-tary)
        if collision_point(x,y,oTest,1,1)
        {
            static = true
        }
        if collision_line(x,y,tarid.x,tarid.y,oTest,1,1)
        {
        var ins, dir, dis, xn, yn, np;
            ins = instance_create(x,y,oCol)
            dir = point_direction(x,y,tarid.x,tarid.y)
            dis = point_distance(x,y,tarid.x,tarid.y)
            ins.dir = dir
            ins.dis = dis
            with(ins)
            {
                move_contact_solid(dir,dis)
            }
            xn = ins.x
            yn = ins.y
            with(ins)
            {
                instance_destroy()
            }
            np = instance_create(xn,yn,oPoint)
            np.static = true
            ds_list_insert(point,num+1,np)
            tarid = np
            ds_list_sort(point,0)
        }
    }
}
