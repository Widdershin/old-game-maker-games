var breakcount, objectname, counttime, count, temp;
// draw hud
draw_sprite(sHud,-1,view_xview[1],view_yview[1])

//determine the object name
breakcount[0] = string_pos(":",nextwave)
objectname = string_copy(nextwave,0,breakcount[0]-1)
counttime = string_copy(nextwave,breakcount[0]+1,string_length(nextwave))

//determine object count
breakcount[1] = string_pos(":",counttime)
count = string_copy(counttime,0,breakcount[1]-1)
timenext = string_copy(counttime,breakcount[1]+1,string_length(counttime))

if keyboard_check_pressed(ord("H")) {show_message(objectname+","+count+","+time)}

execute_string("spriteID = object_get_sprite("+objectname+")")
temp = 0
draw_set_color(c_dkgray)
timenext = real(timenext)
count = real(count)
if timenextprev != timenext
{
    timeprev = timenextprev
}

draw_rectangle(view_xview[1]+2,view_yview[1]+2,view_xview[1]+((time-timeprev)/(timenext-timeprev))*574,view_yview[1]+45,0)
draw_set_color(c_white)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_font(fWave)
wavedraw = string(wavecount)
if string_length(wavedraw) = 1 {wavedraw = "0"+string(wavecount)}
draw_text(view_xview[1]+2,view_yview[1]-4,string(wavedraw))
draw_line(view_xview[1]+56,view_yview[1]+2,view_xview[1]+56,view_yview[1]+45)
repeat(count)
{
    draw_sprite(spriteID,-1,view_xview[1]+(temp*48)+80,view_yview[1]+24)
    temp += 1
}
timenextprev = timenext
