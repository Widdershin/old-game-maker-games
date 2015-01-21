if (obj_PhysX.DrawFancy==true)
{
surface_set_target(obj_PhysX.FancySurface);
}

if (body!=-1)
{




if (mouse_in_region(x-radius,y-radius,x+radius,y+radius))
{
if (obj_PhysX.CreatingJoint==true)
{
    if (mouse_check_button_pressed(mb_left))
    {
    if (obj_PhysX.Selectpoint==1) { obj_PhysX.jointbody1 = body; obj_PhysX.Selectpoint = 2}
    else if (obj_PhysX.Selectpoint==2) { obj_PhysX.jointbody2 = body; with (obj_PhysX) {event_user(0);}}
    
    }
}

if (keyboard_check_pressed(vk_space))
{
    if (static==1)
    {
    px_bodyisdynamic(body,1);
    static=0;
    }
    else if (static==0)
    {
    px_bodyisdynamic(body,0);
    static=1;
    }
}

mouse_in=true;
}else{
mouse_in=false;
}


d3d_transform_set_identity();
d3d_transform_add_rotation_z(image_angle);
d3d_transform_add_translation(x,y,0)
if (obj_PhysX.DrawFancy==false)
{

if (mouse_in==true)
{
draw_circle_color(0,0,radius,c_red,c_red,1);
}else{
draw_circle(0,0,radius,1);
}



}else{
draw_circle_color(0,0,radius,obj_PhysX.FancyCol,obj_PhysX.FancyCol,0);


}

d3d_transform_set_rotation_z(0);
d3d_transform_set_identity();

}


if (obj_PhysX.DrawFancy==true)
{
surface_reset_target();
}



