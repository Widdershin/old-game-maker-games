if (CreatingJoint==false)
{
if (CreatingBody == false)
{

    if (ShapeCreate==0)
    {
    X1=mouse_x;
    X2=mouse_y;
    }
    if (ShapeCreate==1)
    {
    X1=mouse_x;
    X2=mouse_y;
    }
    if (ShapeCreate==2)
    {
    Shapepointx = ds_list_create();
    Shapepointy = ds_list_create();
    ds_list_add(Shapepointx,mouse_x);
    ds_list_add(Shapepointy,mouse_y);
    }



CreatingBody = true;
exit;
}else{

width = mouse_x-X1;
height = mouse_y-X2;
negx=1;
negy=1;

if (width<0)
{
width=abs(width);
negx=-1;
}
if (height<0)
{
height=abs(height);
negy=-1;
}

    if (ShapeCreate==0)
    {
        o=instance_create(X1+((width/2)*negx),X2+((height/2)*negy),obj_Boxcustom);
        o.width=width;
        o.height=height;
        with (o) { event_user(0); }
        CreatingBody = false;
        
    }
    
        if (ShapeCreate==1)
    {
        o=instance_create(X1,X2,obj_Circlecustom);
        o.radius=point_distance(X1,X2,mouse_x,mouse_y);
        with (o) { event_user(0); }
        CreatingBody = false;
        
    }
    
        if (ShapeCreate==2)
    {
    ds_list_add(Shapepointx,mouse_x);
    ds_list_add(Shapepointy,mouse_y);
    }
    
    
}
}

