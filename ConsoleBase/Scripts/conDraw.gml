draw_set_font(argument0)
draw_set_color(argument1)
draw_set_valign(fa_middle)
if queue > argument2
{
queueOffset = (queue-(argument2+1))*argument3
}
else
{
queueOffset = 0
}

temp = 1
repeat(queue)
{
draw_text(x+3,y+((temp*argument3)-argument3)-queueOffset,message[temp])
temp += 1
}
