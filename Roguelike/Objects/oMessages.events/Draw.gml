draw_set_alpha(1)
draw_sprite(sprite_index,-1,x,y)
draw_set_font(fBasic)
draw_set_color(c_white)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)
if queue > 9
{
    queueOffset = (queue-10)*16
}
else
{
    queueOffset = 0
}

temp = 1
repeat(queue)
{
    if temp > queue-10
    {
    draw_text(x+3,y+((temp*16)-16)-queueOffset+5,message[temp])
    }
    temp += 1
}
