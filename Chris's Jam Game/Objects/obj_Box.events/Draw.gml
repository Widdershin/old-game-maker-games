
d3d_transform_set_identity();
d3d_transform_add_rotation_z(image_angle);
d3d_transform_add_translation(x,y,0)
for (i=0; i<=ds_list_size(pointx)-1; i+=1)
{

if (i<ds_list_size(pointx)-1)
{
draw_line(ds_list_find_value(pointx,i),ds_list_find_value(pointy,i),ds_list_find_value(pointx,i+1),ds_list_find_value(pointy,i+1))
}else{
draw_line(ds_list_find_value(pointx,i),ds_list_find_value(pointy,i),ds_list_find_value(pointx,0),ds_list_find_value(pointy,0))

}

}

d3d_transform_set_rotation_z(0);
d3d_transform_set_identity();