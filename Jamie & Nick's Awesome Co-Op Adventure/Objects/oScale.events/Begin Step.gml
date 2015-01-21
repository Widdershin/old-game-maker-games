// this draws the surface on the screen
surface_reset_target();
draw_clear(0);
draw_set_blend_mode_ext(bm_one, bm_zero);
draw_surface_stretched(screen,0,0,screen_w*screen_scale,screen_h*screen_scale);
draw_set_blend_mode(bm_normal);
screen_refresh();
