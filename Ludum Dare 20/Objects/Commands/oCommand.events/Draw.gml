/*
    Draws the command, with the appropriate colour for collision
*/
if !active
{
    draw_sprite(sprite_index,-1,x,y)
}
else
{
    draw_sprite(sprite_index,-1,x,y)
}
if instance_position((x div 32)*32,(y div 32)*32,oCommand)
{
    if instance_position((x div 32)*32,(y div 32)*32,oCommand).id != id
    {
        free = false
    }
    else
    {
        free = true
    }
}
else
{
    free = true
}
if place_free((x div 32)*32,(y div 32)*32) && free
{
    free = true
}
else
{
    free = false
}
if free
{
    draw_set_color(c_yellow)
    draw_rectangle((x div 32)*32,(y div 32)*32,(x div 32)*32+32,(y div 32)*32+32,1)
}
else
{
    draw_set_color(c_red)
    draw_rectangle((x div 32)*32,(y div 32)*32,(x div 32)*32+32,(y div 32)*32+32,1)
}
