if (obj_PhysX.DrawFancy==true)
{
surface_set_target(obj_PhysX.FancySurface);
}


if (body!=-1)
{

smaller=10;

if (obj_PhysX.DrawFancy==false)
{
draw_circle_color(x,y,smaller,c_green,c_green,1);
}

if (mouse_in_region(x-smaller,y-smaller,x+smaller,y+smaller))
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

XX=x;
YY=y;
d3d_transform_set_identity();
d3d_transform_add_rotation_z(image_angle);
d3d_transform_add_translation(x,y,0)
if (obj_PhysX.DrawFancy==false)
{

    if (mouse_in==true)
    {
    
    draw_rectangle_color(0-(width/2),0-(height/2),0+(width/2),0+(height/2),c_red,c_red,c_red,c_red,1);
    }else{
    draw_circle_color(0,0,10,c_red,c_red,0);
    
                for (i=0; i<=ds_list_size(Polyx)-1; i+=1)
        {
            if (i<ds_list_size(Polyx)-1)
            {
            draw_line(ds_list_find_value(Polyx,i),ds_list_find_value(Polyy,i),ds_list_find_value(Polyx,i+1),ds_list_find_value(Polyy,i+1))
            }else{
            draw_line(ds_list_find_value(Polyx,i),ds_list_find_value(Polyy,i),ds_list_find_value(Polyx,0),ds_list_find_value(Polyy,0))
            
            }
        
        }
    }

}else{
    draw_rectangle_color(0-(width/2),0-(height/2),0+(width/2),0+(height/2),obj_PhysX.FancyCol,obj_PhysX.FancyCol,obj_PhysX.FancyCol,obj_PhysX.FancyCol,0);


}

d3d_transform_set_rotation_z(0);
d3d_transform_set_identity();
}


if (obj_PhysX.DrawFancy==true)
{
surface_reset_target();
}


