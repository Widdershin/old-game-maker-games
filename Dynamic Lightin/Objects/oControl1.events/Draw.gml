draw_set_color(c_white)

draw_surface(light,0,0)
surface_set_target(light)
draw_clear(c_black)
surface_reset_target()
draw_text(5,5,fps)
