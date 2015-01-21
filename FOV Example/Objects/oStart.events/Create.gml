tempx = 0
tempy = 0
repeat(50)
{
    repeat(50)
    {
        instance_create(tempx*16,tempy*16,oTile)
        tempx += 1
    }
    tempy += 1
    tempx = 0
}
