draw_sprite(bar,-1,600,600)
draw_sprite(sprprogressbar,-1,x,y)
if progress < 100
{
    draw_set_color(c_blue)
}
else if progress = 100
{
    draw_set_color(c_lime)
}
draw_rectangle(x+5,y+5,x+progress*5.52+5,y+25,0)
