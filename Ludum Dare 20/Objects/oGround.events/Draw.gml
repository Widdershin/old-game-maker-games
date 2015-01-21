/*
    Draws the block's sprite and platform if on top
*/
if firstrun
{
    image_speed = 0
    image_index = irandom(image_number-1)
    if instance_position(x,y-32,oGround)
    {
        topblock = false
    }
    else
    {
        topblock = true
    }
    below = instance_position(x,y+32,oGround)
    if below
    {
        below.topblock = false
    }
    firstrun = false
}

draw_sprite(sprite_index,-1,x,y)
if topblock
{
    draw_sprite(sPaving,-1,x,y)
}
