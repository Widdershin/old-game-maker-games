draw_set_alpha(1)
draw_sprite(sprite_index,-1,x,y)
if hp != hpx
{
    draw_set_color(c_black)
    draw_rectangle(x,y+26,x+32,y+32,0)
    draw_set_color(c_lime)
    draw_rectangle(x+1,y+27,x+1+(30*(hp/hpx)),y+31,0)
}

