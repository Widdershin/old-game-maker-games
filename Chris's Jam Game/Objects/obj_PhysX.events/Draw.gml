if (CreatingBody==true)
{
if (ShapeCreate==0)
{
draw_rectangle(X1,X2,mouse_x,mouse_y,1);
}
if (ShapeCreate==1)
{
draw_circle(X1,X2,point_distance(X1,X2,mouse_x,mouse_y),1);
}

}


switch (ShapeCreate)
{
case 0: type = "Rectangle" break;
case 1: type = "Circle" break;
case 2: type = "Polygon" break;

}
switch (JointType)
{
case 0: jtype = "Rotation" break;
case 1: jtype = "Tack" break;
case 2: jtype = "Prismatic" break;

}

dsprite=sprite_create_from_surface(FancySurface,0,0,640,480,0,1,0,1,);
if (DrawFancy==true)
{
draw_sprite_ext(dsprite,0,1,0,1,1,0,c_black,1);
draw_sprite_ext(dsprite,0,-1,0,1,1,0,c_black,1);
draw_sprite_ext(dsprite,0,0,1,1,1,0,c_black,1);
draw_sprite_ext(dsprite,0,0,-1,1,1,0,c_black,1);
draw_sprite_ext(dsprite,0,0,0,1,1,0,c_white,1);
}
sprite_delete(dsprite);


draw_set_font(fnt_Instructions);
draw_text(0,0,"Left click to begin creating: "+string(type)+" (arrow keys (Left/right) to change) ");
if (CreatingJoint==false)
{
draw_text(0,12,"Right click to create a :"+string(jtype)+" joint. (Arrow Keys (Up/down) to change)");
}else{
if (Selectpoint==1) { 
draw_text(0,12,"Select the first Body for the Joint.");
}
if (Selectpoint==2) { 
draw_text(0,12,"Select the second Body for the Joint.");
}
}
draw_text(0,24,"Hover over an object and press <Space> to make the object dynamic (movable)");


surface_set_target(FancySurface);
draw_rectangle_color(0,0,640,480,c_teal,c_teal,c_teal,c_teal,0);
surface_reset_target();


if (ShapeCreate==2 && CreatingBody=true)
{

for (i=0; i<=ds_list_size(Shapepointx)-1; i+=1)
{
if (i!=ds_list_size(Shapepointx)-1)
{
draw_line(ds_list_find_value(Shapepointx,i),ds_list_find_value(Shapepointy,i),ds_list_find_value(Shapepointx,i+1),ds_list_find_value(Shapepointy,i+1))
}else{
draw_line(mouse_x,mouse_y,ds_list_find_value(Shapepointx,i),ds_list_find_value(Shapepointy,i))
}


}

}
draw_text(room_width-string_width("("+string(instance_number(obj_Circle))+") "+string(fps)),0,"("+string(instance_number(obj_Circle))+") "+string(fps));
