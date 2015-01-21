var param, length, numbercount, px, py, ppx, ppy, temp;
param = argument0
numbercount = path_get_number(param)
temp = 0
length = 0
repeat(numbercount-1)
{
    px = path_get_point_x(param,temp)
    py = path_get_point_y(param,temp)
    ppx = path_get_point_x(param,temp+1)
    ppy = path_get_point_y(param,temp+1)
    length += point_distance(px,py,ppx,ppy)
    temp += 1
}
return length
