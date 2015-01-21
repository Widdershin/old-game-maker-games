draw_sprite(sprite_index,-1,x,y)
draw_set_font(fBasic)
draw_set_color(c_white)
draw_set_valign(fa_middle)
if queue > 27
{
queueOffset = (queue-28)*16
}
else
{
queueOffset = 0
}

temp = 1
repeat(queue)
{
draw_text(x+3,y+((temp*16)-16)-queueOffset,message[temp])
temp += 1
}
