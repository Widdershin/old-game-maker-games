xx = 0
yy = 0
repeat(room_height/16)
{
    repeat(room_width/16)
    {
        instance_create(xx*16,floor(yy)*16,oTile)
        xx += 1
    }
    yy += 1
    xx = 0
}
