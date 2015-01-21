draw_set_font(fConsole)
if console_enabled
{
    draw_set_alpha(0.5)
    draw_set_color(c_gray)
    draw_rectangle(0,0,room_width,16,0)
    draw_set_color(c_white)
    draw_set_alpha(1)
    draw_text(1,0,">"+keyboard_string)
}

if error_occurred
{
    draw_set_alpha(0.5)
    draw_set_color(c_gray)
    draw_roundrect(2,18,422,200,0)
    draw_set_color(c_white)
    draw_set_alpha(1)
    draw_text_ext(4,18,error_last,-1,420)
}
