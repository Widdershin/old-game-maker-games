if winTime < 200
{
    draw_set_color(c_yellow)
    draw_set_alpha(winTime / 180)
    draw_rectangle(0, 0, room_width, room_height, 0)
    draw_set_alpha(1)
}

draw_set_color(c_yellow)

enemiesLeftReal = enemiesLeft + instance_number(oGoblin)
winPercent = ((room_width - t*5) * (1 - (enemiesLeftReal/enemiesLeftMax))) div t * t
draw_rectangle(t*5,384,t*5+winPercent,room_height,0)

if debug && keyboard_check(ord("P"))
{
    show_message(winPercent)
}
