//oShip Draw
surface_set_target(trail)

draw_set_color(c_white)
if !flipped
{
    draw_line(x,y,xprevious,yprevious)
}

draw_set_color(c_black)
draw_set_alpha(0.01)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)

surface_reset_target()

draw_surface(trail,0,0)

draw_sprite_ext(sprite_index,-1,x,y,1,1,image_angle,c_white,1)
