draw_sprite_ext(sprite_index,-1,x,y,speed/10,speed/10,image_angle,color,1)
image_speed = speed/20
draw_set_color(color)
if keyboard_check(ord("A"))
{
    
    draw_set_alpha(0.2)
    draw_circle_color(x,y,speed*3,color,c_black,0)
    draw_set_alpha(1)
}
else
{
    draw_sprite_ext(sGlow,-1,x,y,speed/15,speed/15,0,color,0.15)
}

if moredraw
{
    draw_set_alpha(0.2)
    draw_line(x,y,flockavx,flockavy)
    draw_set_alpha(1)
}
if trails
{
    surface_set_target(surface)
    draw_set_alpha(0.5)
    draw_line_width(x,y,xprevious,yprevious,speed/2)
    draw_set_alpha(1)
    surface_reset_target()
}
