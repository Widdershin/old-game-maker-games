draw_sprite(sprite_index,-1,x,y)
if !leftblock
{
    draw_line(x,y,x,y+t)
}
if !rightblock
{
    draw_line(x+t,y,x+t,y+t)
}
if !downblock
{
    draw_line(x,y+t,x+t,y+t)
}
if !upblock
{
    draw_line(x,y,x+t,y)
}
