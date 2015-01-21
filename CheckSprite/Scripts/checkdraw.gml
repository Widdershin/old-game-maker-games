var i, a, b;
draw_set_color(c_aqua)
i = 0
repeat(ds_list_size(point))
{
    a = ds_list_find_value(point,i)   
    b = ds_list_find_value(point,i+1)
    if i = ds_list_size(point)-1 {b = ds_list_find_value(point,0)}
    draw_line(a.x,a.y,b.x,b.y)
    i += 1
}
