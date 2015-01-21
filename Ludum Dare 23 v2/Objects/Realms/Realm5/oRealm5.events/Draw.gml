if winTime < 200
{
    draw_set_color(c_yellow)
    draw_set_alpha(winTime / 180)
    draw_rectangle(0, 0, room_width, room_height, 0)
    draw_set_alpha(1)
}


if instance_number(oDeathBall)
{
    winPercent = ((room_width - t*5) * (1 - (oDeathBall.hp/oDeathBall.hpMax))) div t * t
}
else
{
    winPercent = room_width - t*5
}
draw_rectangle(t*5,384,t*5+winPercent,room_height,0)
