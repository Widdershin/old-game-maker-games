num = ds_list_find_index(point,id)
if num != ds_list_size(point)-1
{
    tarid = ds_list_find_value(point,num+1)
}
else
{
    tarid = ds_list_find_value(point,0)
}
