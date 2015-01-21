if room != rPopup
{
    draw_sprite(sprite_index,-1,x,y)
    if hp != hpx
    {
    draw_set_color(c_black)
    draw_rectangle(x,y+29,x+32,y+31,0)
    draw_set_color(c_lime)
    draw_rectangle(x,y+29,x+(32*(hp/hpx)),y+31,0)
    }
}
else
{
    canmove = false
}
