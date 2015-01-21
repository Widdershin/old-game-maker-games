draw_set_color(c_black)
draw_set_font(pimpfont)
if var_enter
{
    draw_sprite(textbox,0,x,y)
    draw_sprite(sprtick,0,x+txoff,y+tyoff)
    draw_text(x+xoff,y+yoff,prefix+keyboard_string)
}
else
{
    draw_sprite(textbox,1,x,y)
    draw_text(x+xoff,y+yoff,prefix+text_draw)
}
