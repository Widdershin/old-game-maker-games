if roomPrev != room
{
    fadeIn = 30
}
draw_set_color(c_black)
draw_set_alpha(fadeIn/30)
draw_rectangle(0,0,room_width, room_height, 0)
draw_set_alpha(1)

/*if debug && joystick
{
    draw_set_alpha(0.8)
    draw_set_font(fIntro)
    draw_set_color(c_black)
    draw_text(5,5,string(joystick_xpos(1)+"#"+string(joystick_ypos(1))))
    draw_set_alpha(1)
    
}
