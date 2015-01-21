draw_set_color(c_black)
draw_set_font(pimpfont)
draw_sprite(sprboolean,-1,x,y)
draw_text(x+12,y+6,bool)
if toggle = true
{
    draw_sprite(sprtick,-1,x+xoff,y+yoff)
}
else if toggle = false
{
    draw_sprite(sprcross,-1,x+xoff,y+yoff)
}
