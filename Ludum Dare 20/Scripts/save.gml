globalvar savegrid, num;
savegrid = ds_grid_create(4,instance_number(oGround))
//saving tiles
num = 0
with(oPressButton)
{               
    ds_grid_set(savegrid,0,num,object_index)
    ds_grid_set(savegrid,1,num,x)
    ds_grid_set(savegrid,2,num,y)
    ds_grid_set(savegrid,3,num,ident)
    num += 1
    show_message("HERP")
} 
with(oGround)
{               
    if object_index != oGate 
    {
        ds_grid_set(savegrid,0,num,object_index)
        ds_grid_set(savegrid,1,num,x)
        ds_grid_set(savegrid,2,num,y)
        num += 1
    }
    else
    {
        ds_grid_set(savegrid,0,num,object_index)
        ds_grid_set(savegrid,1,num,x)
        ds_grid_set(savegrid,2,num,y)
        ds_grid_set(savegrid,3,num,ident)
        num += 1
    }
}

savestring = ds_grid_write(savegrid)
file = file_text_open_write(room_get_name(room)+".qst")
file_text_write_string(file,savestring)
file_text_close(file)
ds_grid_destroy(savegrid)
