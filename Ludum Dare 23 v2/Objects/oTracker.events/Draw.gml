if roomPrev != room
{
    fadeIn = 30
}
draw_set_color(c_black)
draw_set_alpha(fadeIn/30)
draw_rectangle(0,0,room_width, room_height, 0)
draw_set_alpha(1)
