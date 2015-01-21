if time < dawntime //midnight to dawn
{
    color = nightcol
    draw_set_alpha(nightalpha)
}
else if time > dawntime && time < daytime //dawn to daylight
{
    color = merge_color(daycol,nightcol,(daytime-dawntime/daytime-time)/100)
    draw_set_alpha(ratio(nightalpha,dayalpha,time))
}
else if time > daytime && time < dusktime //daylight to dusk
{
    color = daycol
    draw_set_alpha(dayalpha)
}
else if time > dusktime && time < nighttime //dusk to night
{
    color = merge_color(dawncol,nightcol,dusktime-nighttime/time-dusktime)
}
else if time > nighttime //night to midnight
{
    color = nighttime   
}

draw_rectangle_color(0,0,room_width,room_height,color,color,color,color,0)
if time > 1440
{
    time = 0
}
time += 1
draw_set_alpha(1)
draw_set_color(nightcol)
draw_text(5,5,string(time div 60)+":"+string(time mod 60))
