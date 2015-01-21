draw_set_color(c_black)
if cansee && haveseen
{
    draw_sprite(sprite_index,-1,x,y)
}
if !cansee && haveseen
{
    draw_set_alpha(0.5)
    draw_rectangle(x,y,sprite_width,sprite_height,0)
}
else if haveseen = false
{
    draw_set_alpha(1)
    draw_rectangle(x,y,sprite_width,sprite_height,0)
}
