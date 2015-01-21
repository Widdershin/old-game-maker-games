draw_sprite(sprite_index,-1,x,y)
if !placed
{
    spriteheight = ceil(sprite_height/32)
    spritewidth = ceil(sprite_width/32)
    ii = 0
    freecount = 0
    for (i=0; i<spriteheight*spritewidth; i+=1)
    {
        xx = x+(i*32)-(ii*spritewidth)*32
        yy = y+ii*32
        if instance_position(xx,yy,oGround)
        {
            draw_set_color(c_red)
        }
        else
        {
            draw_set_color(c_yellow)
            freecount += 1
        }       
        draw_rectangle(xx,yy,xx+32,yy+32,1)
        if i = spritewidth-1
        {
            ii += 1
        }
    }
    
    if freecount = spriteheight*spritewidth
    {
        free = true
    }
    else
    {
        free = false
    }
}
