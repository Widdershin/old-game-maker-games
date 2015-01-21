draw_sprite_ext(sprite_index,-1,x,y,1,1,image_angle,c_white,1)

if path
{
    draw_set_color(c_black)
    draw_path(path,x,y,1)
}

draw_set_color(c_white)
draw_text(5, 500, "Hunger: " + string(hunger))
