if (CreatingBody ==false)
{
if (CreatingJoint == false)
{

if (instance_number(obj_objParent)<2)
{
show_message("Error! You need at least 2 objects on the screen to create a joint");
exit;
}

JointPosx=mouse_x;
JointPosy=mouse_y;
Selectpoint=1;
CreatingJoint = true;
}
}else{


    if (ShapeCreate==2)
    {

        POLYGON = px_polygoncreate();
        for (i=0; i<=ds_list_size(Shapepointx)-1; i+=1)
        {
        px_polygonaddpoint(POLYGON,ds_list_find_value(Shapepointx,i)-mouse_x,ds_list_find_value(Shapepointy,i)-mouse_y)
        }

        o=instance_create(mouse_x,mouse_y,obj_Polycustom);
        o.POLY=POLYGON
        o.Polyx=ds_list_create();
        o.Polyy=ds_list_create();

          for (i=0; i<=ds_list_size(Shapepointx)-1; i+=1)
        {
        ds_list_add(o.Polyx,ds_list_find_value(Shapepointx,i)-mouse_x)
                ds_list_add(o.Polyy,ds_list_find_value(Shapepointy,i)-mouse_y)

        }

        with (o) { event_user(0); }
        CreatingBody = false;
        
    
    

}


}

