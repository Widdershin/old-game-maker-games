//for (i=0; i<currentblock.sprite_height/32; i+=1)
//{
    blockcount = 0
    for (ii=0; ii<room_width/32; ii+=1)
    {
        if collision_point(ii*32,currentblock.y,pBlock,0,0)
        {
            blockcount += 1
        }
    }
    if blockcount = room_width/32
    {
        lineclear(currentblock.y)
    }
//};
show_debug_message("Checked line, found "+string(blockcount)+" blocks.")
