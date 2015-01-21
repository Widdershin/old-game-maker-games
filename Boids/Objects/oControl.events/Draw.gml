if moredraw
{
    draw_circle(flockavx,flockavy,15,0)
    draw_set_color(color)
    surface_set_target(surface)
    draw_set_alpha(0.5)
    draw_line_width(x,y,xprevious,yprevious,100)
    draw_set_alpha(1)
    surface_reset_target()
}
if trails
{
    draw_surface(surface,0,0)
    surface_set_target(surface)
        draw_set_color(c_black)
        draw_set_alpha(0.025)
        draw_rectangle(0,0,room_width,room_height,0)        
        draw_set_alpha(1)
    surface_reset_target()
}
draw_set_color(c_white)
draw_text(5,5,"range[1,2]: "+string(range)+", "+"maxspeed[3,4]:"+string(maxspeed))
draw_set_color(c_white)
if menu
{
    draw_set_alpha(0.5)
    draw_rectangle(0,room_height/5,room_width,room_height-room_height/5,0)
    draw_set_alpha(1)
    window_set_cursor(cr_default)
    draw_set_font(fSlider)
    execute_file("gui.txt")
}
else
{
    window_set_cursor(cr_none)
}
