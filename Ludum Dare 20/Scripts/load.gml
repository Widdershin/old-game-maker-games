globalvar loadgrid;
file = file_text_open_read(get_string("Levelname: ","rLevel1.qst"))
loadstring = file_text_read_string(file)
loadgrid = ds_grid_create(1,1)

ds_grid_read(loadgrid,loadstring)
for (i=0; i<ds_grid_height(loadgrid); i+=1)
{
    obj = ds_grid_get(loadgrid,0,i)
    xx = ds_grid_get(loadgrid,1,i)
    yy = ds_grid_get(loadgrid,2,i)
    idd = instance_create(xx,yy,obj)
    if obj = oGate || oTrap || oPressButton
    {
        idd.ident = ds_grid_get(loadgrid,3,i)
        idd.down = false
    }
}


