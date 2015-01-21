var a, b, path;
path = path_add()
mp_grid_path(gridid,path,argument0+16,argument1+16,argument2+16,argument3+16,0)
a = path_get_number(path)
b = 0
repeat(a)
{
    xx = path_get_point_x(path,b)-16
    yy = path_get_point_y(path,b)-16
    instance_create(xx,yy,oCorridor)
    b += 1
}
