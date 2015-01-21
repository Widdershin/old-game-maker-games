draw_sprite(sprite_index,0,x,y)
if !pause
{
with(laser)
{
    x = other.x+16
    y = other.y+16
    move_contact_solid(other.rot,0)
    /*if instance_place(x,y,oPlayer)
    {
        lock += 1
    }
    else
    {
        lock = 0
    }*/
}
if !rocket
{
    draw_set_color(merge_color(c_red,c_lime,lock/60))
}
else
{
    draw_set_color(c_lime)
}
}
laser.image_blend = draw_get_color()
draw_set_alpha(0.5)
draw_line_width(x+16,y+16,laser.x,laser.y,3)
draw_set_alpha(1)
draw_sprite_ext(sRocketLaunch,0,x+16,y+16,1,1,rot,c_white,1)
