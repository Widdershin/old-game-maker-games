mouse_x32 = floor(mouse_x/32)*32
mouse_y32 = floor(mouse_y/32)*32
if mouse_x32 > 32 and mouse_y32 > 32
{
    instance_create(mouse_x32,mouse_y32,oTileTest)
}
