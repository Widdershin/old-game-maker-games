/*
    Draws the player's sprite and health bars.
*/
draw_sprite_ext(sprite_index,-1,x,y,xscale,1,1,c_white,1)
if hp != hpt
{
    draw_set_color(c_black)
    draw_rectangle(x-16,y-21,x+16,y-18,0)
    draw_set_color(merge_color(c_red,c_lime,hp/hpt))
    draw_rectangle(x-16,y-21,x-16+32*(hp/hpt),y-18,0)
}
