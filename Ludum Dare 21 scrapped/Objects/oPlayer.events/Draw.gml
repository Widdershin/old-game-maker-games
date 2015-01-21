draw_sprite_ext(sprite_index,-1,x,y,1,1,image_angle,c_white,1)

if !lights
{
    surface_set_target(dark)
    draw_set_blend_mode(bm_subtract)
    draw_circle_color(x,y,200,c_white,c_black,0)
    draw_set_blend_mode(bm_normal)
    surface_reset_target()
    draw_surface(dark,0,0)
    draw_set_alpha(0.5)
    draw_circle_color(x,y,200,c_white,c_black,0)
    draw_set_alpha(1)
}
