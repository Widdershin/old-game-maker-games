/*
    Draws the player's sprite and health bars.
*/
draw_sprite_ext(sprite_index,-1,x,y,xscale,1,rot,c_white,1)
if hp != hpt
{
    draw_set_color(c_black)
    draw_rectangle(x-16,y-21,x+16,y-18,0)
    draw_set_color(merge_color(c_red,c_lime,hp/hpt))
    draw_rectangle(x-16,y-21,x-16+32*(hp/hpt),y-18,0)
}
if healing
{
    draw_set_alpha(0.2+(random(0.05)-0.025))
    draw_set_color(c_aqua)
    draw_circle(x,y,64,0)
    draw_set_alpha(1)
}

