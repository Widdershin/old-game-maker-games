if lighting
{
if !variable_local_exists("haveseen"){haveseen = false}
if !variable_local_exists("cansee"){cansee = false}
draw_set_alpha(1)
draw_set_color(c_black)
//show_message(object_get_name(object_index))
if haveseen
{
    draw_sprite(sprite_index,-1,x,y)
}
if !cansee && haveseen
{
    draw_set_alpha(0.7)
    draw_rectangle(x,y,x+sprite_width-1,y+sprite_height-1,0)
}
else if !haveseen && !cansee
{
    draw_set_alpha(1)
    draw_rectangle(x,y,x+sprite_width-1,y+sprite_height-1,0)
}
}
else
{
draw_sprite(sprite_index,-1,x,y)
}
